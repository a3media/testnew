{extends 'file:template/index.tpl'}
{block 'content'}
{var $adress_url = $.get.q | split : '-' }
<div class="container">
  <h1 class="mb-4">{'longtitle' | resource}</h1>
  <ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
      <a class="nav-link {if $adress_url[1]}{else}active{/if}" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" {if $adress_url[1]}aria-selected="false"{else}aria-selected="true"{/if}>Города</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Регионы</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link {if $adress_url[1]}active{/if}" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" {if $adress_url[1]}aria-selected="true"{else}aria-selected="false"{/if}>Направления</a>
    </li>
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade {if $adress_url[1]}{else}show active{/if}" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
      <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist">
          {'pdoResources' | snippet: [
          'parents' => 590,
          'resources' => '-1036',
          'depth' => 0,
          'limit' => '1000',
          'sortby' => 'pagetitle',
          'sortdir' => 'ASC',
          'tplFirst' => '@INLINE <a class="nav-item nav-link active" id="#nav-tab{$id}" data-toggle="tab" href="#nav{$id}" role="tab" aria-controls="nav{$id}" aria-selected="true">{$pagetitle}</a>',
          'tpl' => '@INLINE <a class="nav-item nav-link" id="#nav-tab{$id}" data-toggle="tab" href="#nav{$id}" role="tab" aria-controls="nav{$id}" aria-selected="false">{$pagetitle}</a>'
          ]}
        </div>
      </nav>
      <div class="tab-content" id="nav-tabContent">
        {'pdoResources' | snippet: [
        'parents' => 590,
        'depth' => 0,
        'limit' => '1000',
        'sortby' => 'pagetitle',
        'sortdir' => 'ASC',
        'tpl' => '@FILE chunks/city/city_bukva.tpl',
        'tplFirst' => '@FILE chunks/city/city_bukva_active.tpl'
        ]}
      </div>
    </div>
    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
      <nav>
        <div class="nav nav-tabs" id="nav-tab1" role="tablist">
          {'pdoResources' | snippet: [
          'parents' => 1036,
          'depth' => 0,
          'limit' => '1000',
          'sortby' => 'pagetitle',
          'sortdir' => 'ASC',
          'tplFirst' => '@INLINE <a class="nav-item nav-link active" id="#nav-tab{$id}" data-toggle="tab" href="#nav{$id}" role="tab" aria-controls="nav{$id}" aria-selected="true">{$pagetitle}</a>',
          'tpl' => '@INLINE <a class="nav-item nav-link" id="#nav-tab{$id}" data-toggle="tab" href="#nav{$id}" role="tab" aria-controls="nav{$id}" aria-selected="false">{$pagetitle}</a>'
          ]}
        </div>
      </nav>
      <div class="tab-content" id="nav-tabContent1">
        {'pdoResources' | snippet: [
        'parents' => 1036,
        'depth' => 0,
        'limit' => '1000',
        'sortby' => 'pagetitle',
        'sortdir' => 'ASC',
        'tpl' => '@FILE chunks/city/city_bukva.tpl',
        'tplFirst' => '@FILE chunks/city/city_bukva_active.tpl'
        ]}
      </div>
    </div>
    <div class="tab-pane fade {if $adress_url[1]}show active{/if}" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
      <nav>
        {if $adress_url[1]}{var $bukva = $adress_url[1]}{else}{var $bukva = 'a'}{/if}
        <div class="nav nav-tabs" id="nav-tab2" role="tablist">
          {'pdoResources' | snippet: [
          'parents' => 590,
          'resources' => '-1036',
          'bukva' => $bukva,
          'depth' => 0,
          'limit' => '1000',
          'sortby' => 'pagetitle',
          'sortdir' => 'ASC',
          'tpl' => '@INLINE
          <a class="nav-item nav-link {if $bukva == $alias}active{/if}" id="#nav-tab1{$id}" href="russia/ways-{$alias}">{$pagetitle}</a>
          '
          ]}
        </div>
      </nav>
      <div class="tab-content" id="nav-tabContent2">
        <div class="tab-pane fade show active" id="nav1{$id}" role="tabpanel" aria-labelledby="nav-tab{$id}">
          <div id="pagination">
            <div class="cities_list rows p-3">
              {var $bukva_id = $bukva | bukva_id}
              {var $ids = 'pdoResources' | snippet: [
              'parents' => $bukva_id,
              'hideContainers' => 1,
              'depth' => 2,
              'limit' => '1000',
              'sortby' => 'pagetitle',
              'sortdir' => 'ASC',
              'outputSeparator' => ',',
              'tpl' => '@INLINE {$id}',
              ]}

              {var $pagination_id = '#pagination'}
              {'!pdoPage' | snippet: [
                'element' => 'prCitiesPages',
                'ajax' => 1,
                'ajaxMode' => 'default',
                'ajaxElemWrapper' => $pagination_id,
                'ajaxElemRows' => $pagination_id ~ ' .rows',
                'ajaxElemPagination' => $pagination_id ~ ' .pagination',
                'ajaxElemLink' => $pagination_id ~ ' .pagination a',
                'ids' => $ids,
                'limit' => '60',
                'tpl' => '@FILE chunks/city/direction.tpl' ,
              ]}
              </div>
              [[!+page.nav]]
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

{/block}
