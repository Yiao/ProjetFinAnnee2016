<%@ page import="com.supinfo.transport.entity.Users" %><%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 5/9/2016
  Time: 05:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<!-- START: USER PROFILE -->
<div class="row user-profile">
    <div class="container">
        <%
            Users userinfo = (Users) request.getAttribute("user");
        %>
        <div class="col-md-12 user-name">
            <h3>Welcome, <%out.print(userinfo.getUsername()) ;%></h3>
        </div>
        <div class="col-md-12 col-sm-12">
            <div class="tab-content">
                <form action="userProfile" method="post">
                <div id="profile" class="tab-pane fade in active">
                    <div class="col-lg-6 col-md-12 col-sm-12" style="margin-top:20px">
                        <div class="user-personal-info">
                            <h4>Personal Information</h4>
                            <div class="user-info-body">
                                    <div class="clearfix"></div>
                                    <div class="col-md-6 col-sm-6">
                                        <label>First Name   : <%out.print(userinfo.getFirstName()) ;%></label>
                                        <input type="text" name="newFirstName" required placeholder="First Name" class="form-control">
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <label>Last Name   : <%out.print(userinfo.getLastName()); %></label>
                                        <input type="text" name="newLastName" required placeholder="Last Name" class="form-control">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-md-12">
                                        <label>Email   : <%out.print( userinfo.getEmail() );%></label>
                                        <input type="email" name="newEmail" required placeholder="lenore@example.com" class="form-control">
                                    </div>
                                    <div class="col-md-12">
                                        <label>Age   : <%out.print(userinfo.getAge());%></label>
                                        <input type="number" name="newAge" required class="form-control">
                                    </div>
                                    <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12" style="margin-top:20px">
                        <div class="user-change-password">
                            <h4>Change Password</h4>
                            <div class="change-password-body">
                                    <div class="col-md-12">
                                        <label>New Password</label>
                                        <input type="password" placeholder="New Password" class="form-control" name="newPassword">
                                    </div>
                                    <div class="col-md-12">
                                        <label>Confirm Password</label>
                                        <input type="password" placeholder="Confirm Password" class="form-control" name="newConfirmPassword">
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12" style="margin-top:20px">
                        <div class="user-change-password">
                            <h4>Confirmation</h4>
                            <div class="change-password-body">
                                <div class="col-md-12">
                                    <label>Your Password</label>
                                    <input type="password" placeholder="Password for confirmation" class="form-control" name="oldPassword">
                                </div>
                                <div class="col-md-12 text-center">
                                    <button type="submit">SAVE CHANGES</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- END: USER PROFILE -->

<%@include file="footer.jsp"%>
