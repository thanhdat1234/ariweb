<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Cates extends Model
{
    static public function createItem($data){
        if(!$data || !is_array($data)){
            return false;
        }
        $cate = new Cates();
        $cate->name         = $data['name']?$data['name']:'';
        $cate->alias        = $data['alias']?$data['alias']:replace($data['name']);
        $cate->order        = !empty($data['order'])?$data['order']:0;
        $cate->status       = 1;
        $cate->type         = !empty($data['type'])?$data['type']:1;
        $cate->top          = !empty($data['top'])?$data['top']:1;
        $cate->home         = !empty($data['home'])?$data['home']:1;
        $cate->footer       = !empty($data['footer'])?$data['footer']:1;
        $cate->parent_id    = !empty($data['parent_id'])?$data['parent_id']:0;
        $cate->keywords     = !empty($data['keywords'])?$data['keywords']:'';
        $cate->description  = !empty($data['description'])?$data['description']:'';
        $cate->avatar       = !empty($data['avatar'])?$data['avatar']:'';
        $cate->content      = !empty($data['content'])?$data['content']:'';
        $cate->save();
        if($cate->id){
            return $cate->id;
        }else{
            return false;
        }
    }
    static public function getListCategory(){
        $list = Cates::where(['status'=>1])->get();
        if($list){
            return $list;
        }else{
            return false;
        }
        //pre($list);
    }
}
