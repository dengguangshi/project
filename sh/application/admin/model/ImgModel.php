<?php

namespace app\admin\model;
use think\Model;
use think\Db;

class ImgModel extends Model{
	protected $table = 'sankei_banner';	
	
	/**
	 * [getAll 获取图片数据]
	 * @return [type] [description]
	 */
	public function getImg(){
		return $this->where('state','eq','1')->find();
	}

	/**
	 * [getOne 一条数据]
	 * @return [type] [description]
	 */
	public function getOne($id){
		return $this->where('id','eq',$id)->find();
	}
	/**
	 * 编辑信息
	 * @param $param
	 */
	public function editMsg($param)
	{
		try{

			$result = $this->allowField(true)->save($param, ['id' => $param['id']]);

			if(false === $result){
				return ['code' => 0, 'data' => '', 'msg' => $this->getError()];
			}else{
				return ['code' => 1, 'data' => '', 'msg' => '编辑图片成功'];
			}
		}catch( PDOException $e){
			return ['code' => 0, 'data' => '', 'msg' => $e->getMessage()];
		}
	}
}