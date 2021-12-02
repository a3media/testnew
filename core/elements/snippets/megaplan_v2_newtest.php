<?php
if (function_exists('fastcgi_finish_request')) {

  $time_begin = str_replace(":", "", $modx->getOption('pr_work_time_begin'))*1;
  $time_end = str_replace(":", "", $modx->getOption('pr_work_time_end'))*1;
  //быстро отвечаем клиенту
    $times = date("Gi");
    $array_return = array("success"=> 1);
    switch ($_POST['form']) {
      case 'order':
        if ($times < $time_begin || $times > $time_end) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
          $array_return['hide'] = '#modal_order';
        } else {
          $array_return['phone'] = $_POST['phone'];
          $array_return['message'] = 'OK';
          $array_return['hide'] = '#modal_order';
        }
      break;

      case 'no_city':
        if ($times < $time_begin || $times > $time_end) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
          $array_return['hide'] = '#modal_no_city';
        } else {
          $array_return['phone'] = $_POST['phone'];
          $array_return['message'] = 'OK';
          $array_return['hide'] = '#modal_no_city';
        }
      break;

      case 'top_form':
        if ($times < $time_begin || $times > $time_end) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
        } else {
          $array_return['phone'] = $_POST['phone'];
          $array_return['message'] = 'OK';
        }
      break;

      case 'have_questions':
        if ($times < $time_begin || $times > $time_end) {
          $array_return['message'] = 'offtime';
          $array_return['phone'] = $_POST['phone'];
        } else {
          $array_return['phone'] = $_POST['phone'];
          $array_return['message'] = 'OK';
        }
      break;

      case 'offtime':
        $array_return['message'] = 'OK';
        $array_return['phone'] = $_POST['phone'];
        $array_return['hide'] = '#modal_offtime';
      break;

      default:

      break;
    }
    echo json_encode($array_return);
    session_write_close();
    fastcgi_finish_request();
}