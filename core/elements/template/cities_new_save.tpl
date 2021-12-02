{extends 'file:template/index.tpl'}
{block 'content'}
<div class="container">
  <h1 class="mb-4">{'longtitle' | resource}</h1>
  <ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
      <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Города</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Регионы</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Направления</a>
    </li>
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
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
    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
      <nav>
        <div class="nav nav-tabs" id="nav-tab2" role="tablist">
          {'pdoResources' | snippet: [
          'parents' => 590,
          'resources' => '-1036',
          'depth' => 0,
          'limit' => '1000',
          'sortby' => 'pagetitle',
          'sortdir' => 'ASC',
          'tplFirst' => '@INLINE
          <a class="nav-item nav-link active" id="#nav-tab1{$id}" data-toggle="tab" href="#nav1{$id}" role="tab" aria-controls="nav1{$id}" aria-selected="true">{$pagetitle}</a>
          ',
          'tpl' => '@INLINE
          <a class="nav-item nav-link" id="#nav-tab1{$id}" data-toggle="tab" href="#nav1{$id}" role="tab" aria-controls="nav1{$id}" aria-selected="false">{$pagetitle}</a>
          '
          ]}
        </div>
      </nav>
      <div class="tab-content" id="nav-tabContent2">
        {'pdoResources' | snippet: [
        'parents' => 590,
        'depth' => 0,
        'limit' => '1000',
        'sortby' => 'pagetitle',
        'sortdir' => 'ASC',
        'tpl' => '@FILE chunks/city/way_bukva.tpl',
        'tplFirst' => '@FILE chunks/city/way_bukva_active.tpl',
        'fastMode' => 1,
        ]}
      </div>
    </div>
  </div>
</div>

{/block}
