{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
  <h1 class="mb-4">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
  <main class="mb-5">
    <div class="row mb-5">
      <div class="col-md-4 pr-0">
        <img src="{$_modx->resource.image | phpthumbon : "w=380&zc=1&q=75"}" alt="{$pagetitle}" class="page_img mb-3 rounded">
      </div>
      <div class="col-md-8 page_introtext">
        {$_modx->resource.introtext}
        <div class="text-right">
            <button type="button" class="btn btn-primary modal_ajax_btn" data-toggle="modal" data-action="order" data-whatever="{$_modx->resource.pagetitle}">Заказать</button>
        </div>
      </div>
    </div>
    {$_modx->resource.content}
  </main>
  {include 'file:chunks/additional/other_service.tpl'}
  {include 'file:chunks/additional/dopuslugi.tpl'}
</div>
{include 'file:chunks/city/how_work.tpl'}
{include 'file:chunks/additional/for_company.tpl'}
{include 'file:chunks/home/autopark.tpl'}
{include 'file:chunks/additional/have_questions.tpl'}
{/block}
