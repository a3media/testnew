{extends 'file:template/index.tpl'} {block 'content'}
  <div class="container">
      <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
      <div class="row">
        {'!pdoResources' | snippet : [
            'parents' => $_modx->resource.id,
            'depth' => 0'',
            'useWeblinkUrl' => '1',
            'scheme' => 'uri',
            'tpl' => '@FILE chunks/categoryTpl.tpl',
            'select' => 'pagetitle,id,introtext',
            'includeTVs' => 'image,headroom,lifting,scope,bodylength,bodytype,bodywidth'
        ]}
      </div>
  </div>
{/block}
