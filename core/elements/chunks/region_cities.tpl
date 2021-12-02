{set $result = $_modx->runSnippet('!pdoResources', [
	'parents' => $_modx->resource.id
])}
{if $result | length > 0}
  <div class="container py-5">
    <h2 class="text-center">Выберете город</h2>
    <div class="row justify-content-center">
      <div class="col-lg-10">
        <div class="row pt-4 justify-content-center">
          {'!pdoResources' | snippet : [
              'parents' => $_modx->resource.id,
              'depth' => 0'',
              'useWeblinkUrl' => '1',
              'scheme' => 'uri',
              'tpl' => '@FILE chunks/region_citiesTpl.tpl',
              'select' => 'pagetitle,id,introtext',
              'includeTVs' => 'image'
          ]}
        </div>
      </div>
    </div>
  </div>
{/if}
