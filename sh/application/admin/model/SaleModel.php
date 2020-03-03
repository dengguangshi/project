<?php
namespace app\admin\model;
use think\Model;

/**
 * 模型 售后服务
 */
class SaleModel extends Model
{
    protected $table="sankei_sale";
    /**
     * 获取 列表
     */
    public function getList($param)
    {
        $page=isset($param["page"])?$param["page"]:1;
        $rows=isset($param["rows"])?$param["rows"]:10;
        $data=$this
            ->page($page,$rows)
            ->select();
        foreach ($data as $k=>$v)
        {
            $data[$k]["content"]=str_replace("<br>","\r\n",$data[$k]["content"]);
            $data[$k]["paix"]=$k+1*$page;
            //dump($data[$k]["content"]);
        }
        $count=$this
            ->count();
        return json(["code"=>200,"data"=>$data,"msg"=>"获取成功","count"=>$count]);
    }
    /**
     * 获取 编辑
     */
    public function getEdit($param)
    {
        $data = $this
            ->where("id",$param["id"])
            ->find();
        $data["content"]=str_replace("<br>","\n",$data['content']);
        return $data;
    }
    /**
     * 接收 编辑
     */
    public function postEdit($param)
    {
        $data=$this
            ->where("id",$param["id"])
            ->update([
                "img"=>$param["img"],
                "content"=>str_replace("\n",'<br>',$param["content"]),
            ]);
        return json(["code"=>200,"data"=>$data,"msg"=>"保存成功"]);
    }

}