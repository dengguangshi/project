<?php

namespace app\admin\controller;
use app\admin\model\ImgModel;
use think\Db;

class Img extends Base{
	/**
	 * [index 大图主界面]
	 * @return [type] [description]
	 */
	public function index(){
		$ad = new ImgModel();
		$img = $ad->getImg();
		$this->assign('val', $img);
		return $this->fetch();
	}

	/**
	 * [edit_introduction 编辑企业介绍大图]
	 * @return [type] [description]
	 */
	public function edit_introduction(){
		$edit = new ImgModel();
		if(request()->isPost()){
			$param = input('post.');
			// print_r($param);
			$flag = $edit->editMsg($param);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$this->assign('ad',$edit->getOne($id));
		return $this->fetch();
	}

	/**
	 * [edit_history 编辑发展历程]
	 * @return [type] [description]
	 */
	public function edit_history(){
		$edit = new ImgModel();
		if(request()->isPost()){
			$param = input('post.');
			$flag = $edit->editMsg($param);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$this->assign('ad',$edit->getOne($id));
		return $this->fetch();
	}

	/**
	 * [edit_culture 编辑企业文化]
	 * @return [type] [description]
	 */
	public function edit_culture(){
		$edit = new ImgModel();
		if(request()->isPost()){
			$param = input('post.');
			$flag = $edit->editMsg($param);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$this->assign('ad',$edit->getOne($id));
		return $this->fetch();
	}
}