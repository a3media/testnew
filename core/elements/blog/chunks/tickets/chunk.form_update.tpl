<form class="well update" method="post" action="" id="ticketForm">
    <div id="ticket-preview-placeholder"></div>
    <input type="hidden" name="tid" value="{$id}"/>
    <div class="form-group">
        <label for="ticket-sections">{$_modx->lexicon('tickets_section')}</label>
        <select name="parent" class="form-control" id="ticket-sections">{$sections}</select>
        <span class="error"></span>
    </div>
    <div class="form-group">
        <label for="ticket-pagetitle">{$_modx->lexicon('ticket_pagetitle')}</label>
        <input type="text" class="form-control" placeholder="{$_modx->lexicon('ticket_pagetitle')}" name="pagetitle"
               value="{$pagetitle}" maxlength="50" id="ticket-pagetitle"/>
        <span class="error"></span>
    </div>
    <div class="form-group">
        <textarea class="form-control" placeholder="{$_modx->lexicon('ticket_content')}" name="content" id="ticket-editor" rows="10">{$content}</textarea>
        <span class="error"></span>
    </div>
    <div class="ticket-form-files">
        {$files}
    </div>
    <div class="form-actions row">
        <div class="col-md-6">
            <button type="button" class="btn btn-default preview" title="Ctrl + Enter"><i class="fas fa-eye"></i> {$_modx->lexicon('ticket_preview')}</button>
        </div>
        <div class="col-md-6 move-right">
            {if $published}
            <a href="{$id | url : ['scheme' => 'full']}" class="btn btn-light btn-xs" target="_blank"><i class="fas fa-external-link-alt"></i> {$_modx->lexicon('ticket_open')}</a>
            <button type="button" class="btn btn-info draft" name="draft" title="Ctrl + Shift + Enter"><i class="far fa-save"></i> {$_modx->lexicon('ticket_draft')}</button>
            {else}
            <button type="button" class="btn btn-primary publish" name="publish" title=""><i class="fab fa-telegram-plane"></i> {$_modx->lexicon('ticket_publish')}</button>
            {/if}
            <button type="submit" class="btn btn-primary save" name="save" title="Ctrl + Shift + Enter"><i class="far fa-save"></i> {$_modx->lexicon('ticket_save')}</button>
        </div>
    </div>
</form>
