<div class="main_intro">
  <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-6 mb-md-5 pt-5 mt-3">
            {'!AjaxForm' | snippet : [
                'form' => '@FILE  landing/chunks/feedback/intro_feedback.tpl',
                'snippet' => 'FormIt',
                'hooks' => 'FormItSaveForm,email,megaplan_v2',
                'emailSubject' => 'Заказ на расчет стоимости перевозки',
                'emailTo' => $_modx->config.pr_zayavka_email,
                'emailFrom' => 'robot@prtrans.ru',
                'emailTpl' => '@FILE  landing/chunks/email.tpl',
                'validate' => 'phone:minLength=^18^',
                'validationErrorMessage' => 'В форме содержатся ошибки!',
                'frontend_css' => '',
            ]}
          </div>
      </div>
  </div>
</div>
