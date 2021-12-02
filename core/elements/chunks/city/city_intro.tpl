<div class="intro_wrapper mb-4">
    <div class="container p-relative">
      <div class="intro_back"></div>
        <div class="row justify-content-between align-items-center">
            <div class="col-md-6 py-3 my-2 order-2 order-md-1">
              <h1 class="h2">Грузоперевозки из {'pagetitle' | resource | morphy_city : 'родительный'}</h1>
              <div class="city_intro_content pb-3">
                <p>Компания «ПраймТранс» - это профессиональные грузоперевозки от двери до двери из
                   {'pagetitle' | resource | morphy : 'родительный'} по России, минуя склады и перегрузочные пункты.
                   Для наших клиентов доступен большой автопарк с автомобилями различной грузоподъемности: газели, среднетоннажники и фуры.</p>
                <ul>
                  <li>Междугородние квартирные офисные переезды</li>
                  <li>Страхование, погрузо-разгрузочные работы</li>
                  <li>Перевозка грузов для физических и юридических лиц отдельным транспортом или догрузом</li>
                </ul>
              </div>

              <div class="row pb-4 align-items-center">
                <div class="col-7 col-lg-5">
                 <div class="c_to_c_minprice ">
                    <p class="m-0">От <span>{'pagetitle' | resource | minPrice | number : 0 : '.' : ' '}</span> руб.</p>
                  </div>
                </div>
                <div class="col-5 col-lg-4 c_to_c_info_item">
                    <svg class="kg_icon"><use xlink:href="/img/sprite.svg#kg"></use></svg><span style="font-size: 24px;">от 100 кг</span>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-5 order-1 order-md-2">
              {$_modx->runSnippet('!AjaxForm', [
                'form' => '@FILE  chunks/feedback/feedback_c_to_c.tpl',
                'snippet' => 'FormIt',
                'hooks' => 'FormItSaveForm,megaplan_v2_test',
                'validate' => 'phone:phone:required,agreecont:required',
                'validationErrorMessage' => 'В форме содержатся ошибки!',

              ])}
            </div>
        </div>
    </div>
</div>
