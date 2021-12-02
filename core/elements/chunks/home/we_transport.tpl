<div class="home_we_tr_wrapper bg-light pt-5 pb-4">
  <h2 class="text-center pb-4">Мы перевозим</h2>
  <div class="container">
    <div class="home_we_tr">
      {set $rows = json_decode(195 | resource : 'we_transport', true)}
      {foreach $rows as $row}
      <div class="home_we_tr_block">
        <div class="home_we_tr_block_title pb-2">{$row.title}</div>
        <div class="home_we_tr_block_content pb-3">
          {$row.text}
        </div>
      </div>
      {/foreach}
    </div>
  </div>
</div>
