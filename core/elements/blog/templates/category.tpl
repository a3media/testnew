{extends 'file:blog/templates/index.tpl'} {block 'content'}
  <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
  <div class="mb-3">
    {$_modx->resource.introtext}
  </div>
  {'!pdoPage' | snippet : [
      'parents' => $_modx->resource.id,
      'depth' => '1',
      'hideContainers' => '1',
      'context' => 'blog',
      'limit' => '4',
      'select' => 'pagetitle,introtext,publishedon,id,parent',
      'tpl' => '@FILE blog/chunks/postTpl.tpl',
      'includeTVs' => 'image',
      'sortby' => 'publishedon'
  ]}

  {$_modx->getPlaceholder('page.nav')}
{/block}
{block 'right_column'}
  {include 'file:blog/chunks/right/categories.tpl'}
  {include 'file:blog/chunks/right/comments.tpl'}
  {include 'file:blog/chunks/right/tag_cloud_home.tpl'}
{/block}
