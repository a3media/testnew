{extends 'file:blog/templates/index.tpl'}
{block 'content'}
  {if $.get['tag']?}
      <div id="pdopage">
        <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
          <div class="rows">
              {$_modx->runSnippet('!pdoPage', [
                  'element' => 'tvssResources',
                  'tv' => '17',
                  'parents' => 554,
                    'limit' => '2',
                  'tpl' => '@FILE blog/chunks/postTpl.tpl',
              ]) ?: 'Ресурсов по данному тегу не найдено'}
          </div>
          {$_modx->getPlaceholder('page.nav')}
      </div>
  {else}
      Укажите тег для выборки документов
  {/if}
{/block}
{block 'right_column'}
  {include 'file:blog/chunks/right/categories.tpl'}
  {include 'file:blog/chunks/right/comments.tpl'}
  {include 'file:blog/chunks/right/tag_cloud_home.tpl'}
{/block}
