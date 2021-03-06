<div class="col-md-6">
<div id="ec-{$thread_name}-message-{$id}" class="ec-message card mb-3" >
  <div class="card-body">
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
</div>
