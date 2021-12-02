<section class="have_questions">
  <div class="container p-0">
    <div class="have_questions_inner p-3 p-md-5">
      <h2 class="main_color text-center pt-5">Остались вопросы?</h2>
      <div class="text-center have_questions_long_title pb-5">Наш менеджер ответит на них в кратчайшее время</div>
    <div class="row py-3">
      <div class="col-lg-5 py-lg-5">
        {$_modx->runSnippet('AjaxForm', [
          'form' => '@FILE  landing/chunks/feedback/have_questions_feedback.tpl',
          'snippet' => 'FormIt',
          'hooks' => 'FormItSaveForm,email,megaplan_v2',
          'emailSubject' => 'Вопрос с ' ~ 'site_url' | config,
          'emailTo' => $_modx->config.pr_zayavka_email,
          'emailFrom' => 'robot@prtrans.ru',
          'emailTpl' => '@FILE  landing/chunks/email_question.tpl',
          'validate' => 'phone:phone:required',
          'validationErrorMessage' => 'В форме содержатся ошибки!',
          'frontend_css' => '',
        ])}
      </div>
      <div class="col-lg-2 py-5">
        <div class="block_ili text-center py-lg-5 my-lg-5">или</div>
      </div>
      <div class="col-lg-5 py-5 px-0">
          <h3 class="text-center have_questions_title pb-4">Позвоните нам по номеру</h3>
          <div class="have_questions_phone"><a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9]+!' : ''}">{'pr_phone' | config}</a></div>
          <div class="have_questions_small_text">Звонки по России бесплатны</div>
      </div>
    </div>
    </div>
  </div>
</section>
