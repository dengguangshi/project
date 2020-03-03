<?php

namespace app\admin\model;
use think\Model;
use think\Db;

class CultureModel extends Model
{
	protected $table = 'sankei_culture';

	/**
	 * 根据条件获取列表信息
	 * @param $where
	 * @param $Nowpage
	 * @param $limits
	 */
	public function getAll($map, $Nowpage, $limits)
	{
		return $this->where($map)->page($Nowpage,$limits)->order('id desc')->select();
	}
	
	public function getIcon($param){
		$page=isset($param["page"])?$param["page"]:1;
		$rows=isset($param["rows"])?$param["rows"]:10;
		$data=$this		
			->page($page,$rows)
			->order("id desc")
			->select();
		foreach($data as $k=>$v)
		{
			$data[$k]["paix"]=$k+1*$page;
		}
		$count=$this->count();
		return json(["code"=>200,"data"=>$data,"msg"=>"获取成功","count"=>$count]);
	}

	/**
	 * 插入信息
	 * @param $param
	 */

	public function insertCu($data)
	{
		try{
			$dat = [];                
			$dat['icon'] = $data['img'];
			$dat['name'] = $data['name'];
			$dat['content'] = $data['content'];
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
	public function editCu($param)
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
	public function getOne($id)
	{
		return $this->where('id', $id)->find();
	}

	/**
	 * 获取企业文化内容
	 * 
	 */
	public function getCulture()
	{
		return Db::table('sankei_culture_content')
			->where("id",1)
			->find();
	}

	/**
	 * 编辑企业文化正文
	 */
	public function postEdit($param)
	{
		$data=Db::table('sankei_culture_content')
			->where("id",1)
			->update([
				"culture"=>$param["culture"],
			]);
		return json(["code"=>200,"data"=>$data,"msg"=>"保存成功"]);
	}
}