<?php
namespace app\admin\model;
use think\Model;

/**
 * 模型 咨询二维码
 */
class QrCodeModel extends Model
{
    protected $table="sankei_qr_code";
    /**
     * 获取 编辑
     */
    public function getEdit()
    {
        $data=$this
            ->where("id",1)
            ->find();
        return $data;
    }
    /**
     * 接收 编辑
     */
    public function postEdit($param)
    {
        $data=$this
            ->where("id",1)
            ->update([
                "img"=>$param["img"]
            ]);
        return json(["code"=>200,"msg"=>"保存成功"]);
    }
}