<h2>Оставить отзыв</h2>
<form class="form well ec-form" method="post" role="form" id="ec-form-{$fid}" data-fid="{$fid}" action="" enctype="multipart/form-data">
    <input type="hidden" name="thread" value="{$thread}">

    <div class="form-group ec-antispam">
        <label for="ec-{$antispam_field}-{$fid}" class="control-label">{'ec_fe_message_antismap' | lexicon}</label>
        <input type="text" name="{$antispam_field}" class="form-control" id="ec-{$antispam_field}-{$fid}" value="" />
    </div>

    <div class="form-group">
        <input type="text" name="user_name" class="form-control" id="ec-user_name-{$fid}" value="{$user_name}"  required="" />
        <label for="ec-user_name-{$fid}" >{'ec_fe_message_user_name' | lexicon}</label>
        <span class="ec-error help-block" id="ec-user_name-error-{$fid}"></span>
    </div>

    <div class="form-group">
        <label for="ec-user_email-{$fid}" class="control-label">{'ec_fe_message_user_email' | lexicon}</label>
        <input type="text" name="user_email" class="form-control" id="ec-user_email-{$fid}" value="{$user_email}" />
        <span class="ec-error help-block" id="ec-user_email-error-{$fid}"></span>
    </div>

    <div class="form-group">
        <label for="ec-user_contacts-{$fid}" class="control-label">{'ec_fe_message_user_contacts' | lexicon}</label>
        <input type="text" name="user_contacts" class="form-control" id="ec-user_contacts-{$fid}" value="{$user_contacts}" />
        <span class="ec-error help-block" id="ec-user_contacts-error-{$fid}"></span>
    </div>

    <div class="form-group">
        <label for="ec-subject-{$fid}" class="control-label">{'ec_fe_message_subject' | lexicon}</label>
        <input type="text" name="subject" class="form-control" id="ec-subject-{$fid}" value="{$subject}" />
        <span class="ec-error help-block" id="ec-subject-error-{$fid}"></span>
    </div>

    <div class="form-group">
        <span class="control-label">{'ec_fe_message_rating' | lexicon}</label>
        <input type="hidden" name="rating" id="ec-rating-{$fid}" value="{$rating}" />
        <div class="ec-rating ec-clearfix" data-storage-id="ec-rating-{$fid}">
            <div class="ec-rating-stars my-2">
                <span data-rating="1" data-description="{'ec_fe_message_rating_1' | lexicon}"></span>
                <span data-rating="2" data-description="{'ec_fe_message_rating_2' | lexicon}"></span>
                <span data-rating="3" data-description="{'ec_fe_message_rating_3' | lexicon}"></span>
                <span data-rating="4" data-description="{'ec_fe_message_rating_4' | lexicon}"></span>
                <span data-rating="5" data-description="{'ec_fe_message_rating_5' | lexicon}"></span>
            </div>
            <div class="ec-rating-description">{'ec_fe_message_rating_0' | lexicon}</div>
        </div>
        <span class="ec-error help-block" id="ec-rating-error-{$fid}"></span>
    </div>

    <div class="form-group">
        <label for="ec-text-{$fid}" class="control-label">{'ec_fe_message_text' | lexicon}</label>
        <textarea type="text" name="text" class="form-control" rows="5" id="ec-text-{$fid}">{$text}</textarea>
        <span class="ec-error help-block" id="ec-text-error-{$fid}"></span>
    </div>

    <div class="mb-3">
        <label for="ec-photo-{$fid}" class="">Изображение</label>
        <input type="file" name="photo" class="form-control-file" id="ec-photo-{$fid}" />
        <span class="ec-error help-block" id="ec-photo-error-{$fid}"></span>
    </div>



    {$recaptcha}

    <div class="form-actions">
        <input type="submit" class="btn btn-primary" name="send" value="{'ec_fe_send' | lexicon}" />
    </div>
</form>
<div id="ec-form-success-{$fid}"></div>
