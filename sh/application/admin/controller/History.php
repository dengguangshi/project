<?php

namespace app\admin\controller;
use app\admin\model\HistoryModel;
use think\Db;

class History extends Base{
	/**
	 * [index 企业历程列表]
	 * @return [type] [description]
	 */

	public function index(){
		$param=input("param.");
		if (request()->isAjax())
		{
			$historyModel = new HistoryModel();
			return $historyModel->getList($param);
		}
		return $this->fetch();
	}

	/**
	 * [add 添加企业历程]
	 * @return [type] [description]
	 */
	public function add(){
		$ad = new HistoryModel();
		if(request()->isAjax()){
			$data = input('param.');
			$flag = $ad->insertHistory($data);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$this->assign('position',$ad->getOne($id));
		return $this->fetch();
	}

	/**
	 * [del 删除]
	 * @return [type] [description]
	 */
	public function del(){
		$id = input('param.id');
		$ad = new HistoryModel();
		$flag = $ad->delHistory($id);
		return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
	}

	/**
	 * [edit 编辑企业历程]
	 * @return [type] [description]
	 * @author [] []
	 */
	public function edit(){
		$ad = new HistoryModel();
		if(request()->isPost()){
			$param = input('post.');
			$param['update_time'] = time();
			$flag = $ad->editHistory($param);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$this->assign('ad',$ad->getOne($id));
		return $this->fetch();
	}

	/**
	 * [postState 修改状态]
	 * @return [type] [description]
	 */
	public function postState()
	{
		$param=input("param.id");
		$state = new HistoryModel();
		return $state->postState($param);
	}
}