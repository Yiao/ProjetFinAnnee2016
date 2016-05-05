<%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 3/4/2016
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<footer class="footer">--%>
    <%--<div class="container">--%>
        <%--<p class="text-muted">Made by Yiao SUN</p>--%>
    <%--</div>--%>
<%--</footer>--%>

<!-- START: FOOTER -->
<section id="footer">
    <footer>
        <div class="row main-footer-sub">
            <div class="container clear-padding">
                <div class="col-md-7 col-sm-7">
                    <form >
                        <label>SUBSCRIBE TO OUR NEWSLETTER</label>
                        <div class="clearfix"></div>
                        <div class="col-md-9 col-sm-8 col-xs-6 clear-padding">
                            <input class="form-control" type="email" required placeholder="Enter Your Email" name="email">
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6 clear-padding">
                            <button type="submit"><i class="fa fa-paper-plane"></i>SUBSCRIBE</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-5 col-sm-5">
                    <div class="social-media pull-right">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-footer row">
            <div class="container clear-padding">
                <div class="col-md-3 col-sm-6 about-box">
                    <h3>CRUISE</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    <a href="#">READ MORE</a>
                </div>
                <div class="col-md-3 col-sm-6 links">
                    <h4>Popular Tours</h4>
                    <ul>
                        <li><a href="#">Romantic France</a></li>
                        <li><a href="#">Wonderful Lodnon</a></li>
                        <li><a href="#">Awesome Amsterdam</a></li>
                        <li><a href="#">Wild Africa</a></li>
                        <li><a href="#">Beach Goa</a></li>
                        <li><a href="#">Casino Los Vages</a></li>
                        <li><a href="#">Romantic France</a></li>
                    </ul>
                </div>
                <div class="clearfix visible-sm-block"></div>
                <div class="col-md-3 col-sm-6 links">
                    <h4>Our Services</h4>
                    <ul>
                        <li><a href="#">Domestic Flights</a></li>
                        <li><a href="#">International Flights</a></li>
                        <li><a href="#">Tours & Holidays</a></li>
                        <li><a href="#">Domestic Hotels</a></li>
                        <li><a href="#">International Hotels</a></li>
                        <li><a href="#">Cruise Holidays</a></li>
                        <li><a href="#">Car Rental</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 contact-box">
                    <h4>Contact Us</h4>
                    <p><i class="fa fa-home"></i> Street #156 Burbank, Studio City Hollywood, California USA</p>
                    <p><i class="fa fa-phone"></i> +91 1234567890</p>
                    <p><i class="fa fa-envelope-o"></i> support@domain.com</p>
                </div>
                <div class="clearfix"></div>
                <div class="col-md-12 text-center we-accept">
                    <h4>We Accept</h4>
                    <ul>
                        <li><img src="assets/images/card/mastercard.png" alt="cruise"></li>
                        <li><img src="assets/images/card/visa.png" alt="cruise"></li>
                        <li><img src="assets/images/card/american-express.png" alt="cruise"></li>
                        <li><img src="assets/images/card/mastercard.png" alt="cruise"></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="main-footer-nav row">
            <div class="container">
                <div class="col-md-6 col-sm-6">
                    <p>Copyright &copy; 2015 LimpidThemes. All Rights Reserved.</p>
                </div>
                <div class="col-md-6 col-sm-6">
                    <ul>
                        <li><a href="#">FLIGHTS</a></li>
                        <li><a href="#">TOURS</a></li>
                        <li><a href="#">CARS</a></li>
                        <li><a href="#">HOTELS</a></li>
                        <li><a href="#">BLOG</a></li>
                    </ul>
                </div>
                <div class="go-up">
                    <a href="#"><i class="fa fa-arrow-up"></i></a>
                </div>
            </div>
        </div>
    </footer>
</section>
<!-- END: FOOTER -->

</body>
    <%--old--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>--%>
    <%--<script src="/js/bootstrap.js"></script>--%>

    <script src="assets/js/respond.js"></script>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/plugins/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/plugins/wow.min.js"></script>
    <script src="assets/plugins/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="assets/plugins/supersized.3.1.3.min.js"></script>
    <script src="assets/js/js.js"></script>
    <script type="text/javascript">
    /* SLIDER SETTINGS */
    jQuery(function($){
        "use strict";
        $.supersized({

            //Functionality
            slideshow               :   1,		//Slideshow on/off
            autoplay				:	1,		//Slideshow starts playing automatically
            start_slide             :   1,		//Start slide (0 is random)
            random					: 	0,		//Randomize slide order (Ignores start slide)
            slide_interval          :   10000,	//Length between transitions
            transition              :   1, 		//0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
            transition_speed		:	500,	//Speed of transition
            new_window				:	1,		//Image links open in new window/tab
            pause_hover             :   0,		//Pause slideshow on hover
            keyboard_nav            :   0,		//Keyboard navigation on/off
            performance				:	1,		//0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
            image_protect			:	1,		//Disables image dragging and right click with Javascript

            //Size & Position
            min_width		        :   0,		//Min width allowed (in pixels)
            min_height		        :   0,		//Min height allowed (in pixels)
            vertical_center         :   1,		//Vertically center background
            horizontal_center       :   1,		//Horizontally center background
            fit_portrait         	:   1,		//Portrait images will not exceed browser height
            fit_landscape			:   0,		//Landscape images will not exceed browser width

            //Components
            navigation              :   1,		//Slideshow controls on/off
            thumbnail_navigation    :   1,		//Thumbnail navigation
            slide_counter           :   1,		//Display slide numbers
            slide_captions          :   1,		//Slide caption (Pull from "title" in slides array)
            slides 					:  	[		//Slideshow Images
                {image : 'assets/images/switzerland.jpg', title : 'Slide 1'},
                {image : 'assets/images/slide18.jpg', title : 'Slide 2'},
                {image : 'assets/images/beach.jpg', title : 'Slide 3'},
            ]

        });
    });

</script>
    <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-68058832-1', 'auto');
    ga('send', 'pageview');

</script>
</html>