<?php
namespace app\admin\model;
use think\Model;

/**
 * 模型 首页关于
 */
class AboutsModel extends Model
{
    protected $table="sankei_index_about";
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
                "about"=>$param["about"],
            ]);
        return json(["code"=>200,"data"=>$data,"msg"=>"保存成功"]);
    }
}