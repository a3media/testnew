<?xml version="1.0" encoding="UTF-8"?>
  <sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <sitemap>
      <loc>{$_modx->config.site_url}sitemapbase.xml</loc>
    </sitemap>
    {'!prCitiesSitemapUrl' | snippet: [
    'tpl' => '@FILE chunks/sitemap_pages_item.tpl'
    ]}
  </sitemapindex>
