<%-- 
    Document   : adNavbar
    Created on : Jun 21, 2022, 5:41:48 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <!-- Favicon icon -->
    <link rel="icon" href="/src/assests/img/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="/src/assests/plugins/font-awesome/css/font-awesome.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="/src/assests/plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="/src/assests/css/style_admin.css">

    <body>
        <!-- [ navigation menu ] start -->
        <nav class="pcoded-navbar menupos-fixed menu-light brand-blue ">
            <div class="navbar-wrapper ">
                <div class="navbar-brand header-logo">
                    <a href="index.html" class="b-brand">
                        <img src="assets/images/logo.svg" alt="" class="logo images">
                        <img src="assets/images/logo-icon.svg" alt="" class="logo-thumb images">
                    </a>
                    <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
                </div>
                <div class="navbar-content scroll-div">
                    <ul class="nav pcoded-inner-navbar">

                        <li class="nav-item">
                            <a href="/src/admin/dashboard" class="nav-link"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
                        </li>

                        <li class="nav-item pcoded-hasmenu">
                            <a href="" class="nav-link"><span class="pcoded-micon"><i class="fa fa-tasks"></i></span><span class="pcoded-mtext">Componant</span></a>
                            <ul class="pcoded-submenu">

                                <c:if test="${sessionScope.user.roleID eq 3}">
                                    <li class=""><a href="/src/marketing/postlist" class="">Post</a></li>
                                    <li class=""><a href="/src/marketing/productlist" class="">Product</a></li>
                                    <li class=""><a href="/src/marketing/sliderlist" class="">Slider</a></li>
                                    <li class=""><a href="bc_collapse.html" class="">Customer</a></li>
                                    <li class=""><a href="/src/marketing/feedbacklist" class="">Feedback</a></li>
                                    </c:if>
                                        <c:if test="${sessionScope.user.roleID eq 1}">
                                     <li class=""><a href="/src/user/userlist" class="">User</a></li>
                                    <li class=""><a href="/src/admin/settinglist" class="">Settings</a></li>
                                     <li class=""><a href="/src/admin/featurelist" class="">Authorzation</a></li>
                                    </c:if>
                            </ul>
                        </li>

                </div>
            </div>
        </nav>
        <!-- [ navigation menu ] end -->

        <!-- [ Header ] start -->
        <header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed">
            <div class="m-header">
                <a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
                <a href="index.html" class="b-brand">
                    <img src="assets/images/logo.svg" alt="" class="logo images">
                    <img src="assets/images/logo-icon.svg" alt="" class="logo-thumb images">
                </a>
            </div>
            <a class="mobile-menu" id="mobile-header" href="#!">
                <i class="feather icon-more-horizontal"></i>
            </a>
            <div class="collapse navbar-collapse">
                <a href="#!" class="mob-toggler"></a>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <div class="main-search open">
                            <div class="input-group">
                                <input type="text" id="m-search" class="form-control" placeholder="Search . . .">
                                <a href="#!" class="input-group-append search-close">
                                    <i class="feather icon-x input-group-text"></i>
                                </a>
                                <span class="input-group-append search-btn btn btn-primary">
                                    <i class="feather icon-search input-group-text"></i>
                                </span>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li>
                        <div class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
                            <div class="dropdown-menu dropdown-menu-right notification">
                                <div class="noti-head">
                                    <h6 class="d-inline-block m-b-0">Notifications</h6>
                                    <div class="float-right">
                                        <a href="#!" class="m-r-10">mark as read</a>
                                        <a href="#!">clear all</a>
                                    </div>
                                </div>
                                <ul class="noti-body">
                                    <li class="n-title">
                                        <p class="m-b-0">NEW</p>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>John Doe</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>5 min</span></p>
                                                <p>New ticket Added</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="n-title">
                                        <p class="m-b-0">EARLIER</p>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>10 min</span></p>
                                                <p>Prchace New Theme and make payment</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>12 min</span></p>
                                                <p>currently login</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
                                                <p>Prchace New Theme and make payment</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>1 hour</span></p>
                                                <p>currently login</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>2 hour</span></p>
                                                <p>Prchace New Theme and make payment</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="noti-footer">
                                    <a href="#!">show all</a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown drp-user">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="icon feather icon-settings"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-notification">
                                <div class="pro-head">
                                    <img src="assets/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
                                    <span>John Doe</span>
                                    <a href="auth-signin.html" class="dud-logout" title="Logout">
                                        <i class="feather icon-log-out"></i>
                                    </a>
                                </div>
                                <ul class="pro-body">
                                    <li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> Settings</a></li>
                                    <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
                                    <li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li>
                                    <li><a href="/src/comment/logout" class="dropdown-item"><i class="feather icon-lock"></i> Log out</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </header>
        <!-- [ Header ] end -->
    </body>
    <script src="/src/assests/js/vendor-all.min.js"></script>
    <script src="/src/assests/plugins/bootstrap4/js/bootstrap.min.js"></script>
    <script src="/src/assests/js/pcoded.min.js"></script>

</html>
