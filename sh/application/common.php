<?php
use think\Db;
use Aliyun\Core\Config;
use Aliyun\Core\Profile\DefaultProfile;
use Aliyun\Core\DefaultAcsClient;
use Aliyun\Api\Sms\Request\V20170525\SendSmsRequest;


/**
 *  json
 *  固定返回
 *  code 状态码
 *  msg  提示语
 *  data 返回值
 */
function jsonReturn($code,$msg,$data){
    $map = [
        'code' => $code,
        'msg'  => $msg,
        'data' => $data
    ];
    return json_encode($map);
}


/**
 * 读取配置
 * @return array
 */
function load_config(){
    $list = Db::name('config')->select();
    $config = [];
    foreach ($list as $k => $v) {
        $config[trim($v['name'])]=$v['value'];
    }

    return $config;
}


/**
 * 验证手机号是否正确
 * @author honfei
 * @param number $mobile
 */
function isMobile($mobile) {
    if (!is_numeric($mobile)) {
        return false;
    }
    return preg_match('#^13[\d]{9}$|^14[5,7]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0,6,7,8]{1}\d{8}$|^18[\d]{9}$#', $mobile) ? true : false;
}


/**
 * 阿里云云通信发送短息
 * @param string $mobile    接收手机号
 * @param string $tplCode   短信模板ID
 * @param array  $tplParam  短信内容
 * @return array
 */
function sendMsg($mobile,$tplCode,$tplParam){
    if( empty($mobile) || empty($tplCode) ) return array('Message'=>'缺少参数','Code'=>'Error');
    if(!isMobile($mobile)) return array('Message'=>'无效的手机号','Code'=>'Error');

    require_once '../extend/aliyunsms/vendor/autoload.php';
    Config::load();             //加载区域结点配置
    $accessKeyId = config('alisms_appkey');
    $accessKeySecret = config('alisms_appsecret');
    if( empty($accessKeyId) || empty($accessKeySecret) ) return array('Message'=>'请先在后台配置appkey和appsecret','Code'=>'Error');
    $templateParam = $tplParam; //模板变量替换

    //$signName = (empty(config('alisms_signname'))?'阿里大于测试专用':config('alisms_signname'));
    $signName = config('alisms_signname');
    //短信模板ID
    $templateCode = $tplCode;
    //短信API产品名（短信产品名固定，无需修改）
    $product = "Dysmsapi";
    //短信API产品域名（接口地址固定，无需修改）
    $domain = "dysmsapi.aliyuncs.com";
    //暂时不支持多Region（目前仅支持cn-hangzhou请勿修改）
    $region = "cn-hangzhou";
    // 初始化用户Profile实例
    $profile = DefaultProfile::getProfile($region, $accessKeyId, $accessKeySecret);
    // 增加服务结点
    DefaultProfile::addEndpoint("cn-hangzhou", "cn-hangzhou", $product, $domain);
    // 初始化AcsClient用于发起请求
    $acsClient= new DefaultAcsClient($profile);
    // 初始化SendSmsRequest实例用于设置发送短信的参数
    $request = new SendSmsRequest();
    // 必填，设置雉短信接收号码
    $request->setPhoneNumbers($mobile);
    // 必填，设置签名名称
    $request->setSignName($signName);
    // 必填，设置模板CODE
    $request->setTemplateCode($templateCode);
    // 可选，设置模板参数
    if($templateParam) {
        $request->setTemplateParam(json_encode($templateParam));
    }
    //发起访问请求
    $acsResponse = $acsClient->getAcsResponse($request);
    //返回请求结果
    $result = json_decode(json_encode($acsResponse),true);

    return $result;
}



//生成网址的二维码 返回图片地址
function Qrcode($token, $url, $size = 8){
    $md5 = md5($token);
    $dir = date('Ymd'). '/' . substr($md5, 0, 10) . '/';
    $patch = 'qrcode/' . $dir;
    if (!file_exists($patch)){
        mkdir($patch, 0755, true);
    }
    $file = 'qrcode/' . $dir . $md5 . '.png';
    $fileName =  $file;
    if (!file_exists($fileName)) {

        $level = 'L';
        $data = $url;
        QRcode::png($data, $fileName, $level, $size, 2, true);
    }
    return $file;
}



/**
 * 循环删除目录和文件
 * @param string $dir_name
 * @return bool
 */
function delete_dir_file($dir_name) {
    $result = false;
    if(is_dir($dir_name)){
        if ($handle = opendir($dir_name)) {
            while (false !== ($item = readdir($handle))) {
                if ($item != '.' && $item != '..') {
                    if (is_dir($dir_name . DS . $item)) {
                        delete_dir_file($dir_name . DS . $item);
                    } else {
                        unlink($dir_name . DS . $item);
                    }
                }
            }
            closedir($handle);
            if (rmdir($dir_name)) {
                $result = true;
            }
        }
    }

    return $result;
}



//时间格式化1
function formatTime($time) {
    $now_time = time();
    $t = $now_time - $time;
    $mon = (int) ($t / (86400 * 30));
    if ($mon >= 1) {
        return '一个月前';
    }
    $day = (int) ($t / 86400);
    if ($day >= 1) {
        return $day . '天前';
    }
    $h = (int) ($t / 3600);
    if ($h >= 1) {
        return $h . '小时前';
    }
    $min = (int) ($t / 60);
    if ($min >= 1) {
        return $min . '分钟前';
    }
    return '刚刚';
}


//时间格式化2
function pincheTime($time) {
    $today  =  strtotime(date('Y-m-d')); //今天零点
    $here   =  (int)(($time - $today)/86400) ;
    if($here==1){
        return '明天';
    }
    if($here==2) {
        return '后天';
    }
    if($here>=3 && $here<7){
        return $here.'天后';
    }
    if($here>=7 && $here<30){
        return '一周后';
    }
    if($here>=30 && $here<365){
        return '一个月后';
    }
    if($here>=365){
        $r = (int)($here/365).'年后';
        return   $r;
    }
    return '今天';
}


function getRandomString($len, $chars=null){
    if (is_null($chars)){
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    }
    mt_srand(10000000*(double)microtime());
    for ($i = 0, $str = '', $lc = strlen($chars)-1; $i < $len; $i++){
        $str .= $chars[mt_rand(0, $lc)];
    }
    return $str;
}


function random_str($length){
    //生成一个包含 大写英文字母, 小写英文字母, 数字 的数组
    $arr = array_merge(range(0, 9), range('a', 'z'), range('A', 'Z'));

    $str = '';
    $arr_len = count($arr);
    for ($i = 0; $i < $length; $i++)
    {
        $rand = mt_rand(0, $arr_len-1);
        $str.=$arr[$rand];
    }

    return $str;
}

function GetDistance($lat1, $lng1, $lat2, $lng2)
{
    // 将角度转为狐度
    $radLat1 = deg2rad((float)$lat1);// deg2rad()函数将角度转换为弧度
    $radLat2 = deg2rad((float)$lat2);
    $radLng1 = deg2rad((float)$lng1);
    $radLng2 = deg2rad((float)$lng2);

    $a = $radLat1 - $radLat2;
    $b = $radLng1 - $radLng2;

    $s = 2 * asin(sqrt(pow(sin($a / 2), 2) + cos($radLat1) * cos($radLat2) * pow(sin($b / 2), 2))) * 6378.137;

    return $s;
}
/***************************************************微信支付操作开始*********************************************/

/**
 * 微信支付请求接口(POST)
 * @param string $openid 	openid
 * @param string $body 		商品简单描述
 * @param string $order_sn  订单编号
 * @param string $total_fee 金额
 * @return  json的数据
 */
function wxpay($openid,$total_fee,$order_sn,$body){
    //统一下单参数构造
    $unifiedorder = array(
        'appid'			=> 'wxa8a4b921084c2e7b',
        'mch_id'		=> '1556648461',
        'nonce_str'		=> getNonceStr(),
        'body'			=> $body,
        'out_trade_no'	=> $order_sn,
        //'total_fee'		=> $total_fee*100,
        'total_fee'		=> 1,
        'spbill_create_ip'	=> getip(),
        'notify_url'	=> 'http://freecard.wsandos.com/api/Card/notify',
        'trade_type'	=> 'JSAPI',
        'openid'		=> $openid
    );
    $unifiedorder['sign'] = makeSign($unifiedorder);

    //请求数据,统一下单
    $xmldata = array2xml($unifiedorder);
    $url = 'https://api.mch.weixin.qq.com/pay/unifiedorder';
    $res = curl_post_ssl($url, $xmldata);
    if(!$res){
        return array('status'=>0, 'msg'=>"Can't connect the server" );
    }

    $content = xml2array($res);
    $content = json_decode($content,true);
    if(strval($content['result_code']) == 'FAIL'){
        return array('status'=>0, 'msg'=>strval($content['err_code']).':'.strval($content['err_code_des']));
    }
    if(strval($content['return_code']) == 'FAIL'){
        return array('status'=>0, 'msg'=>strval($content['return_msg']));
    }

    $time = time();
    settype($time, "string");  		//jsapi支付界面,时间戳必须为字符串格式
    $resdata = array(
        'appId'      	=> strval($content['appid']),
        'nonceStr'     => strval($content['nonce_str']),
        'package'      => 'prepay_id='.strval($content['prepay_id']),
        'signType'		=> 'MD5',
        'timeStamp'	=> $time
    );
    $resdata['paySign'] = makeSign($resdata);

    return $resdata;
}

/**
 * 查询微信支付(POST)
 * @param string(28) $transaction_id 	在微信支付的时候,微信服务器生成的订单流水号,在支付通知中有返回（与商家订单号二选一）
 * @param string(28) $order_sn 	在微信支付的时候,商家服务器生成的订单号（与微信流水号二选一）
 * @return string						xml格式的数据
 */
function selectPay($order_sn){
    //查询参数
    $refundorder = array(
        'appid'			=> 'wx69a32a2421061e63',
        'mch_id'		=> '1553677531 ',
        'nonce_str'		=> getNonceStr(),
        'out_trade_no'=> $order_sn
    );
    $refundorder['sign'] = makeSign($refundorder);
    //请求数据,进行支付查询
    $xmldata = array2xml($refundorder);
    $url = 'https://api.mch.weixin.qq.com/pay/orderquery';
    $res = curl_post_ssl($url, $xmldata);
    if(!$res){
        return array('status'=>0, 'msg'=>"Can't connect the server" );
    }
    $content = xml2array($res);
    $content = json_decode($content,true);
    if(isset($content['result_code'])){
        if(strval($content['result_code']) == 'FAIL'){
            return array('status'=>0, 'msg'=>strval($content['err_code']).':'.strval($content['err_code_des']));
        }
    }
    if(strval($content['return_code']) == 'FAIL'){
        return array('status'=>0, 'msg'=>strval($content['return_msg']));
    }
    return $content;
}

/**
 * 微信退款(POST)
 * @param string(28) $transaction_id 	在微信支付的时候,微信服务器生成的订单流水号,在支付通知中有返回
 * @param string $out_refund_no 		退款单号
 * @param string $total_fee 			微信支付的时候支付的总金额(单位:分)
 * @param string $refund_fee 			此次要退款金额(单位:分)
 * @return string						xml格式的数据
 */
function refund($transaction_id,$out_refund_no,$total_fee,$refund_fee){
    //退款参数
    $refundorder = array(
        'appid'			=> 'wx69a32a2421061e63',
        'mch_id'		=> '1553677531',
        'nonce_str'		=> getNonceStr(),
        'transaction_id'=> $transaction_id,
        'out_refund_no'	=> date('YmdHis',time()).rand(100000,999999),
        //'total_fee'		=> $total_fee*100,
        'total_fee'		=> 1,
        //'refund_fee'	=> $refund_fee*100
        'refund_fee'	=> 1
    );
    $refundorder['sign'] = makeSign($refundorder);
    //请求数据,进行退款
    $xmldata = array2xml($refundorder);
    $url = 'https://api.mch.weixin.qq.com/secapi/pay/refund';
    $res = curl_post_ssl($url, $xmldata);
    if(!$res){
        return array('status'=>0, 'msg'=>"Can't connect the server" );
    }
    $content = xml2array($res);
    $content = json_decode($content,true);
    if(isset($content['result_code'])){
        if(strval($content['result_code']) == 'FAIL'){
            return array('status'=>0, 'msg'=>strval($content['err_code']).':'.strval($content['err_code_des']));
        }
    }
    if(strval($content['return_code']) == 'FAIL'){
        return array('status'=>0, 'msg'=>strval($content['return_msg']));
    }
    return $content;
}

/**
 * 查询微信退款(POST)
 * @param string(28) $transaction_id 	在微信支付的时候,微信服务器生成的订单流水号,在支付通知中有返回
 * @return string						xml格式的数据
 */
function selectrefund($transaction_id){
    //退款参数
    $refundorder = array(
        'appid'			=> 'wx69a32a2421061e63',
        'mch_id'		=> '1553677531',
        'nonce_str'		=> getNonceStr(),
        'transaction_id'=> $transaction_id
    );
    $refundorder['sign'] = makeSign($refundorder);
    //请求数据,进行退款查询
    $xmldata = array2xml($refundorder);
    $url = 'https://api.mch.weixin.qq.com/pay/refundquery';
    $res = curl_post_ssl($url, $xmldata);
    if(!$res){
        return array('status'=>0, 'msg'=>"Can't connect the server" );
    }
    $content = xml2array($res);
    $content = json_decode($content,true);
    if(isset($content['result_code'])){
        if(strval($content['result_code']) == 'FAIL'){
            return array('status'=>0, 'msg'=>strval($content['err_code']).':'.strval($content['err_code_des']));
        }
    }
    if(strval($content['return_code']) == 'FAIL'){
        return array('status'=>0, 'msg'=>strval($content['return_msg']));
    }
    return $content;
}

/**
 *
 * 产生随机字符串，不长于32位
 * @param int $length
 * @return 产生的随机字符串
 */
function getNonceStr($length = 32) {
    $chars = "abcdefghijklmnopqrstuvwxyz0123456789";
    $str ="";
    for ( $i = 0; $i < $length; $i++ )  {
        $num = rand(0,35);
        $str .= $chars[$num];
    }
    $str = strtoupper($str);
    return $str;
}

/**
 * 获取IP地址
 * @return [String] [ip地址]
 */
function getip() {
    static $ip = '';
    $ip = $_SERVER['REMOTE_ADDR'];
    if(isset($_SERVER['HTTP_CDN_SRC_IP'])) {
        $ip = $_SERVER['HTTP_CDN_SRC_IP'];
    } elseif (isset($_SERVER['HTTP_CLIENT_IP']) && preg_match('/^([0-9]{1,3}\.){3}[0-9]{1,3}$/', $_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif(isset($_SERVER['HTTP_X_FORWARDED_FOR']) AND preg_match_all('#\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}#s', $_SERVER['HTTP_X_FORWARDED_FOR'], $matches)) {
        foreach ($matches[0] AS $xip) {
            if (!preg_match('#^(10|172\.16|192\.168)\.#', $xip)) {
                $ip = $xip;
                break;
            }
        }
    }
    return $ip;
}

/**
 * 将xml转为array
 * @param  string 	$xml xml字符串
 * @return array    转换得到的数组
 */
function xml2array($xml){
    //禁止引用外部xml实体
    libxml_disable_entity_loader(true);
    $rs = simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA);
    $result= json_encode($rs);
    return $result;
}

/**
 * 生成签名
 * @return 签名
 */
function makeSign($data){
    //获取微信支付秘钥
    $key = 'yeah825543829yeah976128321yeah28';

    // 去空
    $data=array_filter($data);
    //签名步骤一：按字典序排序参数
    ksort($data);
    $string_a=http_build_query($data);
    $string_a=urldecode($string_a);
    //签名步骤二：在string后加入KEY
    //$config=$this->config;
    $string_sign_temp=$string_a."&key=".$key;
    //签名步骤三：MD5加密
    $sign = md5($string_sign_temp);
    // 签名步骤四：所有字符转为大写
    $result=strtoupper($sign);

    return $result;
}

/**
 * 将一个数组转换为 XML 结构的字符串
 * @param array $arr 要转换的数组
 * @param int $level 节点层级, 1 为 Root.
 * @return string XML 结构的字符串
 */
function array2xml($arr, $level = 1) {
    $s = $level == 1 ? "<xml>" : '';
    foreach($arr as $tagname => $value) {
        if (is_numeric($tagname)) {
            $tagname = $value['TagName'];
            unset($value['TagName']);
        }
        if(!is_array($value)) {
            $s .= "<{$tagname}>".(!is_numeric($value) ? '<![CDATA[' : '').$value.(!is_numeric($value) ? ']]>' : '')."</{$tagname}>";
        } else {
            $s .= "<{$tagname}>" . $this->array2xml($value, $level + 1)."</{$tagname}>";
        }
    }
    $s = preg_replace("/([\x01-\x08\x0b-\x0c\x0e-\x1f])+/", ' ', $s);
    return $level == 1 ? $s."</xml>" : $s;
}

/**
 * 微信支付发起请求
 */
function curl_post_ssl($url, $xmldata, $second=30,$aHeader=array()){

    $ch = curl_init();
    //超时时间
    curl_setopt($ch,CURLOPT_TIMEOUT,$second);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER, 1);
    //这里设置代理，如果有的话
    //curl_setopt($ch,CURLOPT_PROXY, '10.206.30.98');
    //curl_setopt($ch,CURLOPT_PROXYPORT, 8080);
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);
    curl_setopt($ch,CURLOPT_SSL_VERIFYHOST,0);
    curl_setopt($ch, CURLOPT_SSLVERSION, 1);

    //默认格式为PEM，可以注释
    curl_setopt($ch,CURLOPT_SSLCERTTYPE,'PEM');
    curl_setopt($ch,CURLOPT_SSLCERT,'/www/web/youxue_wsandos_com/public_html/data/apiclient_cert.pem');
    //默认格式为PEM，可以注释
    curl_setopt($ch,CURLOPT_SSLKEYTYPE,'PEM');
    curl_setopt($ch,CURLOPT_SSLKEY,'/www/web/youxue_wsandos_com/public_html/data/apiclient_key.pem');

    if( count($aHeader) >= 1 ){
        curl_setopt($ch, CURLOPT_HTTPHEADER, $aHeader);
    }

    curl_setopt($ch,CURLOPT_POST, true);
    curl_setopt($ch,CURLOPT_POSTFIELDS,$xmldata);
    $data = curl_exec($ch);
    if($data){
        curl_close($ch);
        return $data;
    }else {
        $error = curl_errno($ch);
        echo "call faild, errorCode:$error\n";
        curl_close($ch);
        return false;
    }
}
/*********************************************微信支付操作结束**************************************/