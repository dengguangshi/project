<?php
namespace app\admin\controller;
use app\admin\model\VehicleInformationModel;
use think\Controller;
use think\Db;

/**
 * 控制器 车辆信息
 */
class VehicleInformation extends Controller
{
    /**
     * 首页页面
     */
    public function index()
    {
        $param=input("param.");
        if (request()->isAjax())
        {
            $vehicleInformationModel=new VehicleInformationModel();
            return $vehicleInformationModel->getList($param);
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
            $vehicleInformationModel=new VehicleInformationModel();
            return $vehicleInformationModel->postAdd($param);
        }
        $options=Db::table("sankei_vehicle_brand")
            ->where(["state"=>1,"closed"=>0])
            ->select();
        $this->assign("options",json_encode($options));
        return $this->fetch();
    }
    /**
     * 接收 状态
     */
    public function postState()
    {
        $param=input("param.");
        $vehicleInformationModel=new VehicleInformationModel();
        return $vehicleInformationModel->postState($param);
    }
    /**
     * 接收 购车推荐
     */
    public function postRecommend()
    {
        $param=input("param.");
        $vehicleInformationModel=new VehicleInformationModel();
        return $vehicleInformationModel->postRecommend($param);
    }
    /**
     * 编辑页面
     */
    public function edit()
    {
        $param=input("param.");

        $vehicleInformationModel=new VehicleInformationModel();
        if (request()->isPost())
        {
            return $vehicleInformationModel->postEdit($param);
        }

        $data=$vehicleInformationModel->getEdit($param);
        $this->assign("data",$data);
        $options=Db::table("sankei_vehicle_brand")
            ->where(["state"=>1,"closed"=>0])
            ->select();
        $this->assign("options",json_encode($options));
        return $this->fetch();
    }
    /**
     * 接收 删除
     */
    public function postDelete()
    {
        $param=input("param.");
        $vehicleInformationModel=new VehicleInformationModel();
        return $vehicleInformationModel->postDelete($param);
    }
    /**
     * 接收 排序
     */
    public function postSort()
    {
        $param=input("param.");
        $vehicleInformationModel=new VehicleInformationModel();
        return $vehicleInformationModel->postSort($param);
    }
}