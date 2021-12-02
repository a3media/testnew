<!DOCTYPE html>

<html>

<head>
{include 'file:blog/chunks/_head.tpl'}
</head>

<body>

  <div id="st-container" class="st-container">
  		<div class="st-pusher">

        {include 'file:blog/chunks/_sidebar.tpl'}

  			<div class="st-content">
  				<div class="st-content-inner">
                {block 'header'}
                  {include 'file:blog/chunks/_header.tpl'}
                {/block}
                  <div class="content">
                    <div class="container blog_content pt-3">
                      <div class="d-md-none">{'!SimpleSearchForm' | snippet : ['landing' => 41, 'tpl' => '@FILE blog/chunks/_search.tpl' ]}</div>
                          {if $_modx->resource.template != 3}
                            {include 'file:blog/chunks/_crumbs.tpl'}
                          {/if}
                          {block 'content'}
                          {/block}

                    </div>
                  </div>
  				    {include 'file:blog/chunks/_footer.tpl'}
  					</div>
  				</div>
  			</div>
  		</div>

{include 'file:blog/chunks/_scripts.tpl'}
</body>
</html>
