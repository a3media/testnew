{extends 'file:template/index.tpl'} {block 'content'}
<div class="container mb-5">
    <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
    <main>
        <div class="row pb-5 align-items-center">
            <div class="col-md-6 text-center">
                <picture>
                    <source data-srcset="{$_modx->resource.image  | phpthumbon : '&w=500&h=320&zc=0&q=75&f=webp'}" type="image/webp">
                    <img data-src="{$_modx->resource.image | phpthumbon:'&w=500&h=320&zc=0&q=75'}" alt="{$pagetitle}" class="lazyload auto_img">
                </picture>
            </div>
            <div class="col-md-6">
              <div class="auto_chars">
                <p><strong>Грузоподъемность:</strong> {$_modx->resource.lifting}</p>
                <p><strong>Высота кузова:</strong> {$_modx->resource.headroom}</p>
                <p><strong>Объем:</strong> {$_modx->resource.scope}</p>
                <p><strong>Длина кузова:</strong> {$_modx->resource.bodylength}</p>
                <p><strong>Ширина кузова:</strong> {$_modx->resource.bodywidth}</p>
                <p><strong>Тип кузова:</strong> {$_modx->resource.bodytype}</p>
              </div>
            <button type="button" class="btn btn-primary modal_ajax_btn float-right mt-3" data-toggle="modal" data-action="order" data-whatever="{$_modx->resource.pagetitle}">Заказать</button>
            </div>
        </div>
        <div>{$_modx->resource.content}</div>
      </main>
</div>
{include 'file:chunks/additional/have_questions.tpl'}
{/block}
