<div class="city_intro">
  <div class="row h-100 m-0 city_intro_back">
    <div class="col-6">

    </div>
    <div class="col-6 pr-0">
      <div class="map w-100" id="map" style="height:100%;" style="display:none;">

      </div>
    </div>
  </div>
  <div class="container">
        <div class="row justify-content-between">
            <div class="col-md-6 py-1 px-0 my-2 order-2 order-md-1">
              <h1 class="h2">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
              <div class="home_intro_content">
                {$_modx->resource.content}
              </div>
              <div class="home_intro_buttons text-right py-1">
                <a href="{$_modx->makeUrl($_modx->resource.id)}#autopark" class="btn btn-outline-secondary mr-3">Транспорт</a>
                <a href="{$_modx->makeUrl($_modx->resource.id)}#city_price" class="btn btn-outline-primary">Стоимость</a>
              </div>
            </div>
            <div class="col-md-6 col-lg-5 mb-md-5 order-1 order-md-2">
              {$_modx->runSnippet('!AjaxForm', [
                'form' => '@FILE  chunks/feedback/feedback.tpl',
                'snippet' => 'FormIt',
                'hooks' => 'FormItSaveForm,email,megaplan_v2',
                'emailSubject' => 'Заявка с ' ~ 'site_url' | config,
                'emailTo' => $_modx->config.pr_zayavka_email,
                'emailFrom' => 'robot@prtrans.ru',
                'emailTpl' => '@FILE  chunks/feedback/email.tpl',
                'validate' => 'phone:phone:required',
                'validationErrorMessage' => 'В форме содержатся ошибки!',
              ])}
            </div>
        </div>
    </div>
</div>
