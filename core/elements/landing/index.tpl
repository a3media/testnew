<!DOCTYPE html>
<html>
    <head>
      {block 'head'}
        {include 'file:landing/chunks/_head.tpl'}
      {/block}
    </head>
    <body>
      <div id="st-container" class="st-container">
  		    <div class="st-pusher">
            {include 'file:landing/chunks/sidebar.tpl'}
            <div class="st-content">
                <div class="st-content-inner">
                    {block 'header'}
                      {include 'file:landing/chunks/_header.tpl'}
                    {/block}
                      {block 'content'}
                    {/block}
                    {block 'footer'}
                    {include 'file:landing/chunks/_footer.tpl'}
                    {/block}
                    <div id="top_button"><svg><use xlink:href="/img/sprite.svg#top_button"></use></svg></div>
                  </div>
            </div>
          </div>
      </div>
      {block 'modal'}
        {include 'file:landing/chunks/modal_request.tpl'}
        {include 'file:landing/chunks/modal_success.tpl'}
        {include 'file:chunks/modal/modal_offtime.tpl'}
      {/block}
      {block 'script'}
        {include 'file:landing/chunks/_scripts.tpl'}
      {/block}

    </body>
</html>
