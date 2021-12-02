<div id="ec-{$thread_name}-message-{$id}" class="ec-message card mb-3" >
  <div class="card-body">
    <div class="row">
      <div class="col">
        <p><strong>{$user_name}</strong><span class="ec-message__date"> {$date | dateAgo}</span></p>
        <div class="ec-stars">
            <span class="rating-{$rating}"></span>
        </div>
        <p>{$text}</p>
        {if $reply_text}
        <div class="ec-message__reply">
            {if $reply_author}
            <p><strong>{$reply_author}</strong></p>
            {/if}
            <p>{$reply_text}</p>
        </div>
        {/if}
      </div>
    </div>
    {if $files}
    <div class="row mx-0 mt-3">
        {foreach $files as $file}
            <div class="col-6 col-md-4 col-lg-3 p-2">
                <a href="{$file['url']}" data-fancybox="gallery{$id}" data-caption="Изображение {$key+1}">
                  <picture>
                      <source data-srcset="{$file['url'] | phpthumbon : 'w=150&h=150&zc=1&q=85&f=webp'}" type="image/webp">
                      <img data-src="{$file['url'] | phpthumbon : 'w=150&h=150&zc=1&q=85'}" class="lazyload" alt="Изображение {$key+1}" />
                  </picture>
                </a>
            </div>
        {/foreach}
    </div>
    {/if}


  </div>
</div>
