<?php
if ($_POST) {
  /*
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
  */
  $errors;

  if ($errors) {
    foreach ($validates as $key => $message) {
      if (empty($_POST[$key])) {
          $errors[$key] = $message;
      }
    }

    if (count($errors) > 0) {
        return $AjaxForm->error('Ошибки в форме', $errors);
    }
  }

  else {
    $modx->log(modX::LOG_LEVEL_ERROR, json_encode($_POST));

    $otherProps = array(
     'processors_path' => $modx->getOption('core_path') . 'components/clientconfig/processors/'
    );

    $save_data = array(
    'pr_work_time_begin' => $_POST['time_to_begin'],
    'pr_work_time_end' => $_POST['time_to_end'],
    );

    $modx->log(modX::LOG_LEVEL_ERROR, json_encode($save_data));

    $_POST = array(
     'values' => json_encode($save_data),
    );


    $response = $modx->runProcessor('mgr/settings/save', $_POST, $otherProps);

    if (!$response->isError()) {$modx->log(modX::LOG_LEVEL_ERROR, json_encode($response->getMessage()));}
    /*
    $prContracts = $modx->getService('prContracts', 'prContracts', MODX_CORE_PATH . 'components/prcontracts/model/');
    $contract = $modx->getObject('prContractsItem', $_POST['contract_id']);
    $contract->set('active', 0);
    $contract->set('description', $out);
    $contract->save();
    */
    return $AjaxForm->success('OK');
  }

}