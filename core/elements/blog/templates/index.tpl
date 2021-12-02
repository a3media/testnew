<!DOCTYPE html>
<html>
    <head>
      {block 'head'}
        {include 'file:chunks/_head.tpl'}
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css">
      {/block}
    </head>
    <body>
      <div id="st-container" class="st-container">
  		    <div class="st-pusher">
            {include 'file:chunks/sidebar/sidebar.tpl'}
            <div class="st-content">
                <div class="st-content-inner">

                    {block 'header'}
                      {include 'file:chunks/_header.tpl'}
                    {/block}
                    {if $_modx->resource.template != 1 OR $_modx->resource.template != 50}
                      {include 'file:chunks/additional/crumbs.tpl'}
                    {/if}
                    <div class="container my-4">
                      <div class="row">
                        <div class="col-md-8 pr-lg-0">
                          {block 'content'}
                          {/block}
                        </div>
                        <div class="col-md-4">
                          {block 'right_column'}
                          {/block}
                        </div>
                      </div>
                    </div>
                    {block 'footer'}
                    {include 'file:chunks/_footer.tpl'}
                    {/block}
                    <div id="top_button"><svg><use xlink:href="img/sprite.svg#top_button"></use></svg></div>


                  </div>
            </div>
          </div>
      </div>
      {block 'script'}
        {include 'file:chunks/_scripts.tpl'}
      {/block}

    </body>
</html>
