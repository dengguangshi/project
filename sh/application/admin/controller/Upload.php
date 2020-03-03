<?php

namespace app\admin\controller;
use app\common\controller\Qiniu as Qiniu;
use think\Config;
use think\Controller;
use think\File;
use think\Request;

class Upload extends Controller
{
    /**
     * 七牛云上传base64图片
     *  @param $image string  64位图片流
     */
    public function upload(){
        $image = input('param.image');
        //去除base64
        $num = strpos($image,',');
        $image = substr($image,$num+1);
        $str = isset($image) ? $image : false;

        //生成图片key
        $rand = rand(1111,9999);
        $now = time();
        $name = 'pic/'.$now.$rand;
        $key = base64_encode($name);

        $upToken = Qiniu::token();
        if($str){
            $qiniu = $this->phpCurlImg("http://upload-z2.qiniu.com/putb64/-1/key/".$key,$str,$upToken);
            //upload.qiniup.com 上传域名适用于华东空间。华北空间使用 upload-z1.qiniu.com，华南空间使用 upload-z2.qiniu.com，北美空间使用 upload-na0.qiniu.com。
            $qiniuArr = json_decode($qiniu,true);
            if(!empty($qiniuArr['key']) && $qiniuArr['key']==$name){
                $domain = Config::get('QINIU_URL_PREFIX');
                $images[] = $domain.$qiniuArr['key'];
                return jsonReturn(200,'上传成功',$images);
            }else{
                return jsonReturn(1003,'上传失败','');
            }
        }
        return jsonReturn(1003,'上传失败','');
    }

    //七牛base64上传方法
    public function phpCurlImg($remote_server,$post_string,$upToken){
        $headers = array();
        $headers[] = 'Content-Type:application/octet-stream';
        $headers[] = 'Authorization:UpToken '.$upToken;
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$remote_server);
        curl_setopt($ch, CURLOPT_HTTPHEADER ,$headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_string);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }

    public function uploads(){
        $rs = $_FILES;
        $images = array();
        foreach ($rs as $image)
        {
            $ext      = pathinfo($image['name'], PATHINFO_EXTENSION);
            $id       = uniqid();
            $fileName = 'SJ' . "{$id}.{$ext}";

            if (Qiniu::upload($image['tmp_name'], $fileName))
            {
                $images[] = 'http://pshangcheng.wsandos.com/' . $fileName;
            } else
            {
                fail('image-upload-fail');
            }
        }
        $data['errno'] = 0;
        $data['data'][0] = $images[0];
        return json_encode($data);
    }

    /**
     * 编辑器图片上传
     */
    public function edit_upload(){
        $rs = $_FILES;
        $images = array();
        foreach ($rs as $image)
        {
            $ext      = pathinfo($image['name'], PATHINFO_EXTENSION);
            $id       = uniqid();
            $fileName = 'SJ' . "{$id}.{$ext}";

            if (Qiniu::upload($image['tmp_name'], $fileName))
            {
                $images[] = 'http://pshangcheng.wsandos.com/' . $fileName;
            } else
            {
                fail('image-upload-fail');
            }
        }
        return json(['code'=>1,'msg'=>'上传成功','data'=>['src'=>$images[0]]]);
    }

}