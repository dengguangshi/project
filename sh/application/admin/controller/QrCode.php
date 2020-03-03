<?php
namespace app\admin\controller;
use app\admin\model\QrCodeModel;
use think\Controller;

/**
 * 控制器 咨询二维码
 */
class QrCode extends Controller
{
    /**
     * 首页页面
     */
    public function index()
    {
        $qrCodeModel=new QrCodeModel();
        $data=$qrCodeModel->getEdit();
        $this->assign("data",$data);
        return $this->fetch();
    }
    /**
     * 接收 编辑
     */
    public function postEdit()
    {
        $param=input("param.");
        $qrCodeModel=new QrCodeModel();
        return $qrCodeModel->postEdit($param);
    }
}