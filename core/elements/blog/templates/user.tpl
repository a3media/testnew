{extends 'file:blog/templates/index1.tpl'}
{block 'content'}
  {if $_modx->user.id > 0}
    {include 'file:blog/chunks/users/lk.tpl'}
  {else}
    {include 'file:blog/chunks/users/auth.tpl'}
  {/if}
{/block}
