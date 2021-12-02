{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
  <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
  <div class="row mb-5 justify-content-center">
    <div class="col-lg-8">
      {'!pdoPage' | snippet : [
          'tpl' => '@FILE chunks/easycomm/tpl.ecMessages.Row.tpl',
          'thread' => 'resource-7',
          'element' => 'ecMessages',
          'context' => 'web',
          'limit' => '10'
      ]}
      {$_modx->getPlaceholder('page.nav')}
    </div>
    <div class="col-md-8 col-lg-4">

      {'!ecForm' | snippet : [
          'tplForm' => '@FILE chunks/easycomm/tpl.ecForm.tpl',
          'thread' => 'resource-7',
          'files' => 10,
          'fileSize' => '99999999999'
          'filesCount' => '10',
      ]}
    </div>
  </div>
</div>
{/block}
