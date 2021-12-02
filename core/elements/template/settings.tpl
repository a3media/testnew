{extends 'file:template/index.tpl'}


{block 'content'}
<div class="intro_wrapper mb-4" >
  <div class="container p-relative">
    <div class="intro_back"></div>
    <div class="row justify-content-between align-items-center">
      <div class="col-md-12 py-3 my-2 order-2 order-md-1" id="setting_intro">


          <h1 class="h2">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
          <div class="setting_intro_content">
            <div class="setting" id="setting_form">
                <div class="container p-relative">
                  <div class="row justify-content-between align-items-center">
                      <div class="col-md-12 py-3 my-2 order-2 order-md-1">

                        {$_modx->runSnippet('!AjaxForm', [
                          'form' => '@FILE  chunks/setting/form.tpl',
                          'snippet' => 'SettingValidate',
                          'validationErrorMessage' => 'В форме содержатся ошибки!',
                          'frontend_css' => ''
                        ])}

                      </div>
                  </div>
                </div>
            </div>
          </div>

      </div>
    </div>
  </div>
</div>

{/block}
