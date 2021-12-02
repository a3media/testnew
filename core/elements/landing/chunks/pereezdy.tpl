<div class="py-5" id="pereezdy">
  <div class="container">
    <h2>Недавние переезды</h2>
  </div>
    <div class="row mb-5 px-2 mx-0 justify-content-center">
      {$_modx->runSnippet('!pdoResources', [
        'parents' => 571,
        'depth' => '1',
        'hideContainers' => '1',
        'limit' => '6',
        'select' => 'content,introtext,publishedon,id',
        'includeTVs' => 'gallery,city_from,city_to,p_date',
        'useWeblinkUrl' => '1',
        'tpl' => '@FILE landing/chunks/pereezdy1Tpl.tpl',
      ])}

    </div>
</div>
