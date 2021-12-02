<div class="navbar d-none d-lg-block navbar-expand-md navbar-dark" role="navigation">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </button>
    {if $_modx->user.id > 0}
      <a href="{'3192'| url}" class="navbar-brand d-md-none"><i class="fas fa-user-circle"></i> {$_modx->user.fullname}</a>
    {else}
      <a href="{'3192'| url}" class="navbar-brand d-md-none"><i class="fas fa-sign-in-alt"></i></a>
    {/if}
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          {$_modx->runSnippet('pdoMenu', [
            'startId' => '0',
            'level' => '2',
            'tplOuter' => '@INLINE {$wrapper}',
            'tplParentRow' => '@INLINE
          	<li class="{$classnames} dropdown">
              <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" {$attributes}>{$menutitle}<b class="caret"></b></a>
          	<ul class="dropdown-menu bg-dark">{$wrapper}</ul>
          	</li>',
            'tpl' => '@INLINE <li class="nav-item {$classnames}"><a href="{$link}"class="nav-link" {$attributes}>{$menutitle}</a>{$wrapper}</li>'

          ])}

    	</ul>
    </div>
</div>
