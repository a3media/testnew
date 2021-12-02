<div class="mobile_menu bg-dark d-lg-none navbar p-0 fixed-top">
  <div class="st-trigger-effects">
    <button data-effect="st-effect-3" class="btn btn-link "><i class="fas fa-bars"></i></button>
  </div>
    {if $_modx->user.id > 0}
      <a href="{'3192'| url}" class="loginTop"><i class="fas fa-user-circle"></i></a>
    {else}
      <a href="{'3192'| url}" class="loginTop"><i class="fas fa-key"></i></a>
    {/if}
</div>
