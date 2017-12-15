<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    static public function insertInfo($data){
        $shop = new Shop();
        $shop->link = $data['link']?(string)$data['link']:'';
        $shop->name = $data['name']?$data['name']:'';
        $shop->type = $data['type']?$data['type']:'';
        $shop->page = $data['page']?$data['page']:1;
        $shop->phone = $data['phone']?$data['phone']:1;
        $shop->email = $data['email']?$data['email']:1;
        $shop->address = $data['address']?$data['address']:1;
        $shop->save();
    }
}
