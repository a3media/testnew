{extends 'file:template/index.tpl'} {block 'content'}
<div class="container avtopark_page">
    <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
    <div class="intro_text">
      {$_modx->resource.content}
    </div>
    <div class="row mb-5">
      {$_modx->runSnippet('pdoResources', [
        'parents' => $_modx->resource.id,
        'depth' => '1',
        'hideContainers' => '1',
        'select' => 'pagetitle,id,introtext',
        'includeTVs' => 'image,lifting,scope',
        'useWeblinkUrl' => '1',
        'tpl' => '@FILE chunks/additional/autoparkPageTpl.tpl'
      ])}
    </div>
</div>
{include 'file:chunks/additional/have_questions.tpl'}
{/block}
