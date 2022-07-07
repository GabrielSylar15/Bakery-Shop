<%-- 
    Document   : header2
    Created on : Jun 1, 2022, 9:51:40 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Chikery</title><link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300i,400,400i,500,500i,600,600i,700&amp;display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/src/assests/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="/src/assests/plugins/bootstrap4/css/bootstrap.min.css">
        <link rel="stylesheet" href="/src/assests/plugins/owl-carousel/assets/owl.carousel.css">
        <link rel="stylesheet" href="/src/assests/plugins/slick/slick/slick.css">
        <link rel="stylesheet" href="/src/assests/plugins/lightGallery-master/dist/css/lightgallery.min.css">
        <link rel="stylesheet" href="/src/assests/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
        <link rel="stylesheet" href="/src/assests/plugins/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" href="/src/assests/plugins/select2/dist/css/select2.min.css">
        <link rel="stylesheet" href="/src/assests/plugins/chikery-icon/style.css">
        <link rel="stylesheet" href="/src/assests/css/toast.css"> 
        <link rel="stylesheet" href="/src/assests/css/style.css">
        <!--        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">-->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- jQuery -->
        <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
        <!-- Popper JS -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
        <!-- Bootstrap JS -->
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>

    </head>
    <style>
        .modal-backdrop.show{
            z-index: 10 !important;
        }
    </style>
    <body>
    <body>
        <header class="header header--default" data-sticky="true">
            <div class="header__left">
                <p><i class="fa fa-clock-o"></i> 08:00 am - 08:30 pm</p>
            </div>
            <div class="header__center">
                <nav class="header__navigation left">
                    <ul class="menu">
                        <li class="menu-item-has-children"><a href="/src/comment/homepage">Home</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>

                        </li>
                        <li class="menu-item-has-children"><a href="/src/customer/productlist">Product</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>

                        </li>
                        <li class="current-menu-item "><a href="/src/customer/bloglist">About</a>
                        </li>
                    </ul>
                </nav>
                <div class="header__logo"><a class="ps-logo" href="/src/comment/homepage"><img src="https://drive.google.com/uc?export=view&id=1n41W0PEHblSOuPGGGNijvExmsWOWVKn3" alt=""></a></div>
                <nav class="header__navigation right">
                    <ul class="menu">
                        <li class="menu-item-has-children"><a href="/src/customer/bloglist">Blogs</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>

                        </li>
                        <li class="menu-item-has-children"><a href="/src/customer/bloglist">News</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>

                        </li>
                        <li class="current-menu-item "><a href="contact-us.html">Contact</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="header__right">
                <div class="header__actions">
                    <div class="ps-cart--mini">
                        <c:if test="${sessionScope.user == null}">
                            <a class="ps-cart__toggle" href="/src/customer/cartdetails"><i class="fa fa-shopping-basket"></i><span><i></i></span></a>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <a class="ps-cart__toggle" href="/src/customer/cartdetails">
                                <i class="fa fa-shopping-basket"></i>
                                <span><i>${sessionScope.cartUser.carts.size()}</i></span>
                            </a>
                        </c:if>
                    </div>
                    <c:if test="${sessionScope.user == null}">
                        <a data-toggle="modal" class="ps-search-btn" href="#myRegisterForm"><i class="fa fa-user-plus"></i></a>
                        <a data-toggle="modal" href="#loginModal"><i class="fa fa-sign-in" ></i></a>
                    </c:if>
                    <c:if test="${sessionScope.user != null}">
                        <div class="ps-cart--mini"><i class="fa fa-bars"></i></a>
                            <div class="ps-cart__content">
                                <div class="ps-cart__items">
                                    <div class="ps-product--mini-cart">
                                        <div class="ps-product__content"><a class="ps-product__title" href="/src/user/userlist">Admin Manage</a>
                                        </div>
                                    </div>
                                    <div class="ps-product--mini-cart">
                                        <div class="ps-product__content"><a class="ps-product__title" href="/src/marketing/sliderlist">Marketing Manage</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--<a href="../customer/myorder?Id=${user.id}"><i class="fa fa-shopping-basket"></i></a>-->
                        <a href="/src/account/userprofile?Id=${user.id}"><i class="fa fa-user"></i></a>
                        <a href="/src/comment/logout"><i class="fa fa-sign-out" ></i></a>
                    </c:if>
                </div>
                <!--Login-->
                <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding: 200px 200px">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header border-bottom-0">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-title text-center">
                                    <h3 id="h3Login" style="">Login</h3>
                                </div>
                                <div class="d-flex flex-column text-center">
                                    <form method="POST" action="/src/comment/login">
                                        <div class="form-group">
                                            <input type="email" class="form-control" style="font-weight: 300; border-radius:0.25rem; size: 0" id="Email" name="Email" placeholder="Your email address..." required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" style="font-weight: 300" id="Password" name="Password" placeholder="Your password..." required>
                                        </div>
                                        <button type="submit" class="btn btn-info " style="
                                                margin-top: 20px;
                                                font-size: 18px;
                                                font-weight: 400;
                                                display: block;
                                                width: 100%;text-align: center;
                                                border-radius: 3rem;
                                                ">Login</button>
                                    </form>


                                </div>
                            </div>
                            <div class="modal-footer" >

                                <div class="container">
                                    <div class="row" style="text-align: center">
                                        <div class="col">
                                            <a href="/src/account/resetpassword" class="text-info"> Forget Password </a>
                                        </div>
                                        <div class="col">
                                            <a href="#a" class="text-info">   Register </a>
                                        </div>

                                    </div>
                                </div>




                            </div>
                        </div>
                    </div>
                </div>




                <!-- Register-->
                <div class="modal" id="myRegisterForm">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h2 class="text-center">Register New Account</h2> 
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="/src/user/register" method="post">
                                    <div class="form-group">
                                        <input type="text" name="Name" class="form-control" placeholder="Enter your Name" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="Email" class="form-control" placeholder="Enter your Email" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" id="regispassword" name="Password" class="form-control" placeholder="Enter Password" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" id="repassword" name="Repassword" class="form-control" placeholder="Re-enter Password" required>
                                    </div>
                                    <div id="passalert">

                                    </div>
                                    <div class="form-group">
                                        <input type="text" id="phone" name="Mobile" class="form-control" placeholder="Enter your Mobile Number" required>
                                    </div>
                                    <div id="phonealert">

                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="Address" class="form-control" placeholder="Enter your Address" required>
                                    </div>
                                    <h6>
                                        Gender
                                    </h6>
                                    <div class="form-gender">
                                        <input type="radio" name="Gender" class="gender-radio" value="1" required>
                                        <label for="gender">
                                            Male
                                        </label>
                                        <input type="radio" name="Gender" class="gender-radio" value="0" required>
                                        <label for="gender">
                                            Female
                                        </label>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

        </header>
        <header class="header header--mobile" data-sticky="false">
            <div class="header__content">
                <div class="header__left"><a class="ps-toggle--sidebar" href="#navigation-mobile"><i class="fa fa-bars"></i></a></div>
                <div class="header__center"><a class="ps-logo" href="#"><img src="https://drive.google.com/uc?export=view&id=1n41W0PEHblSOuPGGGNijvExmsWOWVKn3" alt=""></a></div>
                <div class="header__right">
                    <div class="header__actions"><a href="#"><i class="fa fa-heart-o"></i></a></div>
                </div>
            </div>
        </header>
        <div class="ps-panel--sidebar" id="cart-mobile">
            <div class="ps-panel__header">
                <h3>Shopping Cart</h3>
            </div>
            <div class="navigation__content">
                <div class="ps-cart--mobile">
                    <div class="ps-cart__content">
                        <div class="ps-cart__items">
                            <div class="ps-product--mini-cart">
                                <div class="ps-product__thumbnail"><a href="#"><img src="img/product/12.png" alt=""></a></div>
                                <div class="ps-product__content"><span class="ps-btn--close"></span><a class="ps-product__title" href="product-default.html">Jean Woman Summer</a>
                                    <p><strong>Quantity: 1</strong></p><small>$12.00</small>
                                </div>
                            </div>
                            <div class="ps-product--mini-cart">
                                <div class="ps-product__thumbnail"><a href="#"><img src="img/product/13.png" alt=""></a></div>
                                <div class="ps-product__content"><span class="ps-btn--close"></span><a class="ps-product__title" href="product-default.html">Jean Woman Summer</a>
                                    <p><strong>Quantity: 1</strong></p><small>$12.00</small>
                                </div>
                            </div>
                        </div>
                        <div class="ps-cart__footer">
                            <h3>Sub Total:<strong>$48.00</strong></h3>
                            <figure><a class="ps-btn" href="shopping-cart.html">View Cart</a><a class="ps-btn ps-btn--dark" href="checkout.html">Checkout</a></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ps-panel--sidebar" id="navigation-mobile">
            <div class="ps-panel__header">
                <h3>Menu</h3>
            </div>
            <div class="ps-panel__content">
                <ul class="menu--mobile">
                    <li class="menu-item-has-children"><a href="/src/HomepageController">Home</a><span class="sub-toggle"></span>

                    </li>
                    <li class="menu-item-has-children"><a href="/src/product/productlist">Shop</a><span class="sub-toggle"></span>

                    </li>
                    <li class="current-menu-item "><a href="/src/BlogListController">About</a>
                    </li>
                    <li class="menu-item-has-children"><a href="/src/BlogListController">Pages</a><span class="sub-toggle"></span>

                    </li>
                    <li class="menu-item-has-children"><a href="/src/BlogListController">News</a><span class="sub-toggle"></span>

                    </li>
                    <li class="current-menu-item "><a href="contact-us.html">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navigation--list">
            <div class="navigation__content"><a class="navigation__item active" href="/src/HomepageController"><i class="fa fa-home"></i></a><a class="navigation__item ps-toggle--sidebar" href="#navigation-mobile"><i class="fa fa-bars"></i></a><a class="navigation__item ps-toggle--sidebar" href="#search-sidebar"><i class="fa fa-search"></i></a><a class="navigation__item ps-toggle--sidebar" href="#cart-mobile"><i class="fa fa-shopping-basket"></i></a></div>
        </div>
    </body>
</html>
<div class="toastx">
</div> 
<script src="/src/assests/js/toast.js"></script>
<script>
    <c:if test="${requestScope.mess=='Fail'        }">
            Alert({
            type: "error",
            content: "Email or Password incorrect!!!!"
            })
    </c:if>
    <c:if test="${requestScope.mess=='Check your Email'                                                }">
                Alert({
            type: "success",
            content: "Check your Email!!"
        })
        </c:if>
                <c:if test="${requestScope.mess=='Cancel success'                                                }">
                Alert({
            type: "success",
            content: "Cancel success!!"
        })
        </c:if>
                <c:if test="${requestScope.mess=='Add successf                                ull'}">
                Alert({
            type: "success",
            content: "Add successfull!!"
        })
        </c:if>

                </script>
                <!-- Custom Script -->      
                <script>
                    $(document).ready(function () {
            $('#loginModal').modal('show');
            $(function () {
            $('[data-toggle="tooltip"]').tooltip()
            })
            });
        </script>