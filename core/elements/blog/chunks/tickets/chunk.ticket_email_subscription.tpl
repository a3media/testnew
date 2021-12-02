{$_modx->lexicon('ticket_email_subscribed_intro',[
    'id' => $id,
    'fullname' => $_pls['user.fullname'],
    'section' => $_pls['section.id'],
    'section_title' => $_pls['section.pagetitle'],
    'pagetitle' => $pagetitle
])}

<pre style="background-color:#efefef;">{$introtext}</pre>
<br/><br/>

<a href="{$id | url : ['scheme' => 'full']}">{$_modx->lexicon('ticket_email_view')}</a>
