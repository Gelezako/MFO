<?php

echo date("d/m/Y");

$file = simplexml_load_file("http://www.cbr.ru/scripts/XML_daily.asp?date_req=".date("d/m/Y"));
$xml = $file->xpath("//Valute[@ID='R01235']");
$valute = strval($xml[0]->Value);
$dollar = str_replace(",",".",$valute);
echo $dollar;

$xml = $file->xpath("//Valute[@ID='R01239']");
$valute = strval($xml[0]->Value);
$euro = str_replace(",",".",$valute);
echo $euro;




/*
----
if (!isOnline('Internet')) { return; }
$file = simplexml_load_file("http://www.cbr.ru/scripts/XML_daily.asp?date_req=".date("d/m/Y"));

// Американский доллар
$xml = $file->xpath("//Valute[@ID='R01235']");
$valute = strval($xml[0]->Value);
$valute = str_replace(",",".",$valute);
$valute = round($valute,2);
sg("USD.rate",$valute); 

// Евро
$xml = $file->xpath("//Valute[@ID='R01239']");
$valute = strval($xml[0]->Value);
$valute = str_replace(",",".",$valute);
$valute = round($valute,2);
sg("EUR.rate",$valute);

// Украинская гривна
$xml = $file->xpath("//Valute[@ID='R01720']");
$valute = strval($xml[0]->Value);
$valute = str_replace(",",".",$valute);
$valute = round($valute,2);
sg("UAH.rate",$valute);

// Китайский юань
$xml = $file->xpath("//Valute[@ID='R01375']");
$valute = strval($xml[0]->Value);
$valute = str_replace(",",".",$valute);
$valute = round($valute,2);
sg("CNY.rate",$valute);

say("Курс валют обновлен", 0); 

----


$s = file_get_contents('http://bank.gov.ua/NBUStatService/v1/statdirectory?exchange&json');

$json = json_decode($s);

$rates = array(
 'USD'=>null,
 'EUR'=>null,
 'RUB'=>null
);
foreach ($json as $currency){
 if (array_key_exists($currency->cc, $rates)){
     $rates[$currency->cc] = round($currency->rate, 2);
 }
}

sg("nbu.USD",$rates['USD']);
sg("nbu.EUR",$rates['EUR']);
sg("nbu.RUB",$rates['RUB']);

-----


 /*
$url="https://privat24.privatbank.ua/p24/accountorder?oper=prp&avias=price&region=&type=&PUREXML=";
$data = simplexml_load_file($url);

foreach ($data->xpath('//price') as $price) {
	if($price['region']=="Винницкая"){
  //  echo $price['price'].$price['type'].$price['region'], '<br>';
	
	}
}

	  
	 
	 foreach ($data->avias[0]->price as $price) {
 switch((string) $price['region']) { 
    case 'Украина':
       echo $data->avias->price['price'], '<br>';
        break;
    case 'Винницкая1':
        echo $data->avias->price['price'], '<br>';
        break;
    }

	 }
	 */
	 
	 
	
	// foreach($xml->row[1]->exchangerate->attributes() as $key => $exchangerate){
/*
json
$query  = "https://api.privatbank.ua/p24api/aviasstations?json&price&region=27&type=A80"; 
$data =  file_get_contents($query);
//$order=array("[","]");
//$data=str_replace($order,"",$data);
$data   = json_decode($data,true);
print $data[0]["price"];
*/



 ?>
 