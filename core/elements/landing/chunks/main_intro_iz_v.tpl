<div class="main_intro">
  <div class="container">
      <div class="row justify-content-between">
          <div class="col-lg-6 py-3 my-2">
            <h1 class="h2">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
            <div class="main_intro_content px-2">
              {'content' | resource}
            </div>
          </div>
          <div class="col-lg-6 mb-md-5 pt-5 mt-3">
            {'!AjaxForm' | snippet : [
                'form' => '@FILE  landing/chunks/feedback/intro_feedback_iz_v.tpl',
                'snippet' => 'FormIt',
                'hooks' => 'FormItSaveForm,email,megaplan_v2',
                'emailSubject' => 'Заказ на расчет стоимости перевозки',
                'emailTo' => $_modx->config.pr_zayavka_email,
                'emailFrom' => 'robot@prtrans.ru',
                'emailTpl' => '@FILE  landing/chunks/email.tpl',
                'validate' => 'phone:phone:required',
                'validationErrorMessage' => 'В форме содержатся ошибки!',
            ]}
          </div>
      </div>
  </div>
</div>
