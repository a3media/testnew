<div class="tickets-latest-row">
    <span class="user"><i class="far fa-user"></i> {$fullname}</span> <span class="date">{$date_ago}</span>
    <br/>
    <span class="section">
        <i class="far fa-folder-open"></i> <a href="{$_modx->makeUrl($_pls['section.id'])}">{$_pls['section.pagetitle']}</a> <span class="arrow">&rarr;</span>
    </span>
    <span class="ticket">
        <a href="{$_modx->makeUrl($id)}">{$pagetitle}</a>
    </span>
    <nobr><i class="far fa-comment"></i> <span class="comments">{$comments}</span></nobr>
</div>
