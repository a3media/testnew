<div class="mt-5" id="faq">
  <div class="container">
    <h2>Часто задаваемые вопросы:</h2>
    <div class="accordion" id="accordionFAQ">
      {set $rows = json_decode('tv.faq' | resource , true)}
      {foreach $rows as $row}
      <div class="card">
       <div class="card-header" id="heading{$row.MIGX_id}">
         <h3 class="mb-0">
           <a href="#"  data-toggle="collapse" data-target="#collapse{$row.MIGX_id}" aria-expanded="{if $row.MIGX_id == 1}true{else}false{/if}" aria-controls="collapse{$row.MIGX_id}" class="faq_a {if $row.MIGX_id != 1}collapsed{/if}">
             {$row.title} <svg class="faq_row"><use xlink:href="/img/sprite.svg#faq_row"></use></svg>
           </a>
         </h2>
       </div>
       <div id="collapse{$row.MIGX_id}" class="collapse {if $row.MIGX_id == 1}show{/if}" aria-labelledby="heading{$row.MIGX_id}" data-parent="#accordionFAQ">
         <div class="card-body">
           {$row.text}
         </div>
       </div>
      </div>
      {/foreach}
    </div>
  </div>
</div>
