<%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 3/4/2016
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
    <!-- BEGIN: SEARCH SECTION -->
    <section>
        <div class="row full-width-search">
            <div class="container clear-padding">
                <div class="col-md-8 search-section">
                    <div role="tabpanel">
                        <!-- BEGIN: CATEGORY TAB -->
                        <ul class="nav nav-tabs search-top" role="tablist" id="searchTab">
                            <li role="presentation" class="active text-center">
                                <a href="#flight" aria-controls="flight" role="tab" data-toggle="tab">
                                    <i class="fa fa-train"></i>
                                    <span>TRAINS</SPAN>
                                </a>
                            </li>
                        </ul>
                        <!-- END: CATEGORY TAB -->

                        <!-- BEGIN: TAB PANELS -->
                        <div class="tab-content">
                            <!-- BEGIN: FLIGHT SEARCH -->
                            <div role="tabpanel" class="tab-pane active" id="flight">
                                <form method="post" action="/search">
                                    <div class="col-md-12 product-search-title">Book Flight Tickets</div>
                                    <div class="col-md-12 search-col-padding">
                                        <label class="radio-inline">
                                            <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="One Way"> One Way
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Round Trip"> Round Trip
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-md-6 col-sm-6 search-col-padding">
                                        <label>Leaving From</label>
                                        <div class="input-group">
                                            <input type="text" id="departure_city" name="departure_city" class="form-control" required placeholder="E.g. London">
                                            <span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 search-col-padding">
                                        <label>Leaving To</label>
                                        <div class="input-group">
                                            <input type="text" id="destination_city" name="destination_city" class="form-control" required placeholder="E.g. New York">
                                            <span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-md-6 col-sm-6 search-col-padding">
                                        <label>Departure</label>
                                        <div class="input-group">
                                            <input type="text" id="departure_date" name="departure_date" class="form-control" placeholder="DD/MM/YYYY">
                                            <span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 search-col-padding">
                                        <label>Return</label>
                                        <div class="input-group">
                                            <input type="text" id="return_date" class="form-control" name="return_date" placeholder="DD/MM/YYYY">
                                            <span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-md-4 col-sm-4 search-col-padding">
                                        <label>Adult</label><br>
                                        <input id="adult_count" name="adult_count" value="1" class="form-control quantity-padding">
                                    </div>
                                    <div class="col-md-4 col-sm-4 search-col-padding">
                                        <label>Child</label><br>
                                        <input type="text" id="child_count" name="child_count" value="1" class="form-control quantity-padding">
                                    </div>
                                    <div class="col-md-4 col-sm-4 search-col-padding">
                                        <label>Class</label><br>
                                        <select class="selectpicker">
                                            <option>Business</option>
                                            <option>Economy</option>
                                        </select>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-md-12 search-col-padding">
                                        <button type="submit" class="search-button btn transition-effect">Search Trains</button>
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                            <!-- END: FLIGHT SEARCH -->
                        </div>
                        <!-- END: TAB PANE -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END: SEARCH SECTION -->

    <!-- BEGIN: HOW IT WORK -->
    <section id="how-it-work">
        <div class="row work-row">
            <div class="container">
                <div class="section-title text-center">
                    <h2>HOW IT WORKS?</h2>
                    <h4>SEARCH - SELECT - BOOK</h4>
                    <div class="space"></div>
                    <p>
                        Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br>
                        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                    </p>
                </div>
                <div class="work-step">
                    <div class="col-md-4 col-sm-4 first-step text-center">
                        <i class="fa fa-search"></i>
                        <h5>SEARCH</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    </div>
                    <div class="col-md-4 col-sm-4 second-step text-center">
                        <i class="fa fa-heart-o"></i>
                        <h5>SELECT</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    </div>
                    <div class="col-md-4 col-sm-4 third-step text-center">
                        <i class="fa fa-shopping-cart"></i>
                        <h5>BOOK</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--END: HOW IT WORK -->

    <!-- START: WHY CHOOSE US SECTION -->
    <section id="why-choose-us">
        <div class="row choose-us-row">
            <div class="container clear-padding">
                <div class="light-section-title text-center">
                    <h2>WHY CHOOSE US?</h2>
                    <h4>REASONS TO TRUST US</h4>
                    <div class="space"></div>
                    <p>
                        Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br>
                        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                    </p>
                </div>
                <div class="col-md-4 col-sm-4 wow slideInLeft">
                    <div class="choose-us-item text-center">
                        <div class="choose-icon"><i class="fa fa-suitcase"></i></div>
                        <h4>Handpicked Tour</h4>
                        <p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <a href="#">KNOW MORE</a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 wow slideInUp">
                    <div class="choose-us-item text-center">
                        <div class="choose-icon"><i class="fa fa-phone"></i></div>
                        <h4>Dedicated Support</h4>
                        <p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <a href="#">KNOW MORE</a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 wow slideInRight">
                    <div class="choose-us-item text-center">
                        <div class="choose-icon"><i class="fa fa-smile-o"></i></div>
                        <h4>Lowest Price</h4>
                        <p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <a href="#">KNOW MORE</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END: WHY CHOOSE US SECTION -->

<%@include file="footer.jsp" %>
