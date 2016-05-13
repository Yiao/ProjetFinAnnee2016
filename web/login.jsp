<%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 3/4/2016
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<br/>

<%--<form class="form-horizontal" action="login" method="post">--%>
    <%--<div class="container">--%>
        <%--<div class="form-group">--%>
            <%--<label class="col-sm-2 control-label">User Name</label>--%>
            <%--<div class="col-sm-10">--%>
                <%--<input type="text" name="username" class="form-control" placeholder="User Name">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label class="col-sm-2 control-label">Password</label>--%>
            <%--<div class="col-sm-10">--%>
                <%--<input type="text" name="password" class="form-control" placeholder="Password">--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-11 col-sm-1">--%>
                <%--<div class="col-sm-1">--%>
                    <%--<button type="submit" class="btn btn-default">Login</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

    <%--</div>--%>
<%--</form>--%>
<!-- START: PAGE TITLE -->
<div class="row page-title">
    <div class="container clear-padding text-center flight-title">
        <h3>LOGIN/REGISTER</h3>
        <h4 class="thank">Manage Your Account</h4>
    </div>
</div>
<!-- END: PAGE TITLE -->

<!-- START: LOGIN/REGISTER -->
<div class="row login-row">
    <div class="container clear-padding">
        <div class="col-sm-2 useful-links">
            <h4>Useful Links</h4>
            <a href="#">Become A Partner</a>
            <a href="#">Career</a>
            <a href="#">Developers</a>
            <a href="#">FAQ</a>
            <a href="#">Partners</a>
            <a href="#">Terms Of Use</a>
            <a href="#">Privacy Policy</a>
        </div>
        <div class="col-sm-5 login-form">
            <h4>Login</h4>
            <form action="login" method="post">
                <label class="view-login-text">Username/Email</label>
                <div class="input-group">
                    <input name="username" type="email" class="form-control" placeholder="Username/Email" required>
                    <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                </div>
                <label class="view-login-text">Password</label>
                <div class="input-group">
                    <input name="password" type="password" class="form-control" placeholder="Password" required>
                    <span class="input-group-addon"><i class="fa fa-eye fa-fw"></i></span>
                </div>
                <button type="submit">LOGIN <i class="fa fa-sign-in"></i></button>
            </form>
        </div>
        <div class="col-sm-5 sign-up-form">
            <h4>Sign Up</h4>
            <form action="register" method="post">
                <label class="view-login-text">Username/Email</label>
                <div class="input-group">
                    <input name="newusername" type="email" class="form-control" placeholder="Username/Email" required>
                    <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                </div>

                <label class="view-login-text">First Name</label>
                <div class="input-group">
                    <input name="userFirstName" type="text" class="form-control" placeholder="First Name">
                    <span class="input-group-addon"><i class="fa fa-eye fa-fw"></i></span>
                </div>

                <label class="view-login-text">Last Name</label>
                <div class="input-group">
                    <input name="userLastName" type="text" class="form-control" placeholder="Last Name">
                    <span class="input-group-addon"><i class="fa fa-eye fa-fw"></i></span>
                </div>

                <label class="view-login-text">Age</label>
                <div class="input-group">
                    <input name="userAge" type="number" class="form-control" placeholder="Age">
                    <span class="input-group-addon"><i class="fa fa-eye fa-fw"></i></span>
                </div>

                <label class="view-login-text">Email</label>
                <div class="input-group">
                    <input name="userEmail" type="email" class="form-control" placeholder="Email">
                    <span class="input-group-addon"><i class="fa fa-eye fa-fw"></i></span>
                </div>

                <label class="view-login-text">Password</label>
                <div class="input-group">
                    <input name="newpassword" type="password" class="form-control" placeholder="Password" required>
                    <span class="input-group-addon"><i class="fa fa-eye fa-fw"></i></span>
                </div>
                <label class="view-login-text">Confirm Password</label>
                <div class="input-group">
                    <input name="confirm-password" type="password" class="form-control" placeholder="Retype Password">
                    <span class="input-group-addon"><i class="fa fa-eye fa-fw"></i></span>
                </div>
                <input name="tc" type="checkbox">
                <label class="view-login-text">I agree To Terms & Conditions</label>
                <button type="submit">REGISTER ME <i class="fa fa-edit"></i></button>
            </form>
        </div>
    </div>
</div>
<!-- END: LOGIN/REGISTER -->

<%@include file="footer.jsp"%>
