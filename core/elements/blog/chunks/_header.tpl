<header class="bg-dark shadow w-100 fixed-top" style="z-index:999">
    <div class="container">
        <div class="row">

            <div class="col-md-8">
                  {include 'file:blog/chunks/navbar.tpl'}
                  {include 'file:blog/chunks/navbar_mobile.tpl'}
            </div>

            <div class="d-none d-md-block col-md-4 text-right">
              {if $_modx->user.id > 0}
                <a href="{'3192'| url}" class="loginTop"><i class="fas fa-user-circle"></i> {$_modx->user.fullname}</a>
              {else}
                <a href="{'3192'| url}" class="loginTop">Войти | Регистрация</a>
              {/if}
            </div>
        </div>
    </div>
</header>
