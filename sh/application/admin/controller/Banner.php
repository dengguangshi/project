<?php

namespace app\admin\controller;
use app\admin\model\BannerModel;
use app\admin\model\BannerPositionModel;
use think\Db;

class Banner extends Base{
	/**
	 * [index 广告列表]
	 * @return [array] [description]
	 */
	
	public function index(){
		$param=input("param.");
		if (request()->isAjax())
		{
			$storeModel = new BannerModel();
			return $storeModel->getList($param);
		}
		return $this->fetch();
	}

	/**
	 * [add 添加广告]
	 * @return [json] [description]
	 */
	public function add(){
		if(request()->isAjax()){			
			$data = input('param.');
			$ad = new BannerModel();
			$flag = $ad->insertAd($data);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		return $this->fetch();
	}

	public function counts(){
		$ad = Db::table('sankei_banner_img')
			->where('closed','eq','0')
			->select();
		$count = count($ad);
		if ($count > 2) {
			return json(['code' => 200, 'data' => '','msg' => '广告数量不得超过3条']);
		}else{
			return json(['code' => 1, 'data' => '','msg' => '']);
		}
	}

	/**
	 * [edit_ad 编辑广告]
	 * @return [json] [description]
	 * @author [] []
	 */
	public function edit(){
		$ad = new BannerModel();
		if(request()->isPost()){			
			$param = input('post.');
			$param['update_time'] = time();
			$flag = $ad->editAd($param);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$this->assign('ad',$ad->getOneAd($id));
		return $this->fetch();
	}

	/**
	 * [postState 修改状态]
	 * @return [json] [description]
	 */
	public function postState()
	{
		$param=input("param.");
		$state = new BannerModel();
		return $state->postState($param);
	}

	/**
	 * [del_ad 删除广告]
	 * @return [json] [description]
	 * @author [] []
	 */
	public function del(){
		$id = input('param.id');
		$ad = new BannerModel();
		$flag = $ad->delAd($id);
		return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
	}


	/**
	 * 接收 排序
	 */
	public function postSort()
	{
		$param=input("param.");
		$storeModel = new BannerModel();
		return $storeModel->postSort($param);
	}

}
