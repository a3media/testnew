<h2 class="text-center">Как мы работаем</h2>
<div class="usWork_cont row justify-content-center py-3">
    {set $rows = json_decode(1 | resource: 'points', true)}
  {foreach $rows as $row}
  <div class="col-xl-5 col-md-6">
    <div class="card shadow my-3">
      <div class="how_work_item_inner">
        <div class="row">
          <img data-src="/assets/images/{$row.image}" alt="" class="how_work_image">
          <div class="col-3">
              <div class="how_work_number">{$row.number}</div>
          </div>
          <div class="col-9">
              <h4 class="mb-3">{$row.name}</h4>
              <p>{$row.description}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  {/foreach}
</div>
