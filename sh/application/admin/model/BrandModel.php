<?php

namespace app\admin\model;
use think\Model;
use think\Db;

class BrandModel extends Model
{
	protected $table = 'sankei_vehicle_brand';

	/**
	 * 根据条件获取列表信息
	 * @param $param['key'] 关键词
	 * @param $param['states'] 状态
	 */
	public function getList($param)
	{
		$where=[];
		if ($param["key"]!==0)
		{
			$where["name"]=["like","%".$param["key"]."%"];
		}
		if (!empty($param["states"]))
		{
			$where["state"]=$param["states"];
		}
		$where['closed'] = 0;
		$page=isset($param["page"])?$param["page"]:1;
		$rows=isset($param["rows"])?$param["rows"]:10;
		$data=$this		
			->page($page,$rows)
			->order("sort,id desc")
			->where($where)
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
	 * 插入信息
	 * @param $param
	 */

	public function insertAd($data)
	{
		try{
			$dat = [];          
			$dat['creation_time'] = time();          
			$dat['Ico'] = $data['Ico'];
			$dat['name'] = $data['name'];
			$dat['state'] = $data['state'];
			$dat['sort'] = $data['sort'];
			$dat['brief_introduction'] = $data['brief_introduction'];
			$result = $this->save($dat);
			if(false === $result){       
				return ['code' => -1, 'data' => '', 'msg' => $this->getError()];
			}else{
				return ['code' => 1, 'data' => '', 'msg' => '添加成功'];
			}
		}catch( PDOException $e){
			return ['code' => -2, 'data' => '', 'msg' => $e->getMessage()];
		}
	}

	/**
	 * 删除信息
	 * @param $id
	 */
	public function delAd($id)
	{
		try{
			$map['closed']=1;
			// $map['update_time'] = time();
			$this->save($map, ['id' => $id]);
			return ['code' => 200, 'data' => '2', 'msg' => '删除广告成功'];
		}catch( PDOException $e){
			return ['code' => 0, 'data' => '1', 'msg' => $e->getMessage()];
		}
	}

	/**
	 * 编辑信息
	 * @param $param
	 */
	public function editAd($param)
	{
		try{

			$result = $this->allowField(true)->save($param, ['id' => $param['id']]);

			if(false === $result){
				return ['code' => 0, 'data' => '', 'msg' => $this->getError()];
			}else{
				return ['code' => 1, 'data' => '', 'msg' => '编辑成功'];
			}
		}catch( PDOException $e){
			return ['code' => 0, 'data' => '', 'msg' => $e->getMessage()];
		}
	}

	/**
	 * 根据id获取一条信息
	 * @param $id
	 */
	public function getOneAd($id)
	{
		return $this->where('id', $id)->find();
	}

	/**
	 * 修改状态
	 * @param $param
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