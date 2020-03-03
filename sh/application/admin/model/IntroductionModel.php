<?php

namespace app\admin\model;
use think\Model;
use think\Db;

class IntroductionModel extends Model
{
	protected $table="sankei_introduction";
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
				"enterprise_introduction"=>$param["enterprise_introduction"],
			]);
		return json(["code"=>200,"data"=>$data,"msg"=>"保存成功"]);
	}
}