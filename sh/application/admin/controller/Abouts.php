<?php
namespace app\admin\controller;
use app\admin\model\AboutsModel;
use think\Controller;

/**
 * 控制器 首页关于
 */
class Abouts extends Controller
{
	/**
	 * 首页页面
	 */
	public function index()
	{
		$aboutsModel=new AboutsModel();
		$data=$aboutsModel->getEdit();
		$this->assign("data",$data);
		return $this->fetch();
	}
	/**
	 * 接收 编辑
	 */
	public function postEdit()
	{
		$param=input("param.");
		$aboutsModel=new AboutsModel();
		return $aboutsModel->postEdit($param);
	}
}