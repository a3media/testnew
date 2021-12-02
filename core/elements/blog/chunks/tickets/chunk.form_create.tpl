<form class="well create" method="post" action="" id="ticketForm">
    <div id="ticket-preview-placeholder"></div>
    <input type="hidden" name="tid" value="0"/>
    <div class="form-group">
        <label for="ticket-sections">{$_modx->lexicon('tickets_section')}</label>
        <select name="parent" class="form-control" id="ticket-sections">{$sections}</select>
        <span class="error"></span>
    </div>
    <div class="form-group">
        <label for="ticket-pagetitle">{$_modx->lexicon('ticket_pagetitle')}</label>
        <input type="text" class="form-control" placeholder="{$_modx->lexicon('ticket_pagetitle')}" name="pagetitle" value=""
               maxlength="50" id="ticket-pagetitle"/>
        <span class="error"></span>
    </div>
    <div class="form-group">
        <textarea class="form-control" placeholder="{$_modx->lexicon('ticket_content')}" name="content" id="ticket-editor"
                  rows="10"></textarea>
        <span class="error"></span>
    </div>
    <div class="ticket-form-files">
        {$files}
    </div>
    <div class="form-actions row">
        <div class="col-md-6 move-right">
            <button type="button" class="btn btn-primary publish" name="publish" title=""><i class="fab fa-telegram-plane"></i> {$_modx->lexicon('ticket_publish')}</button>
            <button type="submit" class="btn btn-info draft" name="draft" title="Ctrl + Shift + Enter"><i class="far fa-save"></i> {$_modx->lexicon('ticket_draft')}</button>
        </div>
    </div>
</form>
