<div class="container my-5">
  <h2 class="text-center">Стоимость {'longtitle' | resource | replace : "Грузоперевозки" : "грузоперевозок"}</h2>
  <div class="table-responsive my-4">
    <table id="priceTable" class="table table-striped table-bordered" style="width:100%">
      <thead>
        <tr>
          <th scope="col">Из города</th>
          <th scope="col align-items-center">
            <div class="row align-items-center">
              <div class="d-none d-lg-flex col-6 px-2">
                <picture>
                    <source data-srcset="{'/img/15t_mini.jpg' | phpthumbon : '&q=75&f=webp'}" type="image/webp">
                    <img data-src="{'/img/15t_mini.jpg' | phpthumbon : '&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 1,5т)" />
                </picture>
              </div>
              <div class="col-12 col-lg-6 pl-lg-0 pr-2">
                1,5т<br>10-18 м<sup>3</sup>
              </div>
            </div>
          </th>
          <th scope="col">
            <div class="row align-items-center">
              <div class="d-none d-lg-flex col-6 px-2">
                <picture>
                    <source data-srcset="{'/img/3t_mini.jpg' | phpthumbon : '&q=75&f=webp'}" type="image/webp">
                    <img data-src="{'/img/3t_mini.jpg' | phpthumbon : '&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 3т)" />
                </picture>
              </div>
              <div class="col-12 col-lg-6 pl-lg-0 pr-2">
                3т<br>20-25 м<sup>3</sup>
              </div>
            </div>
          </th>
          <th scope="col">
            <div class="row align-items-center">
              <div class="d-none d-lg-flex col-6 px-2">
                <picture>
                    <source data-srcset="{'/img/5t_mini.jpg' | phpthumbon : '&q=75&f=webp'}" type="image/webp">
                    <img data-src="{'/img/5t_mini.jpg' | phpthumbon : '&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 5т)" />
                </picture>
              </div>
              <div class="col-12 col-lg-6 pl-lg-0 pr-2">
                5т<br>35-45 м<sup>3</sup>
              </div>
            </div>
          </th>
          <th scope="col">
            <div class="row align-items-center">
              <div class="d-none d-lg-flex col-6 px-2">
                <picture>
                    <source data-srcset="{'/img/10t_mini.jpg' | phpthumbon : '&q=75&f=webp'}" type="image/webp">
                    <img data-src="{'/img/10t_mini.jpg' | phpthumbon : '&q=75'}" class="lazyload" alt="Форд, газель (Грузоподъемность до 10т)" />
                </picture>
              </div>
              <div class="col-12 col-lg-6 pl-lg-0 pr-2">
                10т<br>
                  35-60 м<sup>3</sup>
              </div>
            </div>
          </th>
          <th scope="col">
            <div class="row align-items-center">
              <div class="d-none d-lg-flex col-6 px-2">
                <picture>
                    <source data-srcset="{'/img/dog_mini.jpg' | phpthumbon : '&q=75&f=webp'}" type="image/webp">
                    <img data-src="{'/img/dog_mini.jpg' | phpthumbon : '&q=75'}" class="lazyload" alt="Догруз" />
                </picture>
              </div>
              <div class="col-12 col-lg-6 pl-lg-0 pr-2">
                Догруз
              </div>
            </div>
          </th>
        </tr>
      </thead>
      <tbody style="height:400px;overflow-y:scroll">
        {var $cities = 'tv.cities_in_region' | resource | split : ','}
        {foreach $cities as $city}
          {if $city | resource : 'published'}
          <tr>
            <th scope="row" class="test1"><a href="/russia/{$city | resource : 'alias'}/">{$city | resource : 'pagetitle'}</a></th>
            {var $price = $city | minPrices_from_city}
            <td>от {$price.price_1_5t | number : 0 : '.' : ' '} руб.</td>
            <td>от {$price.price_3t | number : 0 : '.' : ' '} руб.</td>
            <td>от {$price.price_5t | number : 0 : '.' : ' '} руб.</td>
            <td>от {$price.price_10t | number : 0 : '.' : ' '} руб.</td>
            <td>от {$price.price_dogruz | number : 0 : '.' : ' '} руб.</td>
          </tr>
          {/if}
        {/foreach}
      </tbody>
    </table>
  </div>

</div>
