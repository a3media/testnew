<div class="intro_wrapper mb-4">
  <div class="container p-relative">
    <div class="intro_back"></div>
      <div class="row justify-content-between align-items-center">
        <div class="col-md-6 py-3 my-2 order-2 order-md-1">
          <h1 class="h2">Грузоперевозки из {$from | morphy : 'родительный'} в {$to | morphy : 'винительный'}</h1>
          <div class="city_intro_content pb-3">
            <div class="city_intro_content pb-3">
            <p>Компания «ПраймТранс» - это профессиональные грузоперевозки от двери до двери из {$from | morphy : 'родительный' } в {$to | morphy : 'винительный'}, минуя склады и перегрузочные пункты.
               Для наших клиентов доступен большой автопарк с автомобилями различной грузоподъемности: газели, среднетоннажники и фуры.</p>
            <ul>
              <li>Междугородние квартирные и офисные переезды</li>
              <li>Страхование, погрузо-разгрузочные работы</li>
              <li>Перевозка грузов для физических и юридических лиц отдельным транспортом или догрузом</li>
            </ul>

          </div>
          </div>

          <div class="c_to_c_minprice pb-4">
            <p>От <span>{$price_dogruz | number : 0 : '.' : ' '}</span> руб.</p>
          </div>
          <div class="row">
            <div class="col-4 c_to_c_info_item pr-0">
                <svg class="kg_icon"><use xlink:href="/img/sprite.svg#kg"></use></svg> <span>от 100 кг</span>
            </div>
            {if 'tv.way' | resource }
            <div class="col-4 c_to_c_info_item pr-0">
              <img src="/img/road.svg" alt="Расстояние"> <span>{'tv.way' | resource | number : 0 : '.' : ' '} км</span>
            </div>
            <div class="col-4 c_to_c_info_item">
              <img src="/img/time.svg" alt="Время в пути"> <span>{'travel_time' | snippet : [
                'way' => 'tv.way' | resource,
                'inday' => 700,
                'inday2' => 500
                ]}</span>
            </div>
            {/if}
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
