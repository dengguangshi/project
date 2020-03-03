<?php
namespace app\admin\model;
use think\Model;

/**
 * 模型 联系我们
 */
class ContactUsModel extends Model
{
    protected $table="sankei_contact_us";
    /**
     * 获取 编辑
     */
    public function getEdit()
    {
        return $this
            ->where("id",1)
            ->find();
    }
    /**
     * 接收 编辑
     */
    public function postEdit($param)
    {
        $data=$this
            ->where("id",1)
            ->update([
                "address"=>$param["address"],
                "phone"=>$param["phone"],
            ]);
        return json(["code"=>200,"msg"=>"保存成功"]);
    }
}