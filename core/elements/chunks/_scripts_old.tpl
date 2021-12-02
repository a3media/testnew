<script type="text/javascript" src="/assets/template/js/scripts.js?v=1.14"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/fh-3.1.7/r-2.2.5/sc-2.0.2/sp-1.1.1/datatables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#priceTable').DataTable( {
        "language": {
    "decimal":        "",
    "emptyTable":     "Нет данных для отображения",
    "info":           "_START_ - _END_ из _TOTAL_",
    "infoEmpty":      "0 записей",
    "infoFiltered":   "(поиск по _MAX_ направлениям)",
    "infoPostFix":    "",
    "thousands":      ",",
    "lengthMenu":     "Показать по _MENU_",
    "loadingRecords": "Загрузка...",
    "processing":     "Загрузка...",
    "search":         "Поиск:",
    "zeroRecords":    "Поиск не принес результатов",
    "paginate": {
        "first":      "В начало",
        "last":       "В конец",
        "next":       "»",
        "previous":   "«"
    },
    "aria": {
        "sortAscending":  ": activate to sort column ascending",
        "sortDescending": ": activate to sort column descending"
    }
}
    } );
} );
</script>

{$_modx->getPlaceholder('MinifyX.javascript')}
{if $_modx->resource.id == 7}<div class="d-none">  {'!AjaxForm'| snippet}</div>{/if}
{if $_modx->resource.template == 24 OR $_modx->resource.template == 1 OR $_modx->resource.template == 40 OR $_modx->resource.template == 18 OR $_modx->resource.template == 50}
{ignore}
<script type="text/javascript">
$(document).ready(function() {
  setTimeout(function() {
    $.getScript( "https://api-maps.yandex.ru/2.1?apikey=b5e8c115-2576-495e-a9ea-9e1afb48e4d3&lang=ru_RU", function() {
        ymaps.ready(init);
    });
  }, 4000);
function resizeBlock(){
   if(window.matchMedia("screen and (min-width: 768px)").matches) {
     setTimeout(function() {
     $('#map').show();
   }, 2000);
   } else{
     $('#map').hide();
   }
  }
  $(window).resize(function() {
     resizeBlock();
   });

 resizeBlock();
function init () {
    var suggestView1 = new ymaps.SuggestView('af_down');
    var suggestView2 = new ymaps.SuggestView('af_town');
    var multiRoute = new ymaps.multiRouter.MultiRoute({
        // Описание опорных точек мультимаршрута.
        referencePoints: [
          {/ignore}
            {if $_modx->resource.template == 24 OR $_modx->resource.template == 40 OR $_modx->resource.template == 18}
            "{$_modx->resource.pagetitle}",
            {else}
            "",
            {/if}
            {if $_modx->resource.template != 1 }
            "{$_modx->config.city}"
            {/if}
            {ignore}
        ],
        // Параметры маршрутизации.
        params: {
            // Ограничение на максимальное количество маршрутов, возвращаемое маршрутизатором.
            results: 2
        }
    }, {
      routeStrokeWidth: 2,
      wayPointStartIconFillColor: "#ead200",
        routeStrokeColor: "#000088",
        routeActiveStrokeWidth: 6,
        routeActiveStrokeColor: "#76B72A",
        // Автоматически устанавливать границы карты так, чтобы маршрут был виден целиком.
        boundsAutoApply: true
    });
    var myMap = new ymaps.Map('map', {
           center: [65, 85],
           zoom: 3,
           type: null,
           controls: []
         },{
           maxZoom: 6,
           suppressMapOpenBlock: true,
           buttonMaxWidth: 300
         });
         myMap.behaviors.disable('scrollZoom');
         myMap.behaviors.disable('drag');
         // Добавим заливку цветом.
         var pane = new ymaps.pane.StaticPane(myMap, {
             zIndex: 100, css: {
                 width: '100%', height: '100%', backgroundColor: '#f5f5f5'
             }
         });
         myMap.panes.append('white', pane);

         function mapGreen () {
           var objectManager = new ymaps.ObjectManager();
             // Загрузим регионы.
             ymaps.borders.load('RU', {
                   lang: 'ru',
                   quality: '0'
               })
               .then(function (geojson) {
                   var features = geojson.features.
                   map(function (feature) {
                       feature.id = feature.properties.iso3166;
                       feature.options = {
                           strokeColor: '#76B72A',
                           fillColor: '#cee2b7'
                       };
                       return feature;
                   });
                   var objectManager = new ymaps.ObjectManager();
                   objectManager.add(features);
                   myMap.geoObjects.add(objectManager);
               });
               ymaps.borders.load('BY', {
                     lang: 'en',
                     quality: '0'
                 })
                 .then(function (geojson) {
                     var features = geojson.features.
                     map(function (feature) {
                         feature.id = feature.properties.iso3166;
                         feature.options = {
                             strokeColor: '#76B72A',
                             fillColor: '#f1e793'
                         };
                         return feature;
                     });
                     var objectManager = new ymaps.ObjectManager();
                     objectManager.add(features);
                     myMap.geoObjects.add(objectManager);
                 });
               ymaps.borders.load('KZ', {
                     lang: 'en',
                     quality: '0'
                 })
                 .then(function (geojson) {
                     var features = geojson.features.
                     map(function (feature) {
                         feature.id = feature.properties.iso3166;
                         feature.options = {
                             strokeColor: '#76B72A',
                             fillColor: '#f1e793'
                         };
                         return feature;
                     });
                     var objectManager = new ymaps.ObjectManager();
                     objectManager.add(features);
                     myMap.geoObjects.add(objectManager);
                 });
       }
       mapGreen();
    var afdown = $('#af_down').val();
    var aftown = $('#af_town').val();
    // Добавляем мультимаршрут на карту.
    myMap.geoObjects.add(multiRoute);
    suggestView1.events.add('select', function (event) {
        setTimeout(function () {
           marshrut();
        }, 300);
        afdown = $('#af_down').val();
        aftown = $('#af_town').val();
    });
    suggestView2.events.add('select', function (event) {
        setTimeout(function () {
           marshrut();
        }, 300);
        afdown = $('#af_down').val();
        aftown = $('#af_town').val();
    });
   function marshrut () {
     myMap.geoObjects.removeAll();
     mapGreen();
     var multiRoute = new ymaps.multiRouter.MultiRoute({
        // Описание опорных точек мультимаршрута.
        referencePoints: [
           aftown,
            afdown
        ],
        zoomMargin: 5,
        // Параметры маршрутизации.
        params: {

            // Ограничение на максимальное количество маршрутов, возвращаемое маршрутизатором.
            results: 2
        }
    }, {
      routeStrokeWidth: 2,
      wayPointStartIconFillColor: "#ead200",
        routeStrokeColor: "#000088",
        routeActiveStrokeWidth: 6,
        routeActiveStrokeColor: "#76B72A",
        // Автоматически устанавливать границы карты так, чтобы маршрут был виден целиком.
        boundsAutoApply: true
    });

    myMap.geoObjects.add(multiRoute);
    };
}
});
</script>
{/ignore}
{/if}
