{if 'Советы по переезду' | in : $caption_text}
{else}
<div class="px-2 col-md-4 col-sm-6 mb-3">
    <div class="thumbnail text-center mb-2">
        {switch $type}
            {case 'carousel'}
                <div id="carousel-instagram{$idx}" class="carousel slide" data-ride="carousel" data-interval="false">
                    <ol class="carousel-indicators">
                        {foreach $carousel as $item}
                            <li data-target="#carousel-instagram{$idx}" data-slide-to="{$item@index}" {$item@index == 0 ? 'class="active"' : ''}></li>
                        {/foreach}
                    </ol>

                    <div class="carousel-inner" role="listbox">
                        {foreach $carousel as $item}
                            <div class="carousel-item {$item@index == 0 ? 'active' : ''}">
                                <a data-fancybox="gallery{$idx}" href="{$item.images.standard_resolution.url}"><img src="#" data-src="{$item.images.standard_resolution.url | pThumb:'&w=345&h=345&zc=1&q=75'}" alt="{$caption_text | strip : true | truncate : 200}" class="last_work_image w-100"></a>
                            </div>
                        {/foreach}
                    </div>
                </div>
            {case 'video'}
                <video width="100%" controls="controls">
                    <source src="{$video_standard_resolution}" type="video/mp4">
                </video>
            {case default}
            <a data-fancybox="gallery{$idx}" href="{$image_standard_resolution}">
                <img data-src="{$image_standard_resolution | pThumb:'&w=345&h=345&zc=1&q=75'}" alt="{$caption_text | strip : true | truncate : 200}" class="w-100">
            </a>
        {/switch}
        </div>
        <p><img data-src="/assets/landing/img/calendar.svg" alt="Календарь"> {$created_time | date_format:"%d.%m.%Y"}</p>
        <div class="caption">
            <p>{$caption_text | strip : true | truncate : 200}</p>
        </div>

</div>
{/if}
