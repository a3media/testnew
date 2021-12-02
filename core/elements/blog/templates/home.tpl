{extends 'file:blog/templates/index.tpl'} {block 'content'}
<h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
<p class="mb-3">
  {$_modx->resource.introtext}
</p>
<div id="pdopage">
    <div class="rows">
      {'!pdoPage' | snippet : [
          'element' => 'getTickets',
          'parents' => '554',
          'depth' => '1',
          'hideContainers' => '1',
          'limit' => '5',
          'select' => 'pagetitle,introtext,publishedon,id,parent',
          'tpl' => '@FILE blog/chunks/postTpl.tpl',
          'includeTVs' => 'image',
          'sortby' => 'publishedon'
      ]}
    </div>
    {$_modx->getPlaceholder('page.nav')}
</div>
{/block}
{block 'right_column'}
  {include 'file:blog/chunks/right/categories.tpl'}
  {include 'file:blog/chunks/right/comments.tpl'}
  {include 'file:blog/chunks/right/tag_cloud_home.tpl'}
{/block}
