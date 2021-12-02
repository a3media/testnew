<div class="modal fade" id="modal_request" tabindex="-1" role="dialog" aria-hidden="true" style="display:none">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalCenterTitle"></h5>
      </div>
        {$_modx->runSnippet('AjaxForm', [
          'form' => '@FILE  landing/chunks/feedback/feedback_modal.tpl',
          'snippet' => 'FormIt',
          'hooks' => 'FormItSaveForm,email,megaplan_v2',
          'emailSubject' => 'Заказ на расчет стоимости перевозки',
          'emailTo' => $_modx->config.pr_zayavka_email,
          'emailFrom' => 'robot@prtrans.ru',
          'emailTpl' => '@FILE  landing/chunks/email_callback.tpl',
          'validate' => 'phone:phone:required',
          'validationErrorMessage' => 'В форме содержатся ошибки!',
          'frontend_css' => ''
        ])}
    </div>
  </div>
</div>
