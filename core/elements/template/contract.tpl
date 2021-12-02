{extends 'file:template/index.tpl'} {block 'content'}
<div class="intro_wrapper mb-4" >
  <div class="container p-relative">
    <div class="intro_back"></div>
    <div class="row justify-content-between align-items-center">
      <div class="col-md-12 py-3 my-2 order-2 order-md-1" id="contract_intro">
        {if $.get['uuid']?}
        {var $search = $.get['uuid'] | prContractsGet}
          {if $search.result == 'OK'}
          <h1 class="h2">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]} №{$search.contract.number}</h1>
          <div class="home_intro_content">
            <p>{$_modx->resource.content}</p>
          </div>
          {else}
          <h1 class="h2">{$search.message}</h1>
          <div class="home_intro_content">
            <p>вы можете отправить нам заявку или позвонить по телефону</p>
          </div>
          {/if}
        {else}
        <h1 class="h2">Нет договора для редактирования</h1>
        <div class="home_intro_content">
          <p>скорее всего вы используете неправильную ссылку, вы можете отправить нам заявку или позвонить по телефону</p>
        </div>
        {/if}

      </div>
    </div>
  </div>
</div>


    <div class="contract" id="contract_form">
        <div class="container p-relative">
          <div class="row justify-content-between align-items-center">
              <div class="col-md-12 py-3 my-2 order-2 order-md-1">
                {if $search.result == 'OK'}
                {$_modx->runSnippet('!AjaxForm', [
                  'contract_id' => $search.contract.id,
                  'client_id' => $search.contract.client_id,
                  'deal_id' => $search.contract.deal_id,
                  'payer_id' => $search.contract.payer_id,
                  'form' => '@FILE  chunks/contract/form.tpl',
                  'snippet' => 'ContractValidate',
                  'validationErrorMessage' => 'В форме содержатся ошибки!',
                  'frontend_css' => ''
                ])}
                {else}

                {/if}

              </div>
          </div>
        </div>
    </div>

    {include 'file:chunks/additional/have_questions.tpl'}
{/block}
