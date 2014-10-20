<div class="row">
    <hr>
    <div class="col-lg-8 col-md-6 col-xs-12">
        <div class="title">
            <h3 class="lined">Contact Us</h3>
        </div>
        <p>
            <?php
            $IntroSupport = Modules::where('mod', '=', 'mod_Contact')->first();
            if ($IntroSupport)
                echo $IntroSupport->intro;
            ?>
        </p>

        <div id="contact">

            <div class="form-message"></div>

            <form action="<?php echo Request::root(); ?>/contact-sendmail" method="post" style="margin-bottom: 10px;" action="contact.php" class="b-form">
                <div class="input-wrap">
                    <i class="icon-user"></i>
                    <input type="text" placeholder="Name (required)"  name="name" required class="form-control">
                </div>
                <div class="input-wrap">
                    <i class="icon-envelope"></i>
                    <input type="email" placeholder="Email (required)" name="email" required class="form-control">
                </div>
                <div class="input-wrap">
                    <i class="icon-pencil"></i>
                    <input type="text" placeholder="Subject" name="subject" required class="form-control">
                </div>
                <div class="textarea-wrap">
                    <i class="icon-pencil"></i>
                    <textarea placeholder="Text" name="text"  class="form-control" rows="5"></textarea>
                </div>
                <div style="height: 20px;" class="gap"></div>
                <input type="submit" value="Submit Comment" class="btn btn-submit btn-primary">
            </form>
        </div>
    </div>

    <div class="col-lg-4 col-md-6 col-xs-12">
        <div class="title">
            <h3 class="lined">Contact Info</h3>
        </div>
        <ul class="list-unstyled contact">
            <li class="contact-address"><i class="fa fa-map-marker"></i><span><strong>{{trans('frontend.form.address')}}:</strong><?php echo CommonHelper::getSetting('address'); ?></span></li>
            <li class="contact-phone"><i class="fa fa-phone"></i><span><strong>{{trans('frontend.form.phone')}}:</strong><?php echo CommonHelper::getSetting('phone'); ?></span></li>
            <li class="contact-mail"><i class="fa fa-envelope"></i><strong>{{trans('frontend.form.email')}}:</strong> <a href="#"><?php echo CommonHelper::getSetting('email_contact'); ?></a></li>
            <li class="contact-address"><i class="fa fa-history"></i><span><strong>{{trans('frontend.form.bussiness_hours')}}:</strong><?php echo CommonHelper::getSetting('business_hours'); ?></span></li>
        </ul>

        <div style="height: 20px;" class="gap"></div>

        <div class="title">
            <h3 class="lined">Follow Us</h3>
        </div>

        <ul class="list-unstyled list-inline">
            <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a></li>
            <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a></li>
            <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a></li>
            <li><a href="#"><i class="fa fa-2x fa-google-plus-square"></i></a></li>
        </ul>
    </div>
</div>