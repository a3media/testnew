{if $success == '1'}
<div class="alert alert-success" role="alert">  {'ha.profile_update_success' | lexicon} </div>
{/if}

{if $success == '0'}

<div class="alert alert-danger" role="alert"> {'ha.profile_update_error' | lexicon} [[+error.message]]</div>

{/if}
<form action="{$_modx->resource.id | url}" method="post" class="form-horizontal">

    <div class="row">
        <div class="col-md-5">

            <div class="form-group text-center">
                <div class="controls">
                  {if $photo}
                        <img src="{$photo | pThumb: "&w=40&h=40&zc=1&q=75"}" alt="{$username}">
                        {else}
                        <div class="display-1"><i class="fas fa-user"></i></div>
                  {/if}
                    <span class="help-inline">[[+error.photo]]</span>
                </div>
            </div>
            <div class="form-group">
                <label>Ссылка на изображение:</label>
                <div class="controls">
                    <input class="form-control[[+error.photo:notempty=` is-invalid`]]" type="text" name="username" value="[[+photo]]"/>
                    <span class="help-inline">[[+error.photo]]</span>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="form-group">
                    <label>[[%ha.username]]:</label>
                    <div class="controls">
                        <input class="form-control[[+error.username:notempty=` is-invalid`]]" type="text"  name="username" value="[[+username]]"/>
                        <span class="help-inline">[[+error.username]]</span>
                    </div>
                </div>

                <div class="form-group">
                    <label>[[%ha.fullname]]:</label>
                    <div class="controls">
                        <input class="form-control[[+error.fullname:notempty=` is-invalid`]]" type="text" name="fullname" value="[[+fullname]]"/>
                        <span class="help-inline">[[+error.fullname]]</span>
                    </div>
                </div>

                <div class="form-group">
                    <label>[[%ha.email]]:</label>
                    <div class="controls">
                        <input class="form-control[[+error.email:notempty=` is-invalid`]]" type="text" name="email" value="[[+email]]"/>
                        <span class="help-inline">[[+error.email]]</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label">Доступные социальные сети</label>
                    <div class="controls">
                        [[+providers]]
                    </div>
                </div>

                <input type="hidden" name="hauth_action" value="updateProfile"/>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">[[%ha.save_profile]]</button>
                    &nbsp;&nbsp;
                    <a href="[[+logout_url]]" class="btn btn-danger">[[%ha.logout]]</a>
                </div>
        </div>
    </div>


</form>
