<?php
namespace app\admin\model;
use think\Model;

/**
 * 模型 区域管理
 */
class RegionalManagementModel extends Model
{
    protected $table="sankei_regional_management";
    /**
     * 获取 列表
     */
    public function getList($param)
    {
        $where=[];
        if($param["key"] !==0)
        {
            $where["name"]=["like","%".$param["key"]."%"];
        }
        if (!empty($param["states"]))
        {
            $where["state"]=$param["states"];
        }
        $page=isset($param["page"])?$param["page"]:1;
        $rows=isset($param["rows"])?$param["rows"]:10;
        $data=$this
            ->page($page,$rows)
            ->where($where)
            ->order("sort,creation_time desc")
            ->select();
        foreach ($data as $k=>$v)
        {
            $data[$k]["creation_time"]=date("Y-m-d H:i:s",$data[$k]["creation_time"]);
            $data[$k]["paix"]=$k+1*$page;
        }
        $count=$this
            ->where($where)
            ->count();
        return json(["code"=>200,"data"=>$data,"msg"=>"获取成功","count"=>$count]);
    }
    /**
     * 接收 添加
     */
    public function postadd($param)
    {
        $datas=$this
            ->where("name",$param["name"])
            ->find();
        if ($datas)
        {
            return json(["code"=>1,"msg"=>"该区域已存在,请勿重复提交"]);
        }else
        {
            $data=$this->insert([
                "name"=>$param["name"],
                "state"=>$param["state"],
                "creation_time"=>time(),
            ]);
            return json(["code"=>200,"data"=>$data,"msg"=>"添加成功"]);
        }

    }
    /**
     * 接收 状态
     */
    public function postState($param)
    {
        $datas=$this
            ->where("id",$param["id"])
            ->find();
        if ($datas["state"]==1)
        {
            $data=$this
                ->where("id",$param["id"])
                ->update(["state"=>2]);
        }else
        {
            $data=$this
                ->where("id",$param["id"])
                ->update(["state"=>1]);
        }
        return json(["code"=>"200","data"=>$data,"msg"=>"修改状态成功"]);
    }
    /**
     * 获取 编辑
     */
    public function getEdit($param)
    {
        $data=$this
            ->where("id",$param["id"])
            ->find();
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
                "name"=>$param["name"],
                "state"=>$param["state"],
            ]);
        return json(["code"=>200,"data"=>$data,"msg"=>"保存成功"]);
    }
    /**
     * 接收 删除
     */
    public function postDelete($param)
    {
        $data=$this
            ->where("id",$param["id"])
            ->delete();
        return json(["code"=>200,"data"=>$data,"msg"=>"删除成功"]);
    }
    /**
     * 接收 排序
     */
    public function postSort($param)
    {
        $list=json_decode($param["list"],true);
        foreach ($list as $k=>$v)
        {
            $this
                ->where("id",$list[$k]["id"])
                ->update([
                    "sort"=>$list[$k]["sort"]
                ]);
        }
        return json(["code"=>200,"msg"=>"更新排序成功"]);
    }
}