  {$_modx->runSnippet('AjaxForm', [
    'form' => '@FILE  chunks/feedback/feedback.tpl',
    'snippet' => 'FormIt',
    'hooks' => 'offtime_hook,megaplan,FormItSaveForm,email',
    'emailSubject' => 'Заказ на расчет стоимости перевозки',
    'emailTo' => $_modx->config.pr_zayavka_email,
    'emailFrom' => 'robot@prtrans.ru',
    'emailTpl' => '@FILE  chunks/feedback/email.tpl',
    'validate' => 'phone:phone:required',
    'validationErrorMessage' => 'В форме содержатся ошибки!',
  ])}
