<div class="mobile_menu">
	<div id="dl-menu" class="dl-menuwrapper">
		{$modx->runSnippet('pdoMenu', [
			'startId' => '0',
			'level' => '2',
			'firstClass' => 0,
			'lastClass' => 0,
			'tplOuter' => '@INLINE <ul class="dl-menu dl-menuopen">{$wrapper}</ul>',
			'tplParentRow' => '@INLINE
			<li class="{$classnames} submenu_wrapp">
				<a href="{$link}" {$attributes}>{$menutitle}<b class="caret"></b></a>
				<div class="link_submenu"><i class="fas fa-angle-right"></i></div>{$wrapper}
			</li>',
			'tplInner' => '@INLINE <ul class="dl-submenu">{$wrapper}</ul>'

		])}
	</div>
</div>
