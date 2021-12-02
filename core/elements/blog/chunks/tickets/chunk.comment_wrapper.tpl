<div class="comments">
    {if $_modx->user.id > 0}
    <span class="comments-subscribe pull-right">
        <label for="comments-subscribe" class="checkbox">
            <input type="checkbox" name="" id="comments-subscribe" value="1" {if $subscribed} checked{/if}/> {$_modx->lexicon('ticket_comment_notify')}
        </label>
    </span>
    {/if}
    <h3 class="title">{$_modx->lexicon('comments')} (<span id="comment-total">{$total}</span>)</h3>
    <div id="comments-wrapper">
        <ol class="comment-list" id="comments">{$comments}</ol>
    </div>
    <div id="comments-tpanel">
        <div id="tpanel-refresh"></div>
        <div id="tpanel-new"></div>
    </div>
</div>
