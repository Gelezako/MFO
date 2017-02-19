<?php
/**
* MFO bank 
* @author Alex Sokolov <admin@gelezako.com>
* @copyright Alex Sokolov http://mfo.gelezako.com (c)
* @version 0.1 (Feb 14, 2017)
*/


require_once 'libs/Smarty.class.php';
$smarty=new Smarty;
$smarty->template_dir='templates';
$smarty->compile_dir='template_c';
$smarty->config_dir='configs';
$smarty->cache_dir='cache';

     $data=array(
       'mfo'=>'',
       'name'=>'',
       'city'=>'',
       'country'=>''
       );


     libxml_use_internal_errors(true);

     $url="https://api.privatbank.ua/p24api/bankinfo?json&bank=&mfo=";
     $name='';
     $i=0;
     $row=2;
     //$city=$_POST['city'];
     //$country=$_POST['country'];
     $country="UA";
     if(isset($_POST['bank'])) {
       $url="https://api.privatbank.ua/p24api/bankinfo?json&bank=".$_POST['bank']."&mfo=";
       $json =  file_get_contents($url);
              if (!$json and $i!=0 ) {
                echo 'Не удалось получить данные.';
              }
            else {
              $json=json_decode($json,true);
              if(is_array($json)){
                foreach ($json as $key => $item) {
                  $row++;
                      //if(isset($_POST['country']) and $item['COUNTRY']==$_POST['country']){
                      //$data['mfo'].=$_POST['country']."МФО: ".$item['MFO']." - ".$item['CITY']." ". $item['NAME'].'&#013;&#010;';
                      //$data['city'].=$item['CITY'].'&#013;&#010;';
                      //$data['country'].=$item['COUNTRY'].'&#013;&#010;';}
                    //else{
                      $data['mfo'].="МФО: ".$item['MFO']." - Город ".$item['CITY']." ". $item['NAME'].'&#013;&#010;';
                      //$data['city'].=$item['CITY'].'&#013;&#010;';
                      //$data['country'].=$item['COUNTRY'].'&#013;&#010;';}
                }
            }
     }}

     else if (isset($_POST['mfo'])) {
       $url="https://api.privatbank.ua/p24api/bankinfo?json&bank=&mfo=".$_POST['mfo'];
       $json =  file_get_contents($url);
              if (!$json and $i!=0) {
                echo 'Не удалось получить данные.';
              }
              else{
                  $json=json_decode($json,true);
                  if(is_array($json)){
                    foreach ($json as $key => $item) {
                        $data['mfo'].="Банк: ".$item['NAME']." - Город ". $item['CITY'].'&#013;&#010;';
                    }
                  }       
            }
     }


        

     //$smarty->assign('mfo',$mfo);
     //$smarty->assign('bank',$bank);
     $smarty->assign('name',$name);
     //$smarty->assign('city',$city);
     //$smarty->assign('country',$country);
     $smarty->assign('data',$data);
     $smarty->assign('row',$row);
     $smarty->display('templ.tpl');

$i++;

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-5674115-5', 'auto');
  ga('send', 'pageview');

</script>
?>
