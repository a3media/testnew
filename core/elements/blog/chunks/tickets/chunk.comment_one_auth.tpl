<li class="ticket-comment{if $comment_new} ticket-comment-new{/if}" id="comment-{$id}" data-parent="{$parent}" data-newparent="{$new_parent}" data-id="{$id}">
    <div class="ticket-comment-body{if $guest} ticket-comment-guest{/if}{$bad} mb-3">
        <div class="ticket-comment-header align-items-center pb-1 row">
          <div class="col-12 col-md-6 d-flex align-items-center">
            <div class="avatar">
              <img src="#" data-src="{$avatar | pThumb: "&w=42&h=42&zc=1&q=75"}"  alt="{$fullname}" class="rounded-circle lazyload">
            </div>
            <div class="ml-2 created">
              <div class="author">
                  {$fullname}
              </div>
              <div class="date small">{$date_ago}</div>

            </div>
          </div>
          <div class="col-md-6 text-right">
              {if $comment_was_edited}<span class="ticket-comment-edited">({$_modx->lexicon('ticket_comment_was_edited')})</span>{/if}
            <span class="ticket-comment-link mr-2"><a href="{$url}#comment-{$id}">#</a></span>
            <span class="ticket-comment-rating{if $can_vote} active{/if}{if $cant_vote} inactive{/if}">
                <span class="vote plus{if $voted_plus} voted{/if}" title="{$_modx->lexicon('ticket_like')}"><svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#vote2"></use></svg></span>
                <span class="rating{if $rating_positive} positive{/if}{if $rating_negative} negative{/if} text-center" title="{$_modx->lexicon('ticket_rating_total')} {$rating_total}: ↑{$rating_plus} {$_modx->lexicon('ticket_rating_and')} ↓{$rating_minus}">{$rating}</span>
                <span class="vote minus{if $voted_minus} voted{/if}" title="{$_modx->lexicon('ticket_dislike')}"><svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#vote1"></use></svg></span>
            </span>
          </div>
        </div>
        <div class="ticket-comment-text p-2 bg-light rounded mb-1">
            {$text}
        </div>

        <div class="comment-reply">
            <a href="#" class="reply"><svg height="12"><use xlink:href="img/sprite.svg#back"></use></svg> {$_modx->lexicon('ticket_comment_reply')}</a> &nbsp;&nbsp;
            {if $comment_edit_link}<a href="#" class="edit"><svg height="12"><use xlink:href="img/sprite.svg#back"></use></svg> {$_modx->lexicon('ticket_comment_edit')}</a>{/if}
        </div>
    </div>

    <ol class="comments-list">{$children}</ol>
</li>
