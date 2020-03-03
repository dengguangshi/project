<?php
namespace app\admin\controller;
use app\admin\model\StoreModel;
use think\Controller;
use think\Db;

/**
 * 控制器 门店
 */
class Store extends Controller
{
    /**
     * 首页页面
     */
    public function index()
    {
        $param=input("param.");
        if (request()->isAjax())
        {
            $storeModel = new StoreModel();
            return $storeModel->getList($param);
        }
        return $this->fetch();
    }
    /**
     * 添加页面
     */
    public function add()
    {
        if (request()->isPost())
        {
            $param=input("param.");
            $storeModel = new StoreModel();
            return $storeModel->postAdd($param);
        }

        $options=Db::table("sankei_regional_management")
            ->where("state",1)
            ->order("sort,creation_time desc")
            ->select();
        $this->assign("options",json_encode($options));

        $optionss=Db::table("sankei_vehicle_brand")
            ->order("sort,creation_time desc")
            ->where(["state"=>1,"closed"=>0])
            ->select();
        $this->assign("optionss",json_encode($optionss));
        return $this->fetch();
    }
    /**
     * 接收 状态
     */
    public function postState()
    {
        $param=input("param.");
        $storeModel = new StoreModel();
        return $storeModel->postState($param);
    }
    /**
     * 编辑页面
     */
    public function edit()
    {
        $param=input("param.");

        $storeModel = new StoreModel();
        if (request()->isPost())
        {
            return $storeModel->postEdit($param);
        }

        $data=$storeModel->getEdit($param);
        $this->assign("data",$data);

        $options=Db::table("sankei_regional_management")
            ->order("sort,creation_time desc")
            ->where("state",1)
            ->select();
        $this->assign("options",json_encode($options));

        $optionss=Db::table("sankei_vehicle_brand")
            ->order("sort,creation_time desc")
            ->where(["state"=>1,"closed"=>0])
            ->select();
        $this->assign("optionss",json_encode($optionss));
        return $this->fetch();
    }
    /**
     * 接收 删除
     */
    public function postDelete()
    {
        $param=input("param.");
        $storeModel = new StoreModel();
        return $storeModel->postDelete($param);
    }
    /**
     * 接收 排序
     */
    public function postSort()
    {
        $param=input("param.");
        $storeModel = new StoreModel();
        return $storeModel->postSort($param);
    }
}