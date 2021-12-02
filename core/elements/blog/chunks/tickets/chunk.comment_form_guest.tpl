<h4 id="comment-new-link">
    <a href="#" class="btn btn-default">{$_modx->lexicon('ticket_comment_create')}</a>
</h4>
<div id="comment-form-placeholder">
    <form id="comment-form" action="" method="post" class="well">
        <div id="comment-preview-placeholder"></div>
        <input type="hidden" name="thread" value="{$thread}"/>
        <input type="hidden" name="parent" value="0"/>
        <input type="hidden" name="id" value="0"/>
        <div class="form-group">
            <label for="comment-name">{$_modx->lexicon('ticket_comment_name')}</label>
            <input type="text" name="name" value="{$name}" id="comment-name" class="form-control"/>
            <span class="error"></span>
        </div>
        <div class="form-group">
            <label for="comment-email">{$_modx->lexicon('ticket_comment_email')}</label>
            <input type="text" name="email" value="{$email}" id="comment-email" class="form-control"/>
            <span class="error"></span>
        </div>
        <div class="form-group">
            <label for="comment-editor"></label>
            <textarea name="text" id="comment-editor" cols="30" rows="10" class="form-control"></textarea>
        </div>
        {if $captcha}
        <div class="form-group">
            <label for="comment-captcha" id="comment-captcha">{$captcha}</label>
            <input type="text" name="captcha" value="" id="comment-captcha" class="form-control" />
            <span class="error"></span>
        </div>
        {/if}
        <div class="form-actions">
            <button type="submit" class="btn btn-primary submit" title="Ctrl + Shift + Enter"> {$_modx->lexicon('ticket_comment_save')}</button>
            <span class="time"></span>
        </div>
    </form>
</div>
