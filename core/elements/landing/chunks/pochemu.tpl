<div class="container" id="pochemu">
  <h2 class="mb-5">Почему выбирают нас?</h2>
  {set $rows = json_decode('tv.pochemu' | resource , true)}
  <div class="py-5">
    {foreach $rows as $key => $row}
      <div class="pochemu_item row mb-5">
        <div class="col-2 col-lg-1 offset-lg-1 text-center pr-0">
          <svg class="big_number_icon"><use xlink:href="/img/sprite.svg#big_number_{$key+1}"></use></svg>
        </div>
        <div class="col-10 col-lg-9">
          <h3 class="pochemu_item_title">{$row.title}</h3>
        </div>
        <div class="col-lg-9 offset-lg-2 my-3">
          <p class="ml-1">{$row.text}</p>
        </div>
      </div>
    {/foreach}
  </div>
</div>
