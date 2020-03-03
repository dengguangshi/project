<?php
namespace app\admin\controller;
use app\admin\model\SankeiInformationModel;
use think\Controller;

/**
 * 控制器 公司新闻
 */
class Journalism extends Controller
{
    /**
     * 首页页面
     */
    public function index()
    {
        $param=input("param.");
        if (request()->isAjax())
        {
            $sankeiInformationModel=new SankeiInformationModel();
            return $sankeiInformationModel->getJournalismList($param);
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
            $sankeiInformationModel=new SankeiInformationModel();
            return $sankeiInformationModel->postJournalismAdd($param);
        }
        return $this->fetch();
    }
    /**
     * 接收 状态
     */
    public function postState()
    {
        $param=input("param.");
        $sankeiInformationModel=new SankeiInformationModel();
        return $sankeiInformationModel->postJournalismState($param);
    }
    /**
     * 接收 排序
     */
    public function postSort()
    {
        $param=input("param.");
        $sankeiInformationModel=new SankeiInformationModel();
        return $sankeiInformationModel->postJournalismSort($param);
    }
    /**
     * 编辑页面
     */
    public function edit()
    {
        $param=input("param.");

        $sankeiInformationModel=new SankeiInformationModel();
        if (request()->isPost())
        {
            return $sankeiInformationModel->postJournalismEdit($param);
        }

        $data=$sankeiInformationModel->getJournalismEdit($param);
        $this->assign("data",$data);
        return $this->fetch();
    }
    /**
     * 接收 删除
     */
    public function postDelete()
    {
        $param=input("param.");
        $sankeiInformationModel=new SankeiInformationModel();
        return $sankeiInformationModel->postJournalismDelete($param);
    }
}