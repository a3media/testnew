<div class="row hybridauth mb-4">
  <div class="col-4 mb-3">
    <img src="{$photo | pThumb: "&w=96&h=96&zc=1&q=75"}" data-src="{$photo | pThumb: "&w=96&h=96&zc=1&q=75"}" alt="{$username}" title="{$fullname}" class="ha-avatar rounded-circle"/>
  </div>
  <div class="col-8 pl-0 mb-3">
    <div class="ha-info">
        <p>[[%ha.greeting]] <br> <b>{$fullname}</b></p> <a href="{$logout_url}" class="btn btn-outline-danger btn-sm">[[%ha.logout]]</a>
    </div>
  </div>
  <div class="col-12">
    <p class="mb-1"><small>[[%ha.providers_available]]</small></p>
    {$providers}
    {if $error}<div class="alert alert-block alert-error">{$error}</div>{/if}
  </div>
</div>
