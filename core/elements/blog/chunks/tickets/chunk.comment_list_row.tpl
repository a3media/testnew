<div class="ticket-comment-row ticket-comment" id="comment-{$id}" data-id="{$id}">
    <div class="ticket-comment-body{if $guest} ticket-comment-guest{/if}">
        <div class="ticket-comment-header">
            <img src="#" data-src="{$avatar | pThumb: "&w=40&h=40&zc=1&q=75"}" class="ticket-avatar" alt="{$fullname}"/>
            <span class="ticket-comment-author">{$fullname}</span>
            <span class="ticket-comment-createdon">{$date_ago}</span>{if $comment_was_edited}<span class="ticket-comment-edited">({$_modx->lexicon('ticket_comment_was_edited')})</span>{/if}
            <span class="ticket-comment-link"><a href="{$url}#comment-{$id}">#</a></span>
            <span class="ticket-comment-star{if $can_star} active{/if}">{if $stared}<i class="fas fa-star stared star"></i>{/if}{if $unstared}<i class="far fa-star unstared star"></i>{/if}</span>
            <span class="ticket-comment-rating{if $can_vote} active{/if}{if $cant_vote} inactive{/if}">
                <span class="rating{if $rating_positive} positive{/if}{if $rating_negative} negative{/if}" title="{$_pls['ticket_rating_total']} {$rating_total}: ↑{$rating_plus} {$_pls['ticket_rating_and']} ↓{$rating_minus}">{$rating}</span>
                <span class="vote plus{if $voted_plus} voted{/if}" title="{$ticket_like}"><i class="fas fa-arrow-up"></i></span>
                <span class="vote minus{if $voted_minus} voted{/if}" title="{$_modx->lexicon('ticket_dislike')}"><i class="fas fa-arrow-down"></i></span>
            </span>
        </div>
        <div class="ticket-comment-text">
            {$text}
        </div>
    </div>
    <a href="{$_modx->makeUrl($_pls['section.id'])}" class="ticket-comment-section"><i class="far fa-folder-open"></i> {$_pls['section.pagetitle']}</a> &rarr;
    <a href="{$_modx->makeUrl($_pls['ticket.id'])}" class="ticket-comment-ticket">{$_pls['ticket.pagetitle']}</a> &nbsp;
    <span class="ticket-comment-comments"><i class="far fa-comment"></i> {$comments}</span>
</div>
