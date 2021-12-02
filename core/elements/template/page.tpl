{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
  <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
  <main>
    {if $_modx->resource.image}
    <div class="row">
      <div class="col-md-8">
        {$_modx->resource.introtext}
        <div class="text-right">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal_order" data-whatever="{$pagetitle}">Заказать</button>
        </div>
      </div>
      <div class="col-md-4 page_introtext">
        <img src="[[*image:phpthumbon=`&w=300&q=75`]]" alt="[[*pagetitle]]" class="page_img mr-3 pb-3">
      </div>
    </div>
    {else}
      {$_modx->resource.introtext}
    {/if}
    {$_modx->resource.content}
  </main>
</div>
{/block}
