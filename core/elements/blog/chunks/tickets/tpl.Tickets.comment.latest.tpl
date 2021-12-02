<div class="tickets-latest-row{if $guest} ticket-comment-guest{/if} mb-4">
    <div class="user mb-2">
      {if $photo}<img src="{$photo | pThumb: "&w=40&h=40&zc=1&q=75"}" alt="{$fullname}">{else}<svg height="40" ><use xlink:href="img/sprite.svg#user"></use></svg> {/if}
      <b>{$fullname}</b></span><br> <span class="date">{$date_ago}</span>
    </div>
    <p class="my-1"><a href="{$_modx->makeUrl($_pls['ticket.id'])}#comment-{$id}">{$text}</a></p>
    <span class="ticket">
        {$_pls['ticket.pagetitle']}
    </span>
    <nobr><svg class="comments_svg" height="16"><use xlink:href="img/sprite.svg#comment1"></use></svg> <span class="comments">{$comments}</span></nobr>
</div>
