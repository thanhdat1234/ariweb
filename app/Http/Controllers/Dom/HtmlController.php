<?php

namespace App\Http\Controllers\Dom;

use Illuminate\Http\File;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Oil\Exception;
use Yangqi\Htmldom\Htmldom;
use App\Model\Shop;
use App\Model\Cates;

class HtmlController extends Controller
{
    //
    public function testDom(){
        return view('dom.form');
    }
    public function postTestDom(Request $request){
        $url = $request->get('url');
        $html = new Htmldom($url);
        $pagination = $html->find('.pagination ol li');
        echo count($pagination);
        //echo $html;
    }
    public function getLinkShopSendo(){
        $url = 'https://www.sendo.vn/shop/';
        $html = new Htmldom($url);
        $pagination = $html->find('.pagination ol li');
        unset($html);
        for($i=1;$i<=count($pagination)-2;$i++){
            $url = 'https://www.sendo.vn/shop/?p='.$i;
            //$url_pagination = '?p=2';
            $html = new Htmldom($url);
            if(!$html){
                continue;
            }
            foreach ($html->find('.shop-info-boxs .shop-name>a') as $el){
                if($el->find('strong',0)){
                    //echo $el->href.'<br>';
                    //echo $el->find('strong',0)->plaintext.'<br>';
                    $data['link'] = (string)$el->href;
                    $data['name'] = (string)$el->find('strong',0)->plaintext;
                    $dataz = $this->getShopInfo($data['link']);
                    if(!$dataz){
                        continue;
                    }
                    $arr = array_merge($data,$dataz);
                    $arr['type'] = 'sendo.vn';
                    $arr['page'] = $i;
                    Shop::insertInfo($arr);
                }else{
                    continue;
                }
            }
        }
    }
    public function getShopInfo($link){
        $url    = $link.'/thong-tin-shop/';
        //$url    = 'https://www.sendo.vn/shop/cong-so-gia-re/thong-tin-shop/';
        $flash = $this->checkStatusPage($url);
        if(!$flash){
            return false;
        }
        try{
            $html   = new Htmldom($url);
            if(!$html){
                return false;
            }
            $addr   = $html->find('.address-shop-rw span',0)->plaintext;
            $phone  = $html->find('.address-shop-rw span',1)->plaintext;
            $mail  = $html->find('.address-shop-rw span',2)->plaintext;
            $data['address']    = (string)trim($addr);
            $data['phone']      = (string)trim($phone);
            $data['email']      = (string)trim($mail);
            return $data;
        }catch (Exception $exception){
            echo  $exception->getMessage();
        }

    }
/*
 * Function cho product
 * */
    public function getPaginations($url){}
    public function getCategorys($url){
        $url = "https://www.sendo.vn/giay-dep/";
        $arr[0] = 'https://www.sendo.vn/';
        $arr[1] = '/';
        $html = new Htmldom($url);
        foreach ($html->find('.list-cate-wrap .list-cate') as $el){
            //echo $el->plaintext;
            echo "<br>";
            //echo $el->find('.list-item>.list-item-a>a',$i);
            //echo $el->find('.list-sub-cate>li',0);
            $i =0;
            foreach ($el->find('li.list-item>div.list-item-a') as $ite){
                //print($ite);
                /*parent*/
                $cate                   = [];
                $name                   = $ite->plaintext;
                $alias                  = $ite->find('a',0)->href;
                $cate_html              = new Htmldom($alias);
                $des                    = $cate_html->find('meta[name="description"]',0)->content;
                $des                    = str_replace('sendo.vn','ShopGiay',$des);
                $key                    = $cate_html->find('meta[name="keywords"]',0)->content;
                $key                    = str_replace('sendo.vn','ShopGiay',$key);
                $alias                  = str_replace('https://www.sendo.vn/','',$alias);
                $alias                  = str_replace('/','',$alias);
                $cate['name']           = $name;
                $cate['alias']          = $alias;
                $cate['description']    = $des;
                $cate['keywords']       = $key;
                $id_parent              = Cates::createItem($cate);
                if(!$id_parent){
                    die("have error!");
                }
                /*child*/
                $childz = $el->find('.box-sub-cate>.list-sub-cate',$i);
                foreach ($childz->find('li a') as $child){
                    $cate                   = [];
                    $name                   = $child->plaintext;
                    $alias                  = $child->href;
                    $cate_html              = new Htmldom($alias);
                    $des                    = $cate_html->find('meta[name="description"]',0)->content;
                    $des                    = str_replace('sendo.vn','ShopGiay',$des);
                    $key                    = $cate_html->find('meta[name="keywords"]',0)->content;
                    $key                    = str_replace('sendo.vn','ShopGiay',$key);
                    $alias                  = str_replace('https://www.sendo.vn/','',$alias);
                    $alias                  = str_replace('/','',$alias);
                    $cate['name']           = $name;
                    $cate['alias']          = $alias;
                    $cate['description']    = $des;
                    $cate['keywords']       = $key;
                    $cate['parent_id']         = $id_parent;
                    $id_child              = Cates::createItem($cate);
                }
                $i++;
            }
        }
    }
    public function getSpecifics(){
        $cate = Cates::getListCategory();
        foreach ($cate as $item):
            $url = "https://www.sendo.vn/".$item->alias;
            $html = new Htmldom($url);
            foreach ($html->find('.wrap-filter-attr .filter-attr') as $ite):
                $name = $ite->find('.ttl-left',0)->plaintext;
                echo $name."<br>";
                if($ite->find('.cont-filter-attr ul li')):
                    foreach ($ite->find('.cont-filter-attr ul li') as $it){
                        //echo $it->outertext;
                        if($it->find('a img',0)){
                           echo "--".$it->find('a img',0)->src."<br>";
                        }

                        if($it->find('label',0)){
                            $id_sendo =  $it->find('label',0)->for;
                            $id_sendo = str_replace('category_','',$id_sendo);
                            $value = $it->find('label span',0)->plaintext;
                            echo '--'.$id_sendo."<br>";
                            echo '--'.$value."<br>";
                        }
                    }
                elseif ($ite->find('.cont-filter-attr ul label')):
                    foreach ($ite->find('.cont-filter-attr ul label') as $it){
                        //echo $it->outertext;
                        if($it->find('a img',0)){
                           echo "--".$it->find('a img',0)->src."<br>";
                        }
                        if($it->find('a',0)){

                            /*$id_sendo =  $it->find('label',0)->for;
                            $id_sendo = str_replace('category_','',$id_sendo);
                            $value = $it->find('label span',0)->plaintext;*/
                            echo '--'.$it->find('a',0)->plaintext."<br>";
                        }elseif($it->find('label',0)){
                            $id_sendo =  $it->find('label',0)->for;
                            $id_sendo = str_replace('category_','',$id_sendo);
                            $value = $it->find('label span',0)->plaintext;
                            echo '--'.$id_sendo."<br>";
                            echo '--'.$value."<br>";
                        }
                    }
                endif;
                echo "--------------------<br>";

            endforeach;
            die;
        endforeach;
    }
    public function getProductSendo(){
        $cate = Cates::getListCategory();
        //$src = 'https://media3.scdn.vn/img2/2017/12_7/7CZ3jq_simg_b5529c_250x250_maxb.jpg';
        //foreach ()
        //Storage::move('https://media3.scdn.vn/img2/2017/12_7/7CZ3jq_simg_b5529c_250x250_maxb.jpg', 'new/file1.jpg');
        foreach ($cate as $item):
            $url = "https://www.sendo.vn/".$item->alias;
            $html = new Htmldom($url);
            foreach ($html->find('.box-listing .box_product') as $item):
                //echo $item->outertext();
                $product    =[];
                $urlz = $item->find('a',0)->href;
                $htmlz = new Htmldom($urlz);
                $des                    = $htmlz->find('meta[name="description"]',0)->content;
                $key                    = $htmlz->find('meta[name="keywords"]',0)->content;
                echo $des;
                echo $item->find('a',0)->href.'<br>';
                echo $item->find('img',0)->src.'<br>';
                echo $item->find('.current_price',0)->plaintext.'<br>';
                echo $item->find('.name_product',0)->plaintext.'<br>';
                echo "<hr>";
            endforeach;
            die;
        endforeach;
    }
/*Function dung chung */
    public function checkStatusPage($link){
        //$url    = 'https://www.sendo.vn/shop/cong-so-gia-re/thong-tin-shop/';
        $url =$link;
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322)');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        $data = curl_exec($ch);
        $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        return ($httpcode>=200 && $httpcode<300) ? $data : false;
    }
    /*?get img*/
    protected function getImg($src,$path = false){
        if(!$path){
            $path = 'public/more/';
        }
        $extension = pathinfo($src,PATHINFO_EXTENSION);
        $file_name =  strtotime('now').'.'.$extension;
        $file = file_get_contents($src);
        $flash = file_put_contents($path.$file_name,$file);
        if($flash){
            return $path.$file_name;
        }else{
            return 0;
        }
    }
}
