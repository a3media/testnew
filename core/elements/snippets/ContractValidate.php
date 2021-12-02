<?php
$validates = array(
    'lastName' => 'заполните фамилию',
    'firstName' => 'заполните имя',
    'middleName' => 'заполните отчество',
    'legalAddress' => 'заполните адрес',
    'Address' => 'заполните адрес',
    'passport' => 'введите серию и номер',
    'passport_date' => 'укажите дату',
    'fms' => 'укажите орган УФМС',
    'contract_phone' => 'укажите контактный телефон',
    'phone_load_req' => 'укажите хотя бы один дополнительный телефон',
    'phone_unload_req' => 'укажите хотя бы один дополнительный телефон',
    'address_pogruzki_req' => 'укажите хотя бы один адрес',
    'address_vigruzki_req' => 'укажите хотя бы один адрес',
  );

$errors;

foreach ($validates as $key => $message) {
  if (empty($_POST[$key])) {
      $errors[$key] = $message;
  }
}

if (count($errors) > 0) {
    return $AjaxForm->error('Ошибки в форме', $errors);
}
else {
// Отслыка в телеграмм
$message = "По сделке https://prtrans.megaplan.ru/deals/".$_POST['deal_id']."/card/ клиент заполнил договор";
$message = urlencode($message);
$url = "https://api.telegram.org/bot920858728:AAFve8DzeI03WclelEGenSB1UBYc3lyMbfY/sendMessage?chat_id=-1001537190174&text={$message}";
$ch = curl_init();
curl_setopt_array($ch, array(CURLOPT_URL => $url, CURLOPT_RETURNTRANSFER => true));
$result = curl_exec($ch);
curl_close($ch);

  $out = json_encode($_POST);
  $modx->log(modX::LOG_LEVEL_ERROR, $out);
  $post_fields = $_POST;
  $post_fields['action'] = 'client_edit';
  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL, 'https://crm.prtrans.ru/assets/megaplan/main.php');
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch, CURLOPT_POST, 1);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $post_fields);
  $data = json_decode(curl_exec($ch),true);
  if ($data['errors']) {
    $modx->log(modX::LOG_LEVEL_ERROR, "данные отправлены в мегаплан");
  }

  $prContracts = $modx->getService('prContracts', 'prContracts', MODX_CORE_PATH . 'components/prcontracts/model/');
  $contract = $modx->getObject('prContractsItem', $_POST['contract_id']);
  $contract->set('active', 0);
  $contract->set('description', $out);
  $contract->save();
  return $AjaxForm->success('OK');
}