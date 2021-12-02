<div class="ticket-meta row align-items-center" data-id="{$id}">
    <span class="col-md-6 row">
      <div class="col-3 pr-0">
        <img src="#" data-src="{$photo}" alt="привет">
      </div>
      <div class="col-9">
        <h5>{$fullname}</h5>
          {$date_ago}
      </div>
    </span>
    <span class="col-md-3 px-0"><a href="{$_modx->makeUrl($_pls['section.id'])}">
        <img src="/assets/images/blog/folder.svg" alt="Категория"> {$_pls['section.pagetitle']}</a>
    </span>
    <span class="col-md-1">
        <img src="/assets/images/blog/eye.svg" alt="Просмотров"> {$views}
    </span>
    <div class="col-md-2">
      <span class="pull-right ticket-rating{if $active} active{/if}{if $inactive} inactive{/if}">
          <span class="vote plus{if $voted_plus} voted{/if}" title="{$_modx->lexicon('ticket_like')}">
              <img src="#" data-src="/assets/images/blog/vote1.svg" alt="Хорошо">
          </span>
          <span class="rating{if $rating_positive} positive{/if}{if $rating_negative} negative{/if}" title="{$_modx->lexicon('ticket_rating_total')} {$rating_total}: ↑{$rating_plus} {$_modx->lexicon('ticket_rating_and')} ↓{$rating_minus}">{$rating}</span>
          <span class="vote minus{if $voted_minus} voted{/if}" title="{$_modx->lexicon('ticket_dislike')}">
              <img src="#" data-src="/assets/images/blog/vote2.svg" alt="Плохо">
          </span>
      </span>
    </div>

</div>
{if $has_files}
<ul class="ticket-files">
    <strong>{$_modx->lexicon('ticket_uploaded_files')}:</strong>
    {$files}
</ul>
{/if}
