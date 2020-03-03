<?php

namespace app\admin\controller;
use app\admin\model\BrandModel;
use think\Db;

class Brand extends Base{

	/* [index 品牌列表]
	 * @return [type] [description]
	 * @author [] []
	 */

	public function index()
	{
		$param=input("param.");
		if (request()->isAjax())
		{
			$storeModel = new BrandModel();
			return $storeModel->getList($param);
		}
		return $this->fetch();
	}
	/**
	 * [add 添加品牌]
	 * @return [type] [description]
	 * @author [] []
	 */
	public function add(){
		if(request()->isAjax()){
			$data = input('param.');			
			$ad = new BrandModel();
			$flag = $ad->insertAd($data);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		return $this->fetch();
	}


	/**
	 * [edit 编辑品牌]
	 * @return [type] [description]
	 * @author [] []
	 */
	public function edit(){
		$ad = new BrandModel();
		if(request()->isPost()){
			$param = input('post.');
			$flag = $ad->editAd($param);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$this->assign('ad',$ad->getOneAd($id));
		return $this->fetch();
	}

	/**
	 * [postState 修改状态]
	 * @return [type] [description]
	 */
	public function postState()
	{
		$param=input("param.");
		$state = new BrandModel();
		return $state->postState($param);
	}

	/**
	 * [del_ad 删除品牌]
	 * @return [type] [description]
	 * @author [] []
	 */
	public function del(){
		$id = input('param.id');
		$ad = new BrandModel();
		$flag = $ad->delAd($id);
		return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
	}


	/**
	 * [state 品牌状态]
	 * @return [type] [description]
	 * @author [] []
	 */
	public function state(){
		$id=input('param.id');
		$ad = new BrandModel();
		$status = $ad->postState($id);
		return $status;
	}

	/**
	 * 接收 排序
	 */
	public function postSort()
	{
		$param=input("param.");
		$storeModel = new BrandModel();
		return $storeModel->postSort($param);
	}
}