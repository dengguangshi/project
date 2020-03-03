<?php
namespace app\admin\controller;
use app\admin\model\ContactUsModel;
use think\Controller;

/**
 * 控制器 联系我们
 */
class ContactUs extends Controller
{
    /**
     * 首页页面
     */
    public function index()
    {
        $contactUsModel=new ContactUsModel();
        $data=$contactUsModel->getEdit();
        $this->assign("data",$data);
        return $this->fetch();
    }
    /**
     * 接收 编辑
     */
    public function postEdit()
    {
        $param=input("param.");
        $contactUsModel=new ContactUsModel();
        return $contactUsModel->postEdit($param);
    }
}