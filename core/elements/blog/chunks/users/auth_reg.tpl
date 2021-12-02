<div>
    <div class="row justify-content-center">
        <p>Поля, отмеченные (<span class="text-danger">*</span>) - обязательны к заполнению!</p>
    </div>
[[!Register?
    &submitVar=`registerbtn`
    &activationEmailTpl=`reg_mailTpl`
    &activationEmailSubject=`Спасибо за регистрацию!`
    &submittedResourceId=`37`
    &activationResourceId=`38`
    &usergroups=`3`
]]
<div class="register">
    <div class="registerMessage">[[+error.message]]</div>
    <form class="form" action="[[~[[*id]]]]#nav-reg" method="post">
    <input type="hidden" name="nospam:blank" value="" />
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="form-group">
                <label for="username">Логин:<span class="text-danger">*</span></label>
                <div class="auth-input">
                   <input type="text" name="username:required:minLength=6" id="username" class="form-control" placeholder="Логин" value="[[+username]]" required />
                   <small class="form-text text-muted">Укажите логин для входа на сайт</small>
                   <span class="error">[[+error.username]]</span>
                </div>
            </div>
                <div class="form-group">
                <label for="name">Ваше имя:</label>
                <div class="auth-input">
                    <input type="text" name="fullname" id="fullname" class="form-control" placeholder="Имя" value="[[+fullname]]" />
                    <small class="form-text text-muted">Ваше имя или как к Вам обращаться</small>
                    <span class="error">[[+error.fullname]]</span>
                </div>
            </div>

            <div class="form-group">
                <label for="email">Email:<span class="text-danger">*</span></label>
                <div class="auth-input">
                    <input type="email" name="email:email" id="email" class="form-control" placeholder="E-mail" value="[[+email]]" required />
                    <small class="form-text text-muted">На указанный email придёт письмо со ссылкой для активации</small>
                    <span class="error">[[+error.email]]</span>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="password">Пароль:<span class="text-danger">*</span></label>
                <div class="auth-input">
                    <input type="password" name="password:required:minLength=6" id="password" class="form-control" placeholder="Пароль" value="[[+password]]" required />
                    <small class="form-text text-muted">Введите пароль. Не менее 6 символов</small>
                    <span class="error">[[+error.password]]</span>
                </div>
            </div>
            <div class="form-group">
                <label for="password_confirm">Повторить пароль:<span class="text-danger">*</span></label>
                <div class="auth-input">
                    <input type="password" name="password_confirm:password_confirm=`password`" id="password_confirm" class="form-control" placeholder="Повторите пароль" value="[[+password_confirm]]#nav-reg" />
                    <small class="form-text text-muted">Повторите ввод пароля</small>
                    <span class="error">[[+error.password_confirm]]</span>
                </div>
            </div>
        </div>

    </div>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <p>Регистрируясь, вы принимаете условия <span><a href="[[~45]]">пользовательского соглашения</a></span> и даете согласие на обработку своих персональных данных на условиях и для целей, определенных в <span><a href="[[~46]]">политике в отношении обработки персональных данных</a></span>.</p>
<div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck" name="check:required:check" >
      <label class="form-check-label" for="gridCheck">
        Согласен(на)
      </label>
    </div>
  </div>
        </div>

        </div>
    <div class="form-group row justify-content-center login-button-block">
        <div class="col-md-8">
            <input type="submit" class="btn btn-primary" name="registerbtn" value="Зарегистрироваться" />
        </div>
    </div>

    </form>
    </div>
</div>
