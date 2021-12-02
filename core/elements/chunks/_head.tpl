<meta charset="{$_modx->config.modx_charset}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="prtrans.ru">
<meta name="description" content="{'description' | resource | jevix}">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
{$_modx->config.pr_yandex}
<meta name="google-site-verification" content="-PbupINkE7o-9_EMHz6kbDcsQkOZ4lOgNgxU2t3hfRw" />
<meta name="theme-color" content="#{$_modx->config.pr_color}">
<base href="{$_modx->config.base_url}"/>
{if 'seoPro.keywords' | placeholder}<meta name="keywords" content="{'seoPro.keywords' | placeholder}">{/if}
<title>{'!pdoTitle' | snippet : ['limit' => '0' ]} | {$_modx->config.site_name}</title>
{include 'file:chunks/_style.tpl'}
<meta name="yandex-verification" content="b581548be0de938c" />
<meta property="og:type" content="website">
<meta property="og:site_name" content="{$_modx->config.site_name | htmlent}">
<meta property="og:title" content="{'!pdoTitle' | snippet : [ 'limit' => '1'] | jevix}">
<meta property="og:description" content="{$_modx->resource.description}">
<meta property="og:url" content="{$_modx->config.site_url}{$_modx->makeUrl($_modx->resource.id)}">
<meta property="og:locale" content="ru_RU">
<meta property="og:image" content="{$_modx->resource.image != '' ? '{$_modx->resource.image | phpthumbon : "w=968&h=504&zc=0&q=75"}' : '{$_modx->config.pr_site_image | phpthumbon : "w=968&h=504&zc=0&q=75"}'}">
<meta property="og:image:width" content="968">
<meta property="og:image:height" content="504">
<link rel="apple-touch-icon" href="{$_modx->config.pr_icon | phpthumbon : "w=180&h=180&zc=1&q=75"}" sizes="180x180">
<link rel="icon" href="{$_modx->config.pr_icon | phpthumbon : "w=32&h=32&zc=1&q=75"}" sizes="32x32" type="image/png">
<link rel="icon" href="{$_modx->config.pr_icon | phpthumbon : "w=16&h=16&zc=1&q=75"}" sizes="16x16" type="image/png">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600|Play:400,700&display=swap&subset=cyrillic" rel="stylesheet">
