<div class="cities bg-light">
  <h2 class="text-center mb-5">География перевозок</h2>
  <div class="container">
    <div class="cities_list">
      {$_modx->runSnippet('deliverys2', [
        'id' => $_modx->config.pr_goroda,
        'tpl' => '@FILE chunks/additional/cities.tpl'
      ])}
    </div>
  </div>
</div>
<div class="feedback_city back_dark_color text-white">
  <div class="container have_questions_inner pt-4 pb-5">
  <h2 class="text-center text-white font-weight-bold">Населенного пункта нет в списке?</h2>
    <div class="row justify-content-center text-center">
      <div class="col-xl-10">
        <div class="feedback_city_text pb-3">Наша компания работает по всей России. Наши менеджеры бесплатно расчитают стоимость и сообщат все ответы на Ваши вопросы. Для этого:</div>
      </div>
      <div class="col-lg-5">
          <div class="text-white text-center have_questions_title pb-4">Оставьте заявку</div>
          <button type="button" name="button" class="btn btn-primary modal_ajax_btn"  data-action="no_city" data-whatever="(Населенного пункта нет в списке)">Заполнить заявку</button>
      </div>
      <div class="col-lg-2">
        <div class="block_ili text-white text-center pt-5">или</div>
      </div>
      <div class="col-lg-5">
          <div class="text-white text-center have_questions_title">Позвоните нам по номеру</div>
          <div class="have_questions_phone"><a href="tel:{$_modx->config.pr_phone}">{$_modx->config.pr_phone}</a></div>
          <div class="have_questions_small_text">Звонки по России бесплатны</div>
      </div>
    </div>
  </div>
</div>
