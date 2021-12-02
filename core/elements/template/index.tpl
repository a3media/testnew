<!DOCTYPE html>
<html>
    <head>
      {block 'head'}
        {include 'file:chunks/_head.tpl'}
      {/block}
    </head>
    <body>
      <script type="text/javascript">(function(m,e,t,r,i,k,a){ m[i]=m[i]||function(){ (m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)}) (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(47747590, "init", { clickmap:true, trackLinks:true, accurateTrackBounce:true }); </script> <noscript><div><img src="https://mc.yandex.ru/watch/47747590" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
      <div id="st-container" class="st-container">
  		    <div class="st-pusher">
            {include 'file:chunks/sidebar/sidebar.tpl'}
            <div class="st-content">
                <div class="st-content-inner">

                    {block 'header'}
                      {include 'file:chunks/_header.tpl'}
                    {/block}
                    {block 'crumbs'}
                      {include 'file:chunks/additional/crumbs.tpl'}
                    {/block}
                    {block 'content'}
                    {/block}
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
