<meta charset="{$_modx->config.modx_charset}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="prtrans.ru">
<meta name="description" content="{$_modx->resource.description}">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="theme-color" content="#{$_modx->config.pr_color}">
<base href="https://pereezdy.prtrans.ru"/>
<title>{'!pdoTitle' | snippet : ['limit' => '0' ]} | {$_modx->config.site_name}</title>
{include 'file:landing/chunks/_styles.tpl'}
<meta property="og:type" content="website">
<meta property="og:site_name" content="{$_modx->config.site_name | htmlent}">
<meta property="og:title" content="{'!pdoTitle' | snippet : [ 'limit' => '1']}">
<meta property="og:description" content=" {$_modx->resource.description}">
<meta property="og:url" content="{$_modx->config.site_url}{$_modx->makeUrl($_modx->resource.id)}">
<meta property="og:locale" content="ru_RU">
<meta property="og:image" content="{$_modx->resource.image != '' ? '{$_modx->resource.image | phpthumbon : "w=968&h=504&zc=1&q=75"}' : '{$_modx->config.pr_site_image | phpthumbon : "w=968&h=504&zc=1&q=75"}'}">
<link rel="apple-touch-icon" href="{$_modx->config.pr_icon | phpthumbon : "w=180&h=180&zc=1&q=75"}" sizes="180x180">
<link rel="icon" href="{$_modx->config.pr_icon | phpthumbon : "w=32&h=32&zc=1&q=75"}" sizes="32x32" type="image/png">
<link rel="icon" href="{$_modx->config.pr_icon | phpthumbon : "w=16&h=16&zc=1&q=75"}" sizes="16x16" type="image/png">
<meta name="yandex-verification" content="f10eabb5f0250c87" />
<style media="screen">
  .lazy-hidden { opacity: 0;}.lazy-loaded { -webkit-transition: opacity 0.3s;    -moz-transition: opacity 0.3s;    -ms-transition: opacity 0.3s;    -o-transition: opacity 0.3s;    transition: opacity 0.3s;    opacity: 1;}
</style>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600|Play:400,700&display=swap&subset=cyrillic" rel="stylesheet">
