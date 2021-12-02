{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
    <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
    <div class="intro_text">
      {$_modx->resource.content}
    </div>
    <h2>Юридическим лицам</h2>
    <div class="row mb-5">
      {set $rows = json_decode(20 | resource: 'files2')}
      {foreach $rows as $row}
      <div class="col-md-6 mb-4">
        <div class="card shadow">
          <div class="card-body">
            <div class="row">
              <div class="col-2 pr-0 text-center">
                <a href="/docs/{$row.docfile}"><img data-src="/assets/images/{$row.image}" alt="{$row.title}"></a>
              </div>
              <div class="col-10">
                <a href="/docs/{$row.docfile}" class="h3 mb-3 d-block">{$row.title}</a>
                <div class="card_introtext mb-3">
                  {$row.text}
                </div>
                <div class="text-right">
                  <a href="/docs/{$row.docfile}" class="btn btn-primary"> <img data-src="/img/download.svg" alt="скачать"> Скачать </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/foreach}
    </div>
    <h2>Физическим лицам</h2>
    <div class="row mb-5">
      {set $rows = json_decode(20 | resource: 'files')}
      {foreach $rows as $row}
      <div class="col-md-6 mb-4">
        <div class="card shadow">
          <div class="card-body">
            <div class="row">
              <div class="col-2 pr-0 text-center">
                <a href="/docs/{$row.docfile}"><img data-src="/assets/images/{$row.image}" alt="{$row.title}"></a>
              </div>
              <div class="col-10">
                <a href="/docs/{$row.docfile}" class="h3 mb-3 d-block">{$row.title}</a>
                <div class="card_introtext mb-3">
                  {$row.text}
                </div>
                <div class="text-right">
                  <a href="/docs/{$row.docfile}" class="btn btn-primary"> <img data-src="/img/download.svg" alt="скачать"> Скачать </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/foreach}
    </div>
</div>
{/block}
