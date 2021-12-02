{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
  <div class="row">
    <div class="col-md-6">
      <h1 style="border-bottom: none;font-size: 7rem;">Вы авторизовались как </h1>
    </div>
    <div class="col-md-6">
      <a href="#" onclick="history.back();return false;" class="btn btn-primary">ОК</a>
    </div>
  </div>
</div>
{/block}
