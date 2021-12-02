{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
  <h1 class="mb-3">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
    <div class="page_content mb-5">
      {'content' | resource}
  </div>
  <div class="we_tr">
    {set $rows = json_decode($_modx->resource.we_transport, true)}
    {foreach $rows as $row}
    <div class="we_tr_block mb-4">
      <h2 class="h3">{$row.title}</h2>
      <div class="we_tr_block_content">
        <ul>
          {foreach $row.text | split as $item}
          <li>{$item}</li>

          {/foreach}
        </ul>
      </div>
    </div>

    {/foreach}
  </div>
</div>


{/block}
