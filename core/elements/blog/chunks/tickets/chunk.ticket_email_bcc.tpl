{$_modx->lexicon('ticket_email_bcc_intro',[
    'fullname' => $_pls['user.fullname'],
    'email' => $_pls['user.email'],
    'id' => $id,
    'pagetitle' => $pagetitle
])}

<pre style="background-color:#efefef;">{$introtext}</pre>
<br/><br/>

<a href="{$id | url : ['scheme' => 'full']}">{$_modx->lexicon('ticket_email_view')}</a>
