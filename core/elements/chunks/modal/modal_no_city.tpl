<div class="modal fade modal_ajax" id="modal_no_city" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal_no_cityTitle">{'pr_modal_request_title' | config}</h5>
      </div>
        {$_modx->runSnippet('!AjaxForm', [
          'form' => '@FILE  chunks/feedback/feedback_no_city.tpl',
          'snippet' => 'FormIt',
          'hooks' => 'FormItSaveForm,megaplan_v2_test',
          'validate' => 'phone:phone:required,agree:required',
          'validationErrorMessage' => 'В форме содержатся ошибки!',
          'agree.vTextRequired'=>'Необходимо поставить галочку'
        ])}
    </div>
  </div>
</div>
