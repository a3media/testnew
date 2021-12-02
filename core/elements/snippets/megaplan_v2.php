<?php
if (function_exists('fastcgi_finish_request')) {
    $times = date("Gi");
    if ($times < 700 || $times > 2100) {
      $fd = $_POST['phone'];
    }
    else $fd = 'OK';
    echo json_encode(array("success"=> 1,"message" => $fd));
    session_write_close();
    fastcgi_finish_request();
}

include( MODX_CORE_PATH . 'components/megaplan/api/Request.php' );

// Доступ к Мегаплану
$host = $modx->getOption('megaplan_host');
$login = $modx->getOption('megaplan_login');
$password = $modx->getOption('megaplan_password');
$schema_id = $modx->getOption('megaplan_schema_id');
$otkuda = $modx->getOption('megaplan_otkuda');
$kuda = $modx->getOption('megaplan_kuda');
$site = $modx->getOption('http_host');
$name ='';
if (empty($_POST['name'])) { $name = 'Без имени';} else { $name = $_POST['name'];}
$ist; $utm_array;
$utm = '<p>'. str_replace( '&', '</p><p>', $_POST['utm']) . '</p>';
if ($POST['utm'] != 'Прямой заход'){
    $utm_array = explode("&", $_POST['utm']);
    $ist = $utm_array[1];
}
else {
    $ist = 'Прямой заход';
};
if ($_POST['down']){
    $description = 'Перевозка из '. $_POST['down'] . ' в ' . $_POST['town'];
} else{
    $description = $_POST['question'].' '. $_POST['whatever'];
}

// Отслыка в телеграмм
$message = "
Новая заявка

Имя: {$name}
Телефон: {$_POST['phone']}
$description
$ist

Источник: $site
";
$message = urlencode($message);
$url = "https://api.telegram.org/bot920858728:AAFve8DzeI03WclelEGenSB1UBYc3lyMbfY/sendMessage?chat_id=-1001315335348&text={$message}";
$ch = curl_init();
curl_setopt_array($ch, array(CURLOPT_URL => $url, CURLOPT_RETURNTRANSFER => true));
$result = curl_exec($ch);
curl_close($ch);

// Авторизуемся в Мегаплане
$request = new SdfApi_Request( '', '', $host, true );
$response = json_decode(
    $request->get(
        '/BumsCommonApiV01/User/authorize.api',
        array(
            'Login' => $login,
            'Password' => md5( $password )
        )
    )
);
// Получаем AccessId и SecretKey
$accessId = $response->data->AccessId;
$secretKey = $response->data->SecretKey;

// Переподключаемся с полученными AccessId и SecretKey
unset( $request );
$request = new SdfApi_Request( $accessId, $secretKey, $host, true );


$user_params = array(
   'Phone' => $_POST['phone']
   );
$users = json_decode($request->get('/BumsCrmApiV01/Contractor/list.api', $user_params));
$user = $users->data->clients[0];
if($user){
    $params = array(
       'ProgramId' => $schema_id,
       'StatusId' => null,
       'StrictLogic' => true,
       'Model[Manager]' => null,
       'Model[Contractor]' => $user->Id,
       'Model[Contact]' => null,
       'Model[Auditors]' => null,
       'Model['.$otkuda.']' => $_POST['down'],
       'Model['.$kuda.']' => $_POST['town'],
       'Model[Category1000059CustomFieldIstochnik]' => $site,
       'Model[Category1000059CustomFieldIstochnikForma]' => $_POST['whatever'],
       'Model[Category1000059CustomFieldUtm]' => $utm,
       'IsDraft' => false,
       'Model[CustomName]' => $description
   );
   $req = json_decode($request->post('/BumsTradeApiV01/Deal/save.api', $params));

}else{

    $today = date("d.m.y");

    $params_user = array(
       'Id' => null,
       'Model[TypePerson]' => 'human',
       'Model[FirstName]' => $name . ' ' . $today,
       'Model[MiddleName]' => ' ',
       'Model[LastName]' => ' ',
       'Model[Phones]' => array(0 =>'ph_m-'.$_POST['phone'])
   );
    $user_add = json_decode($request->post('/BumsCrmApiV01/Contractor/save.api',$params_user));
    $user_id = $user_add->data->contractor->Id;
    $params = array(
       'ProgramId' => $schema_id,
       'StatusId' => null,
       'StrictLogic' => true,
       'Model[Manager]' => null,
       'Model[Contractor]' => $user_id,
       'Model[Contact]' => null,
       'Model[Auditors]' => null,
       'IsDraft' => false,
       'Model['.$otkuda.']' => $_POST['down'],
       'Model['.$kuda.']' => $_POST['town'],
        'Model[Category1000059CustomFieldIstochnik]' => $site,
       'Model[Category1000059CustomFieldIstochnikForma]' =>  $_POST['whatever'],
       'Model[Category1000059CustomFieldUtm]' => $utm,
       'Model[CustomName]' => $description
   );
   $req = json_decode($request->post('/BumsTradeApiV01/Deal/save.api', $params));
}