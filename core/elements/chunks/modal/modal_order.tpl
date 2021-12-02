<div class="modal fade modal_ajax" id="modal_order" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">{$what}</h5>
      </div>
        {$_modx->runSnippet('!AjaxForm', [
          'form' => '@FILE  chunks/feedback/feedbackOrder.tpl',
          'snippet' => 'FormIt',
          'hooks' => 'FormItSaveForm,megaplan_v2_test',
          'validate' => 'phone:phone:required,agreecont:required',
          'validationErrorMessage' => 'В форме содержатся ошибки!',
          'agree.vTextRequired'=>'Необходимо поставить галочку'
        ])}
    </div>
  </div>
</div>
