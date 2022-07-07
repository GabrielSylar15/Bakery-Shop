<%-- 
    Document   : CartDetails
    Created on : Jun 9, 2022, 9:49:32 PM
    Author     : hellb
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300i,400,400i,500,500i,600,600i,700&amp;display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../assests/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assests/plugins/bootstrap4/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assests/plugins/owl-carousel/assets/owl.carousel.css">
        <link rel="stylesheet" href="../assests/plugins/slick/slick/slick.css">
        <link rel="stylesheet" href="../assests/plugins/lightGallery-master/dist/css/lightgallery.min.css">
        <link rel="stylesheet" href="../assests/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
        <link rel="stylesheet" href="../assests/plugins/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" href="../assests/plugins/select2/dist/css/select2.min.css">
        <link rel="stylesheet" href="../assests/plugins/chikery-icon/style.css">
        <link rel="stylesheet" href="../assests/css/style.css">
        <title>Product List</title>
        <style>
            .ps-shopping__right .ps-form--widget-search{
                width: 80%;
            }
            .ps-table thead > tr > th:first-child {
                text-align: left;
                padding-left: 20px !important;

            }
            .ps-table thead > tr > th{
                text-align: center;
            }
            .ps-shopping-cart .ps-shopping-cart__total table tbody tr.total{
                border-top:  none !important;
            }
            .ps-section__actions{
                width: 300px !important;
            }

            .ps-table--shopping-cart tbody > tr > td:first-child {
                min-width: 20px !important;
                padding-left: 20px !important;
            }
            .ps-pagination{
                margin: 20px 0px;
            }
            .buynowform{
                font-weight: 700;
                
                padding: 30px;
                max-width: 540px; 
                background-color: #f7f3ee;
                color: #555;
                font-size: 20px;
                margin: auto;
            }
            .buynowform input{
                max-width: 100%;
                    max-height: 80%;
            }
        </style> 
    </head>
    <body>
        <%@include file="../../public/header.jsp" %>
        <div class="ps-hero ps-hero--shopping bg--cover" id="bgcoverhero">
            <div class="ps-hero__container">
                <div class="ps-breadcrumb">
                    <ul class="breadcrumb">
                        <li><a href="/src/comment/homepage">Home</a></li>
                        <li>Shop Page</li>
                    </ul>
                </div>
                <h1 class="ps-hero__heading">Shop Products</h1>
            </div>
        </div>
        <div class="ps-page--shop">
            <div class="container">
                <div class="ps-shopping row">
                    <div class="ps-shopping__left col-3">
                        <aside class="widget widget_shop widget_categories">
                            <h3>Categories</h3>
                            <ul>
                                <!-- print list category-->

                                <c:forEach items="${listCategoryCart}" var="C">
                                    <li><a  href="cartdetails?categorykeyword=${C.categoryID}">${C.categoryName}</a></li>
                                    </c:forEach>

                            </ul>
                            <div class="pagination">
                                <ul class="pagination">
                                    <c:if test="${pageCate > CA_PAZE_SIZE}">
                                        <c:if test="${pageCate >1}">  
                                            <li><a class="page-link" href="cartdetails?pageCate=${pageCate-1}"><i class="fa fa-caret-left"></i></a></li>
                                                </c:if> 
                                        <li><a class="page-link" href="cartdetails?pageCate=${pageCate}">${pageCate}/${endCaPage}</a></li>
                                            <c:if test="${pageCate < endCaPage }">
                                            <li><a class="page-link" href="cartdetails?pageCate=${pageCate+1}"><i class="fa fa-caret-right"></i></a></li>
                                                </c:if>
                                            </c:if>
                                </ul> 
                            </div>
                        </aside>

                        <aside class="widget widget_shop widget_recent-product">
                            <h3 class="widget-title">Latest Products</h3>
                            <c:forEach items="${topProduct}" var="T">
                                <div class="ps-product--sidebar">
                                    <div class="ps-product__thumbnail" >
                                        <a class="ps-product__overlay" href="/src/customer/productdetail?productID=${T.productID}"><img src="${T.thumbnail}"  alt=""/></a>
                                    </div>
                                    <div class="ps-product__content">
                                        <a class="ps-product__title" style="padding-top: 10px" href="/src/customer/productdetail?productID=${T.productID}">${T.productName}</a> 
                                        <p><span>${T.weight}g </span><span> ${T.time} Min</span><span> ${T.degree} <sup>o</sup>C</span></p>
                                        <c:choose>
                                            <c:when test="${T.discount ==0}"><span class="ps-product__price">$${T.price}</span></c:when>
                                            <c:otherwise><span class="ps-product__price"><del>$${T.price}</del>    $<fmt:formatNumber type="number"  maxFractionDigits="2" value="${T.price*(1- T.discount)}"/></span></c:otherwise>
                                        </c:choose>
                                    </div>

                                </div>
                            </c:forEach>

                        </aside>
                    </div>
                    <div class="ps-shopping__right col-9 pl-5">
                        <div class="ps-shopping-cart" style="padding-top: 0px;">
                            <div class="ps-shopping__top">
                                <p></p>
                                <figure>
                                    <form class="ps-form--widget-search" action="cartdetails" method="get">
                                        <input class="form-control" type="text" placeholder="Search" name="searchkeyword">
                                        <button type="submit"><i class="fa fa-search" ></i> Search</button>
                                    </form>                            
                                </figure>
                            </div>
                            <div class="table-responsive">
                                <table class="table ps-table ps-table--shopping-cart">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Product Name</th>
                                            <th>Unit Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:set var="i" value="0"></c:set>

                                            <tr>
                                                <td>${i=i+1}</td>

                                            <td>
                                                <div class="ps-product--cart">
                                                    <div class="ps-product__thumbnail"><img src="https://scontent.fhan14-2.fna.fbcdn.net/v/t1.6435-9/65927495_700421257077844_8548296185440370688_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=174925&_nc_ohc=1-U4cz2MLhoAX8FIUGi&_nc_ht=scontent.fhan14-2.fna&oh=00_AT_BD_3HIcI5MJl9YDkf7SsjI-QPLuDG2MHVwlxtdjrCBg&oe=62DB002C" alt=""/><a class="ps-product__overlay" ></a></div>

                                                    <div class="ps-product__content"><a class="ps-product__title" >duc an cut</a></div>
                                                </div>
                                            </td>

                                            <td>200
                                            <td>
                                                200
                                            </td>
                                            <td/>300</td>
                                        </tr>


                                    </tbody>
                                </table>
                            </div>
                            <div class="ps-section__footer row">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="buynowform " >
                                            <h3>Information of customer</h3>
                                            <form action="buynow" method="POST">
                                                <div class="mb-3">
                                                    <label for="name" class="form-label">Name</label>
                                                    <input type="text" class="form-control" id="name" name="name" aria-describedby="name">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="phone" class="form-label">Phone</label>
                                                    <input type="text" class="form-control" id="phone" name="phone" aria-describedby="phone">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="address" class="form-label">Address</label>
                                                    <input type="text" class="form-control" id="address" name="address" aria-describedby="address">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="email" class="form-label">Email</label>
                                                    <input type="text" class="form-control" id="email" name="email" aria-describedby="email">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="note" class="form-label">Note</label>
                                                    <textarea class="form-control" id="note" name="note" rows="2"></textarea>
                                                </div>
                                                <button  type="submit" class="btn btn-primary w-100 ps-btn ps-btn--fullwidth">Submit</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4">

                                        <figure style="margin: 30px"><a class="ps-btn " style=" padding: 10px 60px" href="/src/customer/cartdetails">Change</a></figure>

                                        <figure class="ps-shopping-cart__total">
                                            <figcaption>Cart Total</figcaption>
                                            <table class="table">


                                                <tr class="totalPrice">
                                                    <td>Total Price:</td>
                                                    <td><span id="totalprice">$<fmt:formatNumber  type="number"  maxFractionDigits="2" value="${totalPrice}"/></span></td>
                                                </tr>
                                            </table><a class="ps-btn ps-btn--fullwidth" href="#">Submit</a>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../../public/footer.jsp" %>

</html>
