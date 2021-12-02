<?php
if (function_exists('fastcgi_finish_request')) {
  //быстро отвечаем клиенту
    $times = date("Gi");
    $array_return = array("success"=> 1);
    switch ($_POST['form']) {
      case 'order':
        if ($times < 700 || $times > 2100) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
          $array_return['hide'] = '#modal_order';
        } else {
          $array_return['message'] = 'OK';
          $array_return['hide'] = '#modal_order';
        }
      break;

      case 'no_city':
        if ($times < 700 || $times > 2100) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
          $array_return['hide'] = '#modal_no_city';
        } else {
          $array_return['message'] = 'OK';
          $array_return['hide'] = '#modal_no_city';
        }
      break;

      case 'top_form':
        if ($times < 700 || $times > 2100) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
        } else {
          $array_return['message'] = 'OK';
        }
      break;

      case 'have_questions':
        if ($times < 700 || $times > 2100) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
        } else {
          $array_return['message'] = 'OK';
        }
      break;

      case 'offtime':
        $array_return['message'] = 'OK';
        $array_return['hide'] = '#modal_offtime';
      break;

      default:

      break;
    }
    echo json_encode($array_return);
    session_write_close();
    fastcgi_finish_request();
}

// Присваиваем имя
if (empty($_POST['name'])) { $name = 'Без имени';} else { $name = $_POST['name'];}

$ist; //сюда запишем Источник

//проверим utm
switch ($_POST['utm']) {
  case '':
    $ist = 'Прямой заход';
    break;
  case 'Instagram':
    $ist = 'Instagram';
    break;

  default:
    $utm_array;
    $utm_array2 = explode('&', $_POST['utm']);
    foreach($utm_array2 as $str) {
     list($key, $value) = explode('=', $str);
     $utm_array[$key] = $value;
    }
    $ist = $utm_array['campaign'];
    $modx->log(1,print_r($utm_array, true));
    break;
}

//формируем заголовок лида
if ($_POST['down']){
    $description = 'Перевозка из '. $_POST['down'] . ' в ' . $_POST['town'];
} else{
    $description = $_POST['question'].' '. $_POST['whatever'];
}

//формируем Сообщение для телеграм
switch ($_POST['form']) {
  case 'order':

$message = "
Новая заявка

Имя: {$name}
Телефон: {$_POST['phone']}
$ist
Источник: {$_POST['site']}
";
  break;

  case 'offtime':

$message = "Удобно перезвонить: {$_POST['date']} - {$_POST['time']}";
  break;

  case 'no_city':
  case 'top_form':
  case 'have_questions':
$message = "
Новая заявка

Имя: {$name}
Телефон: {$_POST['phone']}
$description
$ist

Источник: {$_POST['site']}
";

  break;

  default:

  break;
}

// Отслыка в телеграмм
$url = 'https://api.telegram.org/bot920858728:AAFve8DzeI03WclelEGenSB1UBYc3lyMbfY/sendMessage?chat_id=-1001315335348&text=' . urlencode($message);
$ch = curl_init();
curl_setopt_array($ch, array(CURLOPT_URL => $url, CURLOPT_RETURNTRANSFER => true));
$result = curl_exec($ch);
curl_close($ch);


include( MODX_CORE_PATH . 'components/megaplan/api/Request.php' );

if($_POST['form'] == 'offtime'){

}else{

  // Доступ к Мегаплану
  $host = $modx->getOption('megaplan_host');
  $login = $modx->getOption('megaplan_login');
  $password = $modx->getOption('megaplan_password');
  $schema_id = $modx->getOption('megaplan_schema_id');
  $otkuda = $modx->getOption('megaplan_otkuda');
  $kuda = $modx->getOption('megaplan_kuda');
  $site = $modx->getOption('http_host');


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

  $users = json_decode($request->get('/BumsCrmApiV01/Contractor/list.api', array('Phone' => $_POST['phone'])));
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
}