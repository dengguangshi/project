<?php

namespace app\admin\model;
use think\Model;
use think\Db;

class HistoryModel extends Model
{
	protected $table = 'sankei_development_history';

	/**
	 * 根据条件获取列表信息
	 * @param $param['key'] 关键词
	 * @param $param['states'] 状态
	 * @param $limits
	 */
	public function getList($param)
	{
		$where=[];
		if ($param["key"]!==0)
		{
			$where["content"]=["like","%".$param["key"]."%"];
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
			->order("id desc")
			->where($where)
			->select();
		foreach($data as $k=>$v)
		{
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

	public function insertHistory($data)
	{
		try{
			$dat = [];          
			$dat['year'] = $data['year'];
			$dat['month'] = $data['month'];
			$dat['content'] = $data['content'];
			$dat['create_time'] = time();
			$dat['update_time'] = time(); 
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
	 * 编辑信息
	 * @param $param
	 */
	public function editHistory($param)
	{
		try{

			$data = $this->allowField(true)->save($param, ['id' => $param['id']]);

			if(false === $data){
				return ['code' => 0, 'data' => $data, 'msg' => $this->getError()];
			}else{
				return ['code' => 1, 'data' => $data, 'msg' => '编辑成功'];
			}
		}catch( PDOException $e){
			return ['code' => 0, 'data' => $data, 'msg' => $e->getMessage()];
		}
	}

	/**
	 * 根据id获取一条信息
	 * @param $id
	 */
	public function getOne($id)
	{
		return $this->where('id', $id)->find();
	}


	/**
	 * 删除信息
	 * @param $id
	 */
	public function delHistory($id)
	{
		try{
			$map['closed']=1;
			$map['update_time'] = time();
			$this->save($map, ['id' => $id]);
			return ['code' => 1, 'data' => '', 'msg' => '删除广告成功'];
		}catch( PDOException $e){
			return ['code' => 0, 'data' => '', 'msg' => $e->getMessage()];
		}
	}

	/**
	 * 修改 状态
	 * @param $param
	 */
	public function postState($param)
	{
		$datas=$this
			->where("id",$param)
			->find();
		$update_time = time();
		if ($datas["state"]==1)
		{
			$data=$this
				->where("id",$param)
				->update([
					"state"=>2,
					"update_time"=>$update_time
				]);
			return json(["code"=>"2","data"=>$data,"msg"=>"禁用成功"]);
		}else
		{
			$data=$this
				->where("id",$param)
				->update([
					"state"=>1,
					"update_time"=>$update_time
				]);
			return json(["code"=>"200","data"=>$data,"msg"=>"启用成功"]);
		}
	}

}