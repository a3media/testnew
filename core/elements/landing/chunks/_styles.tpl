{'!MinifyX' | snippet : [
'cssSources' => '
/assets/template/css/bootstrap.css,
/assets/template/css/jquery.fancybox.css,
/assets/template/css/owl.carousel.css,
/assets/template/css/owl.theme.default.css,
/assets/landing/css/footer.css,
/assets/landing/css/sidebar.css,
/assets/landing/css/template.css,
/assets/landing/css/responsive.css
',
'minifyCss'=>'1',
]}
{$_modx->getPlaceholder('MinifyX.css')}
<link rel="stylesheet" href="/assets/template/css/suggestions.min.css">
<!--
<link rel="stylesheet" href="/assets/template/css/bootstrap.css">
<link rel="stylesheet" href="/assets/template/css/jquery.fancybox.css">
<link rel="stylesheet" href="/assets/template/css/owl.carousel.css">
<link rel="stylesheet" href="/assets/template/css/owl.theme.default.css">
<link rel="stylesheet" href="/assets/template/css/suggestions.min.css">
<link rel="stylesheet" href="/assets/landing/css/footer.css">
<link rel="stylesheet" href="/assets/landing/css/sidebar.css">
<link rel="stylesheet" href="/assets/landing/css/template.css">
<link rel="stylesheet" href="/assets/landing/css/responsive.css">
-->
