<div class="modal fade modal_ajax" id="modal_cities" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Выберете город, регион</h5>
      </div>
      <div class="modal-body">
        <ul class="nav nav-pills mb-3 justify-content-center" id="modal-pills-tab" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="modal-pills-home-tab" data-toggle="pill" href="#modal-pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Города</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="modal-pills-profile-tab" data-toggle="pill" href="#modal-pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Регионы</a>
          </li>
        </ul>
        <div class="tab-content" id="modal-pills-tabContent">
          <div class="tab-pane fade show active" id="modal-pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <nav>
              <div class="nav nav-tabs" id="nav-tab" role="tablist">
                {'pdoResources' | snippet: [
                'parents' => 590,
                'resources' => '-1036',
                'depth' => 0,
                'limit' => '1000',
                'sortby' => 'pagetitle',
                'sortdir' => 'ASC',
                'tplFirst' => '@INLINE <a class="nav-item nav-link active px-2" id="nav-tab{$id}" data-toggle="tab" href="#modal-nav{$id}" role="tab" aria-controls="modal-nav{$id}" aria-selected="true">{$pagetitle}</a>',
                'tpl' => '@INLINE <a class="nav-item nav-link px-2" id="nav-tab{$id}" data-toggle="tab" href="#modal-nav{$id}" role="tab" aria-controls="modal-nav{$id}" aria-selected="false">{$pagetitle}</a>'
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
              'tpl' => '@FILE chunks/city/city_bukva_modal.tpl',
              'tplFirst' => '@FILE chunks/city/city_bukva_active_modal.tpl'
              ]}
            </div>
          </div>
          <div class="tab-pane fade" id="modal-pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <nav>
              <div class="nav nav-tabs" id="nav-tab1" role="tablist">
                {'pdoResources' | snippet: [
                'parents' => 1036,
                'depth' => 0,
                'limit' => '1000',
                'sortby' => 'pagetitle',
                'sortdir' => 'ASC',
                'tplFirst' => '@INLINE <a class="nav-item nav-link px-2 active" id="nav-tab{$id}" data-toggle="tab" href="#modal-nav{$id}" role="tab" aria-controls="modal-nav{$id}" aria-selected="true">{$pagetitle}</a>',
                'tpl' => '@INLINE <a class="nav-item nav-link px-2" id="nav-tab{$id}" data-toggle="tab" href="#modal-nav{$id}" role="tab" aria-controls="modal-nav{$id}" aria-selected="false">{$pagetitle}</a>'
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
              'tpl' => '@FILE chunks/city/city_bukva_modal.tpl',
              'tplFirst' => '@FILE chunks/city/city_bukva_active_modal.tpl'
              ]}
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
