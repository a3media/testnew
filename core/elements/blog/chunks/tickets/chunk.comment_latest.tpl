<div class="tickets-latest-row{if $guest} ticket-comment-guest{/if}">
    <span class="user"><i class="far fa-user"></i> {$fullname}</span> <span class="date">{$date_ago}</span>
    <br/>
    <span class="ticket">
        <a href="{$_modx->makeUrl($_pls['ticket.id'])}#comment-{$id}">{$_pls['ticket.pagetitle']}</a>
    </span>
    <nobr><i class="far fa-comment"></i> <span class="comments">{$comments}</span></nobr>
</div>
