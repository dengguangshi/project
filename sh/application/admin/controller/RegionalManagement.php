<?php
namespace app\admin\controller;
use app\admin\model\RegionalManagementModel;
use think\Controller;
use think\Db;

/**
 * 控制器 区域管理
 */
class RegionalManagement extends Controller
{
    /**
     * 首页页面
     */
    public function index()
    {
        $param=input("param.");
        if (request()->isAjax())
        {
            $regionalManagementModel = new RegionalManagementModel();
            return $regionalManagementModel->getList($param);
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
            $regionalManagementModel = new RegionalManagementModel();
            return $regionalManagementModel->postadd($param);
        }

        return $this->fetch();
    }
    /**
     * 接收 状态
     */
    public function postState()
    {
        $param=input("param.");
        $regionalManagementModel = new RegionalManagementModel();
        return $regionalManagementModel->postState($param);
    }
    /**
     * 编辑页面
     */
    public function edit()
    {
        $param=input("param.");
        if (request()->isPost())
        {
            $regionalManagementModel = new RegionalManagementModel();
            return $regionalManagementModel->postEdit($param);
        }

        $regionalManagementModel = new RegionalManagementModel();
        $data=$regionalManagementModel->getEdit($param);
        $this->assign("data",$data);
        return $this->fetch();
    }
    /**
     * 删除
     */
    public function postDelete()
    {
        $param=input("param.");
        $regionalManagementModel = new RegionalManagementModel();
        return $regionalManagementModel->postDelete($param);
    }
    /**
     * 接收 排序
     */
    public function postSort()
    {
        $param=input("param.");
        $regionalManagementModel = new RegionalManagementModel();
        return $regionalManagementModel->postSort($param);
    }
}