<nav class="st-menu st-effect-3" id="menu-3">
  <div class="mobile_menu">
    <div class="navbar navbar-expand-lg p-0" role="navigation">
            <div class="navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                  {$_modx->runSnippet('pdoMenu', [
                  	'startId' => 0,
                  	'level' => 2,
                    'tplParentRow' => '@INLINE
              			<li class="nav-item {$classnames} dropdown"> 	<a href="#" class="dropdown-toggle d-block py-3 px-3" data-toggle="dropdown" {$attributes}>{$menutitle} <img src="/img/menu_row.svg" alt="подробнее..."> </a>		<ul class="dropdown-menu pl-3">{$wrapper}</ul> </li>'
                  	'tplOuter' => '@INLINE {$wrapper}',
                    'tpl' => '@INLINE <li class="nav-item {$classnames} px-3"><a href="{$link}" class="nav-link py-3" {$attributes}>{$menutitle}</a>{$wrapper}</li>'
                  ])}
        		</ul>
        		</div>
        </div>
  </div>
</nav>
