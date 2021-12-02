<h2>Другие услуги {'pdoField' | snippet : ['id' => $_modx->resource.parent, 'field' => 'pagetitle' ] | lower} : </h2>
<div class="row justify-content-center">
  {$_modx->runSnippet('pdoResources', [
    'parents' => $_modx->resource.parent,
    'resources' => '-' ~ $_modx->resource.id,
    'depth' => '1',
    'hideContainers' => '1',
    'select' => 'pagetitle,id,introtext',
    'includeTVs' => 'image,lifting,scope',
    'useWeblinkUrl' => '1',
    'tpl' => '@FILE chunks/additional/for_personTpl.tpl'
  ])}
</div>
