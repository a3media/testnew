{switch $_modx->resource.template}
{case 1,50}
{case 24,40,18}
<div class="bg-light">
  <div class="container">
    {$_modx->runSnippet('pdoCrumbs', [
      'showHome' => '1',
      'outputSeparator' => '',
      'tpl' => '@INLINE <li class="breadcrumb-item"><a href="{$link}">{$menutitle}</a></li>',
      'tplCurrent' => '@INLINE <li class="breadcrumb-item active" aria-current="page">{$menutitle}</li>'
    ])}
  </div>
</div>
{case 57,60}
<div class="bg-light">
  <div class="container">
    {$_modx->runSnippet('pdoCrumbs', [
      'showHidden' => '0',
      'showHome' => '1',
      'outputSeparator' => '',
      'tplHome' => '@INLINE <li class="breadcrumb-item"><a href="{$link}">{$menutitle}</a></li>',
      'tpl' => '@INLINE <li class="breadcrumb-item"><a href="{$link}">{$longtitle}</a></li>',
      'tplCurrent' => '@INLINE <li class="breadcrumb-item active" aria-current="page">{$menutitle}</li>'
    ])}
  </div>
</div>
{case 58}
<div class="bg-light">
  <div class="container">
    {$_modx->runSnippet('pdoCrumbs', [
      'exclude' => 'parent' | resource,
      'showHome' => '1',
      'outputSeparator' => '',
      'tplHome' => '@INLINE <li class="breadcrumb-item"><a href="{$link}">{$menutitle}</a></li>',
      'tpl' => '@INLINE <li class="breadcrumb-item"><a href="{$link}">{$longtitle}</a></li>',
      'tplCurrent' => '@INLINE <li class="breadcrumb-item active" aria-current="page">{$menutitle}</li>'
    ])}
  </div>
</div>
{case default}
<div class="bg-light mb-4">
  <div class="container">
    {$_modx->runSnippet('pdoCrumbs', [
      'showHome' => '1',
      'outputSeparator' => '',
      'tpl' => '@INLINE <li class="breadcrumb-item"><a href="{$link}">{$menutitle}</a></li>',
      'tplCurrent' => '@INLINE <li class="breadcrumb-item active" aria-current="page">{$menutitle}</li>'
    ])}
  </div>
</div>
{/switch}
