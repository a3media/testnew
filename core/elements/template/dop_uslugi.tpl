{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
    <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
    <div class="into_text">
      {$_modx->resource.content}
    </div>
    <div class="row">
      {$_modx->runSnippet('pdoResources', [
        'parents' => '201',
        'depth' => '1',
        'tpl' => '@FILE chunks/additional/dop_uslugiTpl.tpl',
        'useWeblinkUrl' => '1',
        'scheme' => 'uri',
        'select' => 'pagetitle,id,introtext',
        'includeTVs' => 'image'
      ])}
    </div>
</div>
{include 'file:chunks/city/how_work.tpl'}
{include 'file:chunks/additional/have_questions.tpl'}
{/block}
