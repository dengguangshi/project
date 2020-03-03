<?php

namespace app\admin\controller;
use app\admin\model\CultureModel;
use think\Db;

class Culture extends Base{
	/**
	 * [index 企业文化列表]
	 * @return [type] [description]
	 * @author [] []
	 */
	
	public function index(){
		$key = input('key');
		$map = [];
		if($key&&$key!==""){
			$map['title'] = ['like',"%" . $key . "%"];
		}
		$Nowpage = input('get.page') ? input('get.page'):1;
		$limits = config('list_rows');// 获取总条数
		$ad = new CultureModel();
		$count = $ad->where($map)->count();//计算总页面
		$allpage = intval(ceil($count / $limits));
		$lists = $ad->getAll($map, $Nowpage, $limits);
		foreach($lists as $k=>$v)
		{
			$lists[$k]["paix"]=$k+1*$Nowpage;
		}
		$this->assign('Nowpage', $Nowpage); //当前页
		$this->assign('allpage', $allpage); //总页数
		$this->assign('val', $key);
		if(input('get.page')){
			return json($lists);
		}
		return $this->fetch();
	}

	/**
	 * [add 添加]
	 * @return [type] [description]
	 * @author [] []
	 */
	public function add(){
		$ad = new CultureModel();		
		if(request()->isAjax()){
			$data = input('param.');
			print_r($data);
			$flag = $ad->insertCu($data);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		return $this->fetch();
	}


	/**
	 * [edit 编辑]
	 * @return [type] [description]
	 * @author [] []
	 */
	public function edit(){
		$ad = new CultureModel();
		if(request()->isPost()){
			$param = input('post.');
			/*$str = "\r\n";
			$param['content'] = str_replace($str,'<br>',$param['content']);
			$str = "\r";
			$param['content'] = str_replace($str,'<br>',$param['content']);
			$str = "\n";
			$param['content'] = str_replace($str,'<br>',$param['content']);*/
			$param['update_time'] = time();
			$flag = $ad->editCu($param);
			return json(['code' => $flag['code'], 'data' => $flag['data'], 'msg' => $flag['msg']]);
		}
		$id = input('param.id');
		$data = $ad->getOne($id);		
		$str = "\n";
		//$data['content'] = str_replace('<br>',$str,$data['content']);
		$this->assign('ad',$data);
		return $this->fetch();
	}

	/**
	 * [content 企业文化正文]
	 * @return [type] [description]
	 */
	public function content(){
		$content = new CultureModel();
		$data = $content->getCulture();
		$this->assign("data",$data);
		return $this->fetch();
	}

	public function editContent(){
		$param = input("param.");
		$content = new CultureModel();
		$data = $content->postEdit($param);
		return $data;
	}
}