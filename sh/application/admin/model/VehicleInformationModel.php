<?php
namespace app\admin\model;
use think\Model;

/**
 * 控制器 车辆信息
 */
class VehicleInformationModel extends Model
{
    protected $table="sankei_vehicle_information";
    /**
     * 获取 列表
     */
    public function getList($param)
    {
        $where=[];
        if ($param["key"] !==0)
        {
            $where["vehicle_information.name"]=["like","%".$param["key"]."%"];
        }
        if (!empty($param["states"]))
        {
            $where["vehicle_information.state"]=$param["states"];
        }
        $page=isset($param["page"])?$param["page"]:"";
        $rows=isset($param["rows"])?$param["rows"]:"";
        $data=$this
            ->alias("vehicle_information")
            ->join("sanhui.sankei_vehicle_brand vehicle_brand","vehicle_information.vehicle_brand_id=vehicle_brand.id")
            ->field("vehicle_information.id,vehicle_information.img,vehicle_information.name vehicle_information_name,vehicle_information.state,vehicle_brand.name vehicle_brand_name,vehicle_information.sort,vehicle_information.creation_time,vehicle_information.recommend")
            ->page($page,$rows)
            ->order("sort,recommend,creation_time desc")
            ->where($where)
            ->select();
        foreach ($data as $k=>$v)
        {
            $data[$k]["creation_time"]=date("Y-m-d H:i:s",$data[$k]["creation_time"]);
            $data[$k]["paix"]=$k+1*$page;
        }
        $count=$this
            ->alias("vehicle_information")
            ->join("sanhui.sankei_vehicle_brand vehicle_brand","vehicle_information.vehicle_brand_id=vehicle_brand.id")
            ->where($where)
            ->count();
        return json(["code"=>200,"data"=>$data,"msg"=>"获取成功","count"=>$count]);
    }
    /**
     * 接收 添加
     */
    public function postAdd($param)
    {
        $data=$this
            ->insert([
                "img"=>$param["img"],
                "name"=>$param["name"],
                "vehicle_brand_id"=>$param["vehicle_brand_id"],
                "state"=>$param["state"],
                "recommend"=>$param["recommend"],
                "video"=>$param["video"],
                "creation_time"=>time(),
                "details"=>$param["details"],
            ]);
        return json(["code"=>200,"data"=>$data,"msg"=>"添加成功"]);
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
                ->update([
                   "state"=>2
                ]);
        }else
        {
            $data=$this
                ->where("id",$param["id"])
                ->update([
                    "state"=>1
                ]);
        }
        return json(["code"=>200,"data"=>$data,"msg"=>"修改状态成功"]);
    }
    /**
     * 接收 购车推荐
     */
    public function postRecommend($param)
    {
        $datas=$this
            ->where("id",$param["id"])
            ->find();
        if ($datas["recommend"]==1)
        {
            $data=$this
                ->where("id",$param["id"])
                ->update([
                    "recommend"=>2
                ]);
        }else
        {
            $data=$this
                ->where("id",$param["id"])
                ->update([
                    "recommend"=>1
                ]);
        }
        return json(["code"=>200,"data"=>$data,"msg"=>"操作成功"]);
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
                "img"=>$param["img"],
                "name"=>$param["name"],
                "vehicle_brand_id"=>$param["vehicle_brand_id"],
                "state"=>$param["state"],
                "recommend"=>$param["recommend"],
                "video"=>$param["video"],
                "details"=>$param["details"]
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