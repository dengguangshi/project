<?php
namespace app\admin\model;
use think\Db;
use think\Model;

/**
 * 模型 门店
 */
class StoreModel extends Model
{
    protected $table="sankei_store";
    /**
     * 获取 列表
     */
    public function getList($param)
    {
        $where=[];
        if ($param["key"] !==0)
        {
            $where["store.name"]=["like","%".$param["key"]."%"];
        }
        if (!empty($param["states"]))
        {
            $where["store.state"]=$param["states"];
        }
        $page=isset($param["page"])?$param["page"]:1;
        $rows=isset($param["rows"])?$param["rows"]:10;
        $data=$this
            ->alias("store")
            ->join("sanhui.sankei_vehicle_brand vehicle_brand","store.vehicle_brand_id=vehicle_brand.id")
            ->join("sanhui.sankei_regional_management regional_management","store.regional_management_id=regional_management.id")
            ->field("store.id,store.name store_name,store.detailed_address,store.phone,store.state,regional_management.name regional_management_name,vehicle_brand.name vehicle_brand_name,store.creation_time,store.sort")
            ->page($page,$rows)
            ->order("sort,creation_time desc")
            ->where($where)
            ->select();
        foreach ($data as $k=>$v)
        {
            $data[$k]["creation_time"]=date("Y-m-d H:i:s",$data[$k]["creation_time"]);
            $data[$k]["paix"]=$k+1*$page;
        }
        $count=$this
            ->alias("store")
            ->join("sanhui.sankei_vehicle_brand vehicle_brand","store.vehicle_brand_id=vehicle_brand.id")
            ->join("sanhui.sankei_regional_management regional_management","store.regional_management_id=regional_management.id")
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
            ->insertGetId([
                "banner"=>$param["banner"],
                "name"=>$param["name"],
                "introduce"=>$param["introduce"],
                "detailed_address"=>$param["detailed_address"],
                "phone"=>$param["phone"],
                "regional_management_id"=>$param["regional_management_id"],
                "vehicle_brand_id"=>$param["vehicle_brand_id"],
                "state"=>$param["state"],
                "creation_time"=>time(),
                "lat"=>$param["lat"],
                "lng"=>$param["lng"]
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
     * 获取 编辑
     */
    public function getEdit($param)
    {
        $data=$this
            ->where("id",$param["id"])
            ->find();
        $data["banner"]=explode(",",$data["banner"]);
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
                "banner"=>$param["banner"],
                "name"=>$param["name"],
                "introduce"=>$param["introduce"],
                "detailed_address"=>$param["detailed_address"],
                "phone"=>$param["phone"],
                "regional_management_id"=>$param["regional_management_id"],
                "vehicle_brand_id"=>$param["vehicle_brand_id"],
                "state"=>$param["state"],
                "lat"=>$param["lat"],
                "lng"=>$param["lng"]
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