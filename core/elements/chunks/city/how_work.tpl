<div class="" id="how_work">
  <div class="container">
    <h2>Как мы работаем</h2>
  </div>
  <div class="how_work_container">
    <div class="row how_work_roads">
      <div class="mobile_road"></div>
      <div class="col-6 p-0 road_left"></div>
      <div class="col-6 p-0 road_right"></div>
    </div>
    <div class="how_work_wrapper">
      <div class="container">
        <div class="main_road">
          <div class="row py-5 py-lg-0">
            {set $rows = json_decode(1 | resource : 'tv.work'  , true)}
            {foreach $rows as $key => $row}
            <div class="col-lg-4 my-lg-5">
              <div class="work_item row  mb-3 mx-0 {if $row.MIGX_id > 3} ml-lg-5 ml-lg-0 mb-lg-2{else}mr-lg-5 mr-lg-0 mt-lg-2{/if} p-3">
                <div class="col-2 p-0 text-center">
                  <svg class="number_icon"><use xlink:href="/img/sprite.svg#number_{$key+1}"></use></svg>
                </div>
                <div class="col-10 p-0">
                  <h3 class="work_item_title">{$row.title}</h3>
                  {$row.text}
                </div>
              </div>
            </div>
            {/foreach}
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
