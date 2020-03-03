<?php
namespace app\admin\model;
use think\Db;
use think\Model;

/**
 * 模型 资讯
 */
class SankeiInformationModel extends Model
{
    protected $table="sankei_information";
    /**
     * 获取 列表
     */
    public function getJournalismList($param)
    {
        $where=[];
        if ($param["key"]!==0)
        {
            $where["title"]=["like","%".$param["key"]."%"];
        }
        if (!empty($param["states"]))
        {
            $where["state"]=$param["states"];
        }
        $where["type"]=1;
        $page=isset($param["page"])?$param["page"]:1;
        $rows=isset($param["rows"])?$param["rows"]:10;
        $data=$this
            ->where($where)
            ->page($page,$rows)
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
    public function postJournalismAdd($param)
    {
        $data=$this
            ->insertGetId([
                "img"=>$param["img"],
                "title"=>$param["title"],
                "type"=>1,
                "content"=>$param["content"],
                "state"=>$param["state"],
                "creation_time"=>time(),
                "introduction"=>$param["introduction"],
            ]);
        $arr = explode(",",$param["arr"]);
        foreach ($arr as $k=>$v)
        {
            Db::table("sankei_information_label")
                ->insert([
                    "information_id"=>$data,
                    "label"=>$arr[$k],
                ]);
        }
        return json(["code"=>200,"data"=>$data,"msg"=>"添加成功"]);

    }
    /*-行业新闻------------------------------------------------------------------------------------------------*/
    /**
     * 获取 列表
     */
    public function getIndustryList($param)
    {
        $where=[];
        if ($param["key"]!==0)
        {
            $where["title"]=["like","%".$param["key"]."%"];
        }
        if (!empty($param["states"]))
        {
            $where["state"]=$param["states"];
        }
        $where["type"]=2;
        $page=isset($param["page"])?$param["page"]:1;
        $rows=isset($param["rows"])?$param["rows"]:10;
        $data=$this
            ->where($where)
            ->page($page,$rows)
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
    public function postIndustryAdd($param)
    {
        $data=$this
            ->insertGetId([
                "img"=>$param["img"],
                "title"=>$param["title"],
                "type"=>2,
                "content"=>$param["content"],
                "state"=>$param["state"],
                "creation_time"=>time(),
                "introduction"=>$param["introduction"],
            ]);
        $arr = explode(",",$param["arr"]);
        foreach ($arr as $k=>$v)
        {
            Db::table("sankei_information_label")
                ->insert([
                    "information_id"=>$data,
                    "label"=>$arr[$k],
                ]);
        }
        return json(["code"=>200,"data"=>$data,"msg"=>"添加成功"]);
    }
    /*-用车学堂------------------------------------------------------------------------------------------------*/
    /**
     * 获取 列表
     */
    public function getCarSchoolList($param)
    {
        $where=[];
        if ($param["key"]!==0)
        {
            $where["title"]=["like","%".$param["key"]."%"];
        }
        if (!empty($param["states"]))
        {
            $where["state"]=$param["states"];
        }
        $where["type"]=3;
        $page=isset($param["page"])?$param["page"]:1;
        $rows=isset($param["rows"])?$param["rows"]:10;
        $data=$this
            ->where($where)
            ->page($page,$rows)
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
    public function postCarSchoolAdd($param)
    {
        $data=$this
            ->insertGetId([
                "img"=>$param["img"],
                "title"=>$param["title"],
                "type"=>3,
                "content"=>$param["content"],
                "state"=>$param["state"],
                "creation_time"=>time(),
                "introduction"=>$param["introduction"],
            ]);
        $arr = explode(",",$param["arr"]);
        foreach ($arr as $k=>$v)
        {
            Db::table("sankei_information_label")
                ->insert([
                    "information_id"=>$data,
                    "label"=>$arr[$k],
                ]);
        }
        return json(["code"=>200,"data"=>$data,"msg"=>"添加成功"]);
    }
    /*-----------------------------------------------------------------------------------------------------*/
    /**
     * 接收 状态
     */
    public function postJournalismState($param)
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
     * 接收 排序
     */
    public function postJournalismSort($param)
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
    /**
     * 获取 编辑
     */
    public function getJournalismEdit($param)
    {
        $data=$this
            ->where("id",$param["id"])
            ->find();
        $data["label"]=Db::table("sankei_information_label")
            ->field("label")
            ->where("information_id",$param["id"])
            ->select();
        return $data;
    }
    /**
     * 接收 编辑
     */
    public function postJournalismEdit($param)
    {
        $data=$this
            ->where("id",$param["id"])
            ->update([
                "img"=>$param["img"],
                "title"=>$param["title"],
                "content"=>$param["content"],
                "state"=>$param["state"],
                "introduction"=>$param["introduction"],
            ]);
        Db::table("sankei_information_label")
            ->where("information_id",$param["id"])
            ->delete();
        $arr = explode(",",$param["arr"]);
        foreach ($arr as $k=>$v)
        {
            Db::table("sankei_information_label")
                ->insert([
                    "information_id"=>$param["id"],
                    "label"=>$arr[$k],
                ]);
        }
        return json(["code"=>200,"data"=>$data,"msg"=>"保存成功"]);
    }
    /**
     * 接收 删除
     */
    public function postJournalismDelete($param)
    {
        $data=$this
            ->where("id",$param["id"])
            ->delete();
        Db::table("sankei_information_label")
            ->where("information_id",$param["id"])
            ->delete();
        return json(["code"=>200,"data"=>$data,"msg"=>"删除成功"]);
    }


}