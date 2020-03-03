<?php


namespace app\admin\model;
use think\Model;
use think\Db;

class CountModel extends Model
{
    protected $table = 'sankei_count';

    /**
     * 根据日查询
     */
    public function getCountByDate($date){
        return $this -> where('month',$date)->field('day,views')->order('day') ->select();
    }

    /**
     * 根据月查询
     */
    public function getCountByMonth($date){
        return $this -> where('year',$date)->group('month')->field('month,sum(views) as total')->order('month')->select();
    }

    /**
     * 根据年查询
     */
    public function getCountByYear(){
        return $this -> group('year')->field('year,sum(views) as total')->order('year')->select();
    }
}