<div class="have_questions back_dark_color">
  <div class="container p-0">
    <div class="have_questions_inner p-3 p-md-5">
      <h2 class="main_color text-center">Остались вопросы</h2>
      <div class="text-white text-center have_questions_long_title pb-5">Наш менеджер ответит на них в кратчайшее время</div>
    <div class="row">
      <div class="col-lg-5">
        {$_modx->runSnippet('AjaxForm', [
          'form' => '@FILE  chunks/feedback/feedback_have_questions.tpl',
          'snippet' => 'FormIt',
          'hooks' => 'FormItSaveForm,megaplan_v2_test',
          'validate' => 'name:minLength=^2^,phone:phone:required,s-message:blank',
          'validationErrorMessage' => 'В форме содержатся ошибки!',
          'frontend_css'=>''
        ])}
      </div>
      <div class="col-lg-2">
        <div class="block_ili text-white text-center py-5">или</div>
      </div>
      <div class="col-lg-5">
          <div class="text-white text-center have_questions_title pb-4">Позвоните нам по номеру</div>
          <div class="have_questions_phone"><a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9]+!' : ''}">{$_modx->config.pr_phone}</a></div>
          <div class="have_questions_small_text">Звонки по России бесплатны</div>
      </div>
    </div>
    </div>
  </div>
</div>
