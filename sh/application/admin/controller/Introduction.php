<?php

namespace app\admin\controller;
use app\admin\model\IntroductionModel;
use think\Db;

class Introduction extends Base{
	/**
	 * [index 主界面]
	 * @return [type] [description]
	 * @author [] []
	 */
	
	public function index()
	{
		$introductionModel = new IntroductionModel();
		$data = $introductionModel->getEdit();
		$this->assign("data",$data);
		return $this->fetch();
	}
	/**
	 * [postEdit 接收编辑]
	 * @return [type] [description]
	 */
	public function edit()
	{
		$param = input("param.");
		$introductionModel = new IntroductionModel();
		return $introductionModel->postEdit($param);
	}
}