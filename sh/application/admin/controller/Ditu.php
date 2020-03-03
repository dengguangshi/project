<?php


namespace app\admin\controller;


use think\Controller;

class Ditu extends Controller
{
    public function getLatLng(){
        $param = input('param.');
        $address = $param['address'];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "http://apis.map.qq.com/ws/geocoder/v1/?address=$address&key=VLIBZ-UMTKW-4S5RO-OWJCC-VKDFV-RUFXI");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $data = curl_exec($ch);
        $map = json_decode($data);
        if(empty($map)){
            return '';
        }
        if($map->status == 347) {
            $result = '';
            return json($result);
        }else{
            $location = $map->result->location;
            return json($location);
        }
    }
}