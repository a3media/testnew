<div class="how_work bg-light py-5">
<div class="container">
  {$_modx->runSnippet('pdoResources', [
    'parents' => '0',
    'depth' => '0',
    'resources' => '1',
    'select' => 'pagetitle,id',
    'tpl' => '@FILE chunks/home/how_workTpl.tpl'
  ])}
</div>
</div>
