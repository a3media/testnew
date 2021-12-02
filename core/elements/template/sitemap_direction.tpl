<?xml version="1.0" encoding="{'modx_charset' | option}"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  {if $.get['page']?}
  {'!prCitiesSitemap' | snippet: [
  'page' => $.get['page'],
  'tpl' => '@FILE chunks/sitemap_direction.tpl'
  ]}
  {else}
  {/if}
</urlset>
