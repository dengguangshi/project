<?php
namespace app\admin\controller;
use app\admin\model\SaleModel;
use think\Controller;

/**
 * 控制器 售后服务
 */
class Sale extends Controller
{
    /**
     * 首页页面
     */
    public function index()
    {
        $param=input("param.");
        $saleModel=new SaleModel();
        if (request()->isAjax())
        {
            return $saleModel->getList($param);
        }
        return $this->fetch();
    }
    /**
     * 编辑页面
     */
    public function edit()
    {
        $param=input("param.");
        $saleModel=new SaleModel();
        if (request()->isPost())
        {
            return $saleModel->postEdit($param);
        }
        $data=$saleModel->getEdit($param);
        $this->assign("data",$data);
        return $this->fetch();
    }
}