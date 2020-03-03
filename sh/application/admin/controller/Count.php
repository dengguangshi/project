<?php
namespace app\admin\controller;
use app\admin\model\CountModel;
use think\Db;

class Count extends Base
{
    public function index(){
        //接收条件，判断根据哪个时间来查询(0:日,1:月,2:年)
        $a = input('get.status') ? input('get.status') : 3;
        $obj = new CountModel();
        switch ($a){
            case "3":
                $date = date("Y-m");
                $lists = $obj -> getCountByDate($date);
                $time = array();
                $number = array();
                foreach ($lists as $k => $v){
                    $time[$k] = $lists[$k]['day'];
                    $number[$k] = intval($lists[$k]['views']);
                }
                if (input('get.status')) {
                    return json(['time'=>$time, 'number'=>$number,'date'=>$date]);
                }
                return $this -> fetch();
            case "1":
                $date = date("Y");
                $lists = $obj -> getCountByMonth($date);
                $time = array();
                $number = array();
                foreach ($lists as $k => $v){
                    $time[$k] = $lists[$k]['month'];
                    $number[$k] = intval($lists[$k]['total']);
                }
                if (input('get.status')) {
                    return json(['time'=>$time, 'number'=>$number,'date'=>$date]);
                }
                return $this -> fetch();
            case "2":
                $lists = $obj -> getCountByYear();
                $time = array();
                $number = array();
                foreach ($lists as $k => $v){
                    $time[$k] = $lists[$k]['year'];
                    $number[$k] = intval($lists[$k]['total']);
                }
                if (input('get.status')) {
                    return json(['time'=>$time, 'number'=>$number,'date'=>'']);
                }
        }
    }
}