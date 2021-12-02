<meta charset="{$_modx->config.modx_charset}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="A3media">
<meta name="description" content="{$_modx->resource.description}">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="theme-color" content="#{$_modx->config.blog_color}">
<base href="{$_modx->config.base_url}"/>
<title>{'!pdoTitle' | snippet : ['limit' => '0' ]} | {$_modx->config.site_name}</title>
{include 'file:blog/chunks/_style.tpl'}
<meta property="og:type" content="website">
<meta property="og:site_name" content="{$_modx->config.site_name | htmlent}">
<meta property="og:title" content="{'!pdoTitle' | snippet : [ 'limit' => '1']}">
<meta property="og:description" content="{$_modx->resource.description} 1">
<meta property="og:url" content="{$_modx->config.site_url}{$_modx->makeUrl($_modx->resource.id)}">
<meta property="og:locale" content="ru_RU">
<meta property="og:image" content="{$_modx->resource.image != '' ? '{$_modx->resource.image | phpthumbon : "w=968&h=504&zc=1&q=75"}' : '{$_modx->config.site_image_social | phpthumbon : "w=968&h=504&zc=1&q=75"}'}">
<link rel="apple-touch-icon" href="{$_modx->config.carp_icon | phpthumbon : "w=180&h=180&zc=1&q=75"}" sizes="180x180">
<link rel="icon" href="{$_modx->config.carp_icon | phpthumbon : "w=32&h=32&zc=1&q=75"}" sizes="32x32" type="image/png">
<link rel="icon" href="{$_modx->config.carp_icon | phpthumbon : "w=16&h=16&zc=1&q=75"}" sizes="16x16" type="image/png">
