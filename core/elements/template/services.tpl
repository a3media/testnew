{extends 'file:template/index.tpl'} {block 'content'}
<div class="container">
    <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
    <div class="intro_text">
      {$_modx->resource.content}
    </div>
</div>
    {include 'file:chunks/additional/for_company.tpl'}
    {include 'file:chunks/additional/for_person.tpl'}
    {include 'file:chunks/additional/dopuslugi.tpl'}
    {include 'file:chunks/city/how_work.tpl'}
    {include 'file:chunks/home/autopark.tpl'}
    {include 'file:chunks/additional/have_questions.tpl'}
{/block}
