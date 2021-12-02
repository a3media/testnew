<div id="ec-{$thread_name}-message-{$id}" class="ec-message card mx-lg-5" >
  <div class="card-body row">
    <div class="col-12">
      <p><strong>{$user_name}</strong><span class="ec-message__date d-block d-lg-inline float-lg-right"> {$date | dateAgo}</span></p>
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
