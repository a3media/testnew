<div class="nav nav-pills login-reg justify-content-center" id="nav-tab" role="tablist">
    <a class="nav-item nav-link active" id="nav-login-tab" data-toggle="tab" href="#nav-login" role="tab" aria-controls="nav-login" aria-selected="true">Авторизация</a>
    <a class="nav-item nav-link" id="nav-reg-tab" data-toggle="tab" href="#nav-reg" role="tab" aria-controls="nav-reg" aria-selected="false">Регистрация</a>
</div>
</nav>
<div class="tab-content" id="nav-tabContent">
    <div class="tab-pane fade show active" id="nav-login" role="tabpanel" aria-labelledby="nav-login-tab">{include 'file:blog/chunks/users/auth_login.tpl'}</div>
    <div class="tab-pane fade" id="nav-reg" role="tabpanel" aria-labelledby="nav-reg-tab">{include 'file:blog/chunks/users/auth_reg.tpl'}</div>
</div>
