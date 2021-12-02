{extends 'file:landing/index.tpl'}
{block 'head'}
  {include 'file:landing/chunks/_head_test.tpl'}
{/block}
{block 'content'}
{include 'file:landing/chunks/main_intro.tpl'}

{include 'file:landing/chunks/avtopark.tpl'}
{include 'file:landing/chunks/pochemu.tpl'}
{include 'file:landing/chunks/how_work.tpl'}
{include 'file:landing/chunks/gruzchiki.tpl'}
{include 'file:landing/chunks/pereezdy1.tpl'}
{include 'file:landing/chunks/docs.tpl'}
{include 'file:landing/chunks/reviews.tpl'}
{include 'file:landing/chunks/info.tpl'}
{include 'file:landing/chunks/faq.tpl'}
{include 'file:landing/chunks/have_questions.tpl'}

{/block}
{block 'script'}
<script src="/assets/landing/test/js/jquery.min.js"></script>
{'!MinifyX' | snippet : [
'jsSources' => '
/assets/landing/test/js/bootstrap/index.js,
/assets/landing/test/js/bootstrap/util.js,
/assets/landing/test/js/bootstrap/collapse.js,
/assets/landing/test/js/bootstrap/carousel.js,
/assets/landing/test/js/bootstrap/modal.js,
/assets/landing/test/js/sidebar.js,
/assets/landing/test/js/jquery.lazyloadxt.js,
/assets/landing/test/js/owl.carousel.js,
/assets/landing/test/js/theme.js,
',
'minifyJs'=>'1',
]}
{$_modx->getPlaceholder('MinifyX.javascript')}
<script async src="/assets/landing/js/jquery.fancybox.min.js"></script>
{/block}
