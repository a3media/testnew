<div class="card mb-3">
    <div class="card-header bg-dark">
        <h2 class="card_h2 mb-0 text-white"><svg class="comments_svg" ><use xlink:href="img/sprite.svg#comments"></use></svg> Комментарии</h2>
    </div>

    <div class="card-body">
        <ul class="list-unstyled">
          {$_modx->runSnippet('TicketLatest', [
            'limit' => 5,
            'fastMode' => 1,
            'parents' => '554'
            'action' => 'comments',
            'includeContent' => 1,
            'tpl' => '@FILE blog/chunks/tickets/tpl.Tickets.comment.latest.tpl'
          ])}
        </ul>
    </div>
</div>
