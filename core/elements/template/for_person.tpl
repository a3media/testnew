{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
    <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
    <div class="into_text">
      {$_modx->resource.content}
    </div>
    <div class="row">
      {$_modx->runSnippet('pdoResources', [
        'parents' => $_modx->resource.id,
        'depth' => '1',
        'hideContainers' => '1',
        'select' => 'pagetitle,id,description',
        'includeTVs' => 'image,lifting,scope',
        'useWeblinkUrl' => '1',
        'tpl' => '@FILE chunks/additional/for_personTpl.tpl'
      ])}
    </div>
</div>
{include 'file:chunks/additional/dopuslugi.tpl'}
{include 'file:chunks/city/how_work.tpl'}
{include 'file:chunks/additional/have_questions.tpl'}
{/block}
