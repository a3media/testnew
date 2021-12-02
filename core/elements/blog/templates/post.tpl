{block 'head'}
  {include 'file:chunks/_head.tpl'}
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css">
{/block}
{extends 'file:blog/templates/index.tpl'}
{block 'content'}
  <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
      <div class="tags mb-3">
      {'tvssTags' | snippet : ['id' => $_modx->resource.id, 'tv' => 73, 'outputSeparator' => ' ', 'pageId' => 554, 'tpl' => '@INLINE <a class="btn btn-outline-info btn-sm" href="/{"568" | url}?tag={$tag|urlencode}">{$tag}</a>' ]}
      </div>

  <div class="post_info py-3">
    <div class="d-inline-block pr-2">
      <a href="{'uri' | resource}#comments"><svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#comment2"></use></svg> {'comments' | resource}</a>
    </div>
    <div class="d-inline-block pr-2">
      <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#eye"></use></svg> {'views' | resource}
    </div>
    <div class="d-inline-block">
      <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#calendar"></use></svg> {'publishedon' | resource | dateago}
    </div>
  </div>
  <div class="post_page_social">
    <div class="ya-share2 pb-3" data-services="vkontakte,facebook,odnoklassniki,twitter,viber,whatsapp,telegram"></div>
  </div>
  <div class="post_content">
    {if $_modx->resource.image}
    <picture>
        <source data-srcset="{$_modx->resource.image | phpthumbon : 'q=75&f=webp'}" type="image/webp">
        <img data-src="{$_modx->resource.image | phpthumbon : '&q=75'}" class="lazyload pb-3" alt="{$_modx->resource.pagetitle}" />
    </picture>
    {/if}
    <div class="blog_page_content">
      {'content' | resource}
    </div>
  </div>

  <div class="py-5">
    {'TicketMeta' | snippet :[
    'tpl' => '@INLINE
    <div class="ticket-meta py-2" data-id="{$id}">
      <div class="row align-items-center">
        <div class="col-md-5">
          <div class="row align-items-center">
            <div class="col-3 pr-0">
              <img src="#" data-src="{$photo}" alt="{$fullname}" class="rounded-circle lazyload">
            </div>
            <div class="col-9">
              <h6>{$fullname}</h6>
                {$publishedon | dateago}
            </div>
          </div>
        </div>
        <span class="col-md-4 col-7 py-2 py-md-0"><a href="{$parent | url}">
            <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#folder_mini"></use></svg> <span>{$parent | resource : "pagetitle"}</span></a>
        </span>
        <div class="col-md-3 text-right col-5 py-2 py-md-0 pl-0" >
          <span class="pr-2">
            <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#eye"></use></svg> {$views}
          </span>
          <span class="pull-right ticket-rating{if $active} active{/if}{if $inactive} inactive{/if}">
              <span class="vote plus{if $voted_plus} voted{/if}" title="{$_modx->lexicon("ticket_like")}">
                  <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#vote2"></use></svg>
              </span>
              <span class="rating{if $rating_positive} positive{/if}{if $rating_negative} negative{/if}" title="{$_modx->lexicon("ticket_rating_total")} {$rating_total}: ↑{$rating_plus} {$_modx->lexicon("ticket_rating_and")} ↓{$rating_minus}">{$rating}</span>
              <span class="vote minus{if $voted_minus} voted{/if}" title="{$_modx->lexicon("ticket_dislike")}">
                  <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#vote1"></use></svg>
              </span>
          </span>
        </div>
      </div>
    </div>
    '
    ]}

    {if $has_files}
    <ul class="ticket-files">
        <strong>{$_modx->lexicon('ticket_uploaded_files')}:</strong>
        {$files}
    </ul>
    {/if}
  </div>
    {'!TicketComments' | snippet : [
    'allowGuest' => 0,
    'tplCommentForm' => '@FILE blog/chunks/tickets/chunk.comment_form.tpl',
    'tplCommentFormGuest' => '@FILE blog/chunks/tickets/chunk.comment_form_guest.tpl',
    'tplCommentGuest' => '@FILE blog/chunks/tickets/chunk.comment_one_guest.tpl',
    'tplCommentAuth' => '@FILE blog/chunks/tickets/chunk.comment_one_auth.tpl',
    'tplCommentDeleted' => '@FILE blog/chunks/tickets/chunk.comment_one_deleted.tpl',
    'tplComments' => '@FILE blog/chunks/tickets/chunk.comment_wrapper.tpl',
    'tplLoginToComment' => '@FILE blog/chunks/tickets/chunk.comment_login.tpl',
    'tplCommentEmailOwner' => '@FILE blog/chunks/tickets/chunk.comment_email_owner.tpl',
    'tplCommentEmailReply' => '@FILE blog/chunks/tickets/chunk.comment_email_reply.tpl',
    'tplCommentEmailSubscription' => '@FILE blog/chunks/tickets/chunk.comment_email_subscription.tpl',
    'tplCommentEmailBcc' => '@FILE blog/chunks/tickets/chunk.comment_email_bcc.tpl',
    'tplCommentEmailUnpublished' => '@FILE blog/chunks/tickets/chunk.comment_email_unpublished.tpl',
    'loginResourceId' => 558,
    ]}
<script src="https://yastatic.net/share2/share.js" async="async"></script>

{/block}
{block 'right_column'}
  {include 'file:blog/chunks/right/categories.tpl'}
  {include 'file:blog/chunks/right/comments.tpl'}
  {include 'file:blog/chunks/right/tag_cloud_home.tpl'}
{/block}
