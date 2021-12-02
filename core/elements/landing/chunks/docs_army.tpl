<section id="docs">
  <div class="container my-5">
    <h2>Документы для возмещения затрат</h2>
      {set $rows = json_decode('tv.docs_items' | resource , true)}
      {foreach $rows as $row}
      <div class="row align-items-center my-5">
        <div class="col-4 col-lg-5 text-center px-0 px-lg-3">
          <div class="gruzchiki_image">
            <img src="/assets/images/{$row.image}" alt="Дом военного">
            </div>
        </div>
        <div class="col-8 col-lg-6">
          <div class="gruzchiki_text">
            {$row.text}
          </div>
        </div>
        <div class="col-lg-6 offset-lg-6 offset-md-4">
          <div class="text-center py-3">
            <button class="btn btn-primary" type="button" name="button" data-toggle="modal" data-target="#modal_request" data-whatever="Узнать подробности о документах ">Узнать подробности</button>
          </div>
        </div>
      </div>
      {/foreach}
  </div>
</section>
