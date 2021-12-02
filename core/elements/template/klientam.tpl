{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
  <h1 class="mb-3">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
  <div class="into_text">
    {$_modx->resource.content}
  </div>
  <h2>Документы</h2>
  <div class="my-3">
    <div class="card_introtext">
      {'pdoField' | snippet : ['id' => 20, 'field' => 'introtext' ]}

    </div>
    <div class="mb-4 text-right">
      <a href="{$_modx->makeUrl(20)}" class="btn btn-outline-primary">Скачать документы</a>
    </div>
  </div>
  <h2>Полезная информация: последние статьи</h2>
  <div class="row">
    {'!pdoResources' | snippet : [
        'element' => 'getTickets',
        'parents' => $_modx->config.pr_statii,
        'limit' =>  2,
        'depth' => 2,
        'hideContainers' => '1',
        'useWeblinkUrl' => '1',
        'scheme' => 'uri',
        'tpl' => '@FILE chunks/categoryTpl.tpl',
        'select' => 'pagetitle,id,introtext',
        'includeTVs' => 'image,headroom,lifting,scope,bodylength,bodytype,bodywidth'
    ]}
  </div>
  <div class="mb-4 text-right">
    <a href="{$_modx->makeUrl($_modx->config.pr_statii)}" class="btn btn-outline-primary">Все статьи</a>
  </div>
</div>


{/block}
