<div class="avtopark py-5" id="avtopark">
  <div class="container">
    <h2>Наш автопарк</h2>
    <div class="row pb-4">
      {set $rows = json_decode('tv.avtopark' | resource , true)}
      {foreach $rows as $row}
      <div class="col-md-6">
        <h3>{$row.title}</h3>
         <div class="avtopark_item row mb-4">
           <div class="col-7">
             {var $item_image = '/assets/images/' ~ $row.image }
             <picture>
                 <source srcset="{$item_image | phpthumbon : 'w=302&h=200&zc=0&q=75&f=webp'}" type="image/webp">
                 <img src="#" data-src="{$item_image | phpthumbon : 'w=302&h=200&zc=0&q=75'}" alt="{$row.title}" />
             </picture>
           </div>
           <div class="col-5 pl-0 pl-md-3 py-lg-5 avtopark_item_info">
             <p><strong>Высота:</strong> {$row.height}</p>
             <p><strong>Ширина:</strong> {$row.width}</p>
             <p><strong>Длинна:</strong> {$row.length}</p>
             <p><strong>Объем:</strong> {$row.size}</p>
           </div>
           <div class="col-12">
             <div class="avtopark_item_text ml-md-5 p-3">
               <h4 class="m-0">Вмещает:</h4>
               <p>{$row.text}</p>
               <div class="text-right">
                 <button class="btn btn-primary modal_ajax_btn" type="button" data-whatever="{$row.title}">Заказать</button>
               </div>
             </div>
           </div>
         </div>
      </div>
      {/foreach}
    </div>
    <div class="dogruz mb-5 pb-3">
      <h2 class="text-center">Цена целого автомобиля слишком высока?</h2>
      <div class="row align-items-center">
        <div class="col-8 col-lg-7 pr-0">
          <div class="dogruz_text">
            {'tv.dogruz_info' | resource}
          </div>
        </div>
        <div class="col-4 p-0 px-md-3 col-lg-5">
          <div class="dogruz_image">
            <picture>
                <source srcset="{'/assets/landing/img/dogruz.jpg' | phpthumbon : '&q=75&f=webp'}" type="image/webp">
                <img data-src="/assets/landing/img/dogruz.jpg" alt="Перевозка догрузом" />
            </picture>
          </div>
        </div>
        <div class="col-lg-7">
          <div class="text-center py-3">
            <button class="btn btn-primary  modal_ajax_btn" type="button" data-modaltext="Жми отправить" data-whatever="Узнать подробности о перевозках догрузом">Узнать подробности</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
