<div class="modal fade modal_ajax" id="modal_offtime" tabindex="-1" role="dialog" aria-hidden="true" style="display:none">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title">{'pr_modal_offtime_title' | config}</h5>
      </div>
      <div class="modal-body">
          <p>{'pr_modal_offtime_text' | config}</p>
          {$_modx->runSnippet('!AjaxForm', [
            'form' => '@FILE  chunks/feedback/feedback_offtime.tpl',
            'snippet' => 'FormIt',
            'hooks' => 'FormItSaveForm, megaplan_v2_test',
            'emailTpl' => '@FILE  chunks/feedback/emailOfftime.tpl',
            'validate' => 'time:required',
            'validationErrorMessage' => 'В форме содержатся ошибки!'
          ])}
          <div><p>Пожалуйста проверьте также свой телефон - <strong>{$phone}</strong> - и если он неправильный отправьте форму заного.</p></div>
      </div>
    </div>
  </div>
</div>
