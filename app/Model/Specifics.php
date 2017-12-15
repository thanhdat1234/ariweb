<?php

namespace App\Model;

//use Fuel\Core\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Oil\Exception;

class Specifics extends Model
{
    /*function check*/
    static public function checkItem($where = null){
        if(!$where || !is_array($where)){
            return false;
        }
        $wherez = [];
        $i=0;
        foreach ($where as $key=>$value){
            $wherez[$i] = [$key,'=',$value];
            $i++;
        }
        $data = Specifics::where($where)->get();
        if(!$data){
            return true;
        }else{
            return false;
        }
    }
    /*function add item*/
    static public function createItem($data){
        if(!$data || !is_array($data)){
            return false;
        }
        $item = new Specifics();
        $item->name         = $data['name']?$data['name']:'';
        $item->value        = $data['value']?$data['value']:null;
        $item->type         = $data['type']?$data['type']:null;
        $item->img          = $data['img']?$data['img']:null;
        $item->save();
        if($item->id){
            return $item->id;
        }else{
            return false;
        }
    }
    /*function add item together with cate*/
    static public function addItemWithCate($data){
        if(!$data || !is_array($data)){
            return false;
        }
        try{
            DB::table('cate_spec')->insert($data);
        }catch (Exception $exception){
            return $exception->getMessage();
        }
    }
}
