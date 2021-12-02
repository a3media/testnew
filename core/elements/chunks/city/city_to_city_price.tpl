<div class="container my-5">
  <h2 class="text-center mb-4">Стоимость грузоперевозок из {$from | morphy : 'родительный' } в {$to | morphy : 'винительный' | ucwords}</h2>
  {var $prices = 'tv.price' | resource | split : ';'}
  <div class="row align-items-center py-3 c_to_c_row">
    <div class="col-md-3 text-center py-2">
      <picture>
          <source data-srcset="{'/img/1.5t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75&f=webp'}" type="image/webp">
          <img data-src="{'/img/1.5t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 1,5т)" />
      </picture>
    </div>
    <div class="col-md-5">
      <p class="c_to_c_title"><b>Газель</b> (Грузоподъемность до 1,5т)</p>
      <div class="row">
        <div class="col-6 pr-1">
          <p class="mb-1"><b>Высота:</b> 1,8 м -2,2 м</p>
          <p class="mb-1"><b>Ширина:</b> 1,8 м - 2 м</p>

        </div>
        <div class="col-6 pl-1">
          <p class="mb-1"><b>Длинна:</b> 3 м - 4,2 м</p>
          <p class="mb-1"><b>Объем:</b> 10 м <sup>3</sup> - 18 м<sup>3</sup></p>
        </div>
      </div>
    </div>
    <div class="col-md-2 pl-lg-0 py-2">
      <div class="c_to_c_price"><span>{if $price_1_5t}{$price_1_5t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</span></div>
      {if $way}
      <div class="c_to_c_time">
        <span>
          <svg width="12" height="14" class="mr-2" viewBox="0 0 12 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 0H4V1.33333H8V0ZM5.33333 8.66667H6.66667V4.66667H5.33333V8.66667ZM10.6867 4.26L11.6333 3.31333C11.3467 2.97333 11.0333 2.65333 10.6933 2.37333L9.74667 3.32C8.71333 2.49333 7.41333 2 6 2C2.68667 2 0 4.68667 0 8C0 11.3133 2.68 14 6 14C9.32 14 12 11.3133 12 8C12 6.58667 11.5067 5.28667 10.6867 4.26ZM6 12.6667C3.42 12.6667 1.33333 10.58 1.33333 8C1.33333 5.42 3.42 3.33333 6 3.33333C8.58 3.33333 10.6667 5.42 10.6667 8C10.6667 10.58 8.58 12.6667 6 12.6667Z" fill="#5B5B5B"/></svg>

        </span>
      </div>
      {/if}
    </div>
    <div class="col-md-2 text-center">
      <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="Грузоперевозка из {$from} в {$to}, 1,5т">Заказать</button>
    </div>
  </div>
  <div class="row align-items-center py-3 c_to_c_row">
    <div class="col-md-3 text-center py-2">
      <picture>
          <source data-srcset="{'/img/3t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75&f=webp'}" type="image/webp">
          <img data-src="{'/img/3t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 3т)" />
      </picture>
    </div>
    <div class="col-md-5">
      <p class="c_to_c_title"><b>ЗИЛ (бычок), ГАЗ (валдай), Форд, Ивеко</b> (Грузоподъемность до 3т)</p>
      <div class="row">
        <div class="col-6 pr-1">
          <p class="mb-1"><b>Высота:</b> 2 м -2,4 м</p>
          <p class="mb-1"><b>Ширина:</b> 2 м - 2,2 м</p>

        </div>
        <div class="col-6 pl-1">
          <p class="mb-1"><b>Длинна:</b> 5 м - 5,5 м</p>
          <p class="mb-1"><b>Объем:</b> 20 м <sup>3</sup> - 26 м<sup>3</sup></p>
        </div>
      </div>
    </div>
    <div class="col-md-2 pl-lg-0 py-2">
      <div class="c_to_c_price"><span>{if $price_3t}{$price_3t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</span></div>
      {if $way}
      <div class="c_to_c_time">
        <span>
          <svg width="12" height="14" class="mr-2" viewBox="0 0 12 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 0H4V1.33333H8V0ZM5.33333 8.66667H6.66667V4.66667H5.33333V8.66667ZM10.6867 4.26L11.6333 3.31333C11.3467 2.97333 11.0333 2.65333 10.6933 2.37333L9.74667 3.32C8.71333 2.49333 7.41333 2 6 2C2.68667 2 0 4.68667 0 8C0 11.3133 2.68 14 6 14C9.32 14 12 11.3133 12 8C12 6.58667 11.5067 5.28667 10.6867 4.26ZM6 12.6667C3.42 12.6667 1.33333 10.58 1.33333 8C1.33333 5.42 3.42 3.33333 6 3.33333C8.58 3.33333 10.6667 5.42 10.6667 8C10.6667 10.58 8.58 12.6667 6 12.6667Z" fill="#5B5B5B"/></svg>

        </span>
      </div>
      {/if}
    </div>
    <div class="col-md-2 text-center">
      <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="Грузоперевозка из {$from} в {$to}, 3т">Заказать</button>
    </div>
  </div>
  <div class="row align-items-center py-3 c_to_c_row">
    <div class="col-md-3 text-center py-2">
      <picture>
          <source data-srcset="{'/img/5t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75&f=webp'}" type="image/webp">
          <img data-src="{'/img/5t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 5т)" />
      </picture>
    </div>
    <div class="col-md-5">
      <p class="c_to_c_title"><b>Мерседес, Маз, Ивеко, Газон NEXT</b> (Грузоподъемность до 5т)</p>
      <div class="row">
        <div class="col-6 pr-1">
          <p class="mb-1"><b>Высота:</b> 2,5 м</p>
          <p class="mb-1"><b>Ширина:</b> 2,45 м</p>

        </div>
        <div class="col-6 pl-1">
          <p class="mb-1"><b>Длинна:</b> 6 м - 7,5 м</p>
          <p class="mb-1"><b>Объем:</b> 35 м <sup>3</sup> - 45 м<sup>3</sup></p>
        </div>
      </div>
    </div>
    <div class="col-md-2 pl-lg-0 py-2">
      <div class="c_to_c_price"><span>{if $price_5t}{$price_5t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</span></div>
      {if $way}
      <div class="c_to_c_time">
        <span>
          <svg width="12" height="14" class="mr-2" viewBox="0 0 12 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 0H4V1.33333H8V0ZM5.33333 8.66667H6.66667V4.66667H5.33333V8.66667ZM10.6867 4.26L11.6333 3.31333C11.3467 2.97333 11.0333 2.65333 10.6933 2.37333L9.74667 3.32C8.71333 2.49333 7.41333 2 6 2C2.68667 2 0 4.68667 0 8C0 11.3133 2.68 14 6 14C9.32 14 12 11.3133 12 8C12 6.58667 11.5067 5.28667 10.6867 4.26ZM6 12.6667C3.42 12.6667 1.33333 10.58 1.33333 8C1.33333 5.42 3.42 3.33333 6 3.33333C8.58 3.33333 10.6667 5.42 10.6667 8C10.6667 10.58 8.58 12.6667 6 12.6667Z" fill="#5B5B5B"/></svg>

        </span>
      </div>
      {/if}
    </div>
    <div class="col-md-2 text-center">
      <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="Грузоперевозка из {$from} в {$to}, 5т">Заказать</button>
    </div>
  </div>
  <div class="row align-items-center py-3 c_to_c_row last mb-5">
    <div class="col-md-3 text-center py-2">
      <picture>
          <source data-srcset="{'/img/10t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75&f=webp'}" type="image/webp">
          <img data-src="{'/img/10t.jpg' | phpthumbon : 'w=200&h=130&zc=0&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 10т)" />
      </picture>
    </div>
    <div class="col-md-5">
      <p class="c_to_c_title"><b>Камаз, Вольво, Мерседес, Скания</b> (Грузоподъемность до 10т)</p>
      <div class="row">
        <div class="col-6 pr-1">
          <p class="mb-1"><b>Высота:</b> 2,5 м -2,6 м</p>
          <p class="mb-1"><b>Ширина:</b> 2,45 м</p>
        </div>
        <div class="col-6 pl-1">
          <p class="mb-1"><b>Длинна:</b> 6 м - 8 м</p>
          <p class="mb-1"><b>Объем:</b> 35 м <sup>3</sup> - 60 м<sup>3</sup></p>
        </div>
      </div>
    </div>
    <div class="col-md-2 pl-lg-0 py-2">
      <div class="c_to_c_price"><span>{if $price_10t}{$price_10t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</span></div>
      {if $way}
      <div class="c_to_c_time">
        <span>
          <svg width="12" height="14" class="mr-2" viewBox="0 0 12 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 0H4V1.33333H8V0ZM5.33333 8.66667H6.66667V4.66667H5.33333V8.66667ZM10.6867 4.26L11.6333 3.31333C11.3467 2.97333 11.0333 2.65333 10.6933 2.37333L9.74667 3.32C8.71333 2.49333 7.41333 2 6 2C2.68667 2 0 4.68667 0 8C0 11.3133 2.68 14 6 14C9.32 14 12 11.3133 12 8C12 6.58667 11.5067 5.28667 10.6867 4.26ZM6 12.6667C3.42 12.6667 1.33333 10.58 1.33333 8C1.33333 5.42 3.42 3.33333 6 3.33333C8.58 3.33333 10.6667 5.42 10.6667 8C10.6667 10.58 8.58 12.6667 6 12.6667Z" fill="#5B5B5B"/></svg>

        </span>
      </div>
      {/if}
    </div>
    <div class="col-md-2 text-center">
      <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="Грузоперевозка из {$from} в {$to}, 10т">Заказать</button>
    </div>
  </div>
  <div class="dogruz mb-4 pb-3">
    <h3 class="text-center">Цена целого автомобиля слишком высока?</h2>
    <div class="row align-items-center">
      <div class="col-8 col-lg-9 pr-0">
        <div class="dogruz_text">
          <p>Компания «ПраймТранс» предлагает компромиссное решение – перевозки догрузом.</p>
          <p>В одном автомобиле размещаются грузы нескольких наших клиентов с составлением максимально удобного маршрута дополнительных остановок на погрузку. В результате, доставка попутных грузов позволяет значительно сэкономить средства без потерь в сроках поездки!</p>
        </div>
        <div class="row align-items-center">
          <div class="col-md-6">
            <div class="c_to_c_minprice text-center py-3">
              <p class="m-0">От <span>{$price_dogruz | number : 0 : '.' : ' '}</span> руб.<br><span></span>  </p>
            </div>

          </div>
          <div class="col-md-6 text-center">
            <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="Грузоперевозка из {$from} в {$to}, догруз" >Узнать подробности</button>
          </div>
        </div>
      </div>
      <div class="col-4 p-0 px-md-3 col-lg-3">
        <div class="dogruz_image">
          <picture>
              <source data-srcset="{'/assets/landing/img/dogruz.jpg' | phpthumbon : 'w=253&h=185&zc=0&q=75&f=webp'}" type="image/webp">
              <img data-src="{'/assets/landing/img/dogruz.jpg' | phpthumbon : 'w=253&h=185&zc=0&q=75'}" class="lazyload" alt="Перевозка догрузом" />
          </picture>
        </div>
      </div>
    </div>
  </div>
</div>
