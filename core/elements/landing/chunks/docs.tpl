<section id="docs">
  <div class="container my-5">
    <h2>Подготовим документы для возмещения</h2>
    <div class="docs_intro pb-3">
      {'tv.docs_intro' | resource}
    </div>
    <div class="row">
      {set $rows = json_decode('tv.docs_items' | resource , true)}
      {foreach $rows as $row}
      <div class="col-lg-4 order-lg-{$row.MIGX_id}">
        <h3 class="docs_item_title">{$row.title}</h3>
      </div>
      <div class="col-lg-4 mb-5 order-lg-5">
        <div class="docs_item p-3">
            <p class="ml-1">{$row.text}</p>
        </div>
      </div>
      {/foreach}
    </div>
    <div class="docs_footer text-center">
      {'tv.docs_footer' | resource}
    </div>
  </div>
</section>
