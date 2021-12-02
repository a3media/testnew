<meta charset="{$_modx->config.modx_charset}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="prtrans.ru">
<meta name="description" content="{$_modx->resource.description}">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="theme-color" content="#{$_modx->config.pr_color}">
<title>{'!pdoTitle' | snippet : ['limit' => '0' ]} | {$_modx->config.site_name}</title>

<link rel="stylesheet" href="/assets/landing/css/styles_landing.css" type="text/css">


<style media="screen">

/* cyrillic */
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: local('Open Sans Regular'), local('OpenSans-Regular'), url(https://fonts.gstatic.com/s/opensans/v17/mem8YaGs126MiZpBA-UFUZ0bbck.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* latin */
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: local('Open Sans Regular'), local('OpenSans-Regular'), url(https://fonts.gstatic.com/s/opensans/v17/mem8YaGs126MiZpBA-UFVZ0b.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/
/* cyrillic */
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 600;
  font-display: swap;
  src: local('Open Sans SemiBold'), local('OpenSans-SemiBold'), url(https://fonts.gstatic.com/s/opensans/v17/mem5YaGs126MiZpBA-UNirkOVuhpOqc.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}

/* latin */
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 600;
  font-display: swap;
  src: local('Open Sans SemiBold'), local('OpenSans-SemiBold'), url(https://fonts.gstatic.com/s/opensans/v17/mem5YaGs126MiZpBA-UNirkOUuhp.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic */
@font-face {
  font-family: 'Play';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: local('Play Regular'), local('Play-Regular'), url(https://fonts.gstatic.com/s/play/v11/6aez4K2oVqwIvtE2H68T.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* latin */
@font-face {
  font-family: 'Play';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: local('Play Regular'), local('Play-Regular'), url(https://fonts.gstatic.com/s/play/v11/6aez4K2oVqwIvtU2Hw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic */
@font-face {
  font-family: 'Play';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: local('Play Bold'), local('Play-Bold'), url(https://fonts.gstatic.com/s/play/v11/6ae84K2oVqwItm4TCpQy2knT.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* latin */
@font-face {
  font-family: 'Play';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: local('Play Bold'), local('Play-Bold'), url(https://fonts.gstatic.com/s/play/v11/6ae84K2oVqwItm4TCpAy2g.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>
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
