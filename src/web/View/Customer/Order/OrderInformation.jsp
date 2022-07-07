<%-- 
    Document   : OrderInformation
    Created on : Jun 9, 2022, 4:03:20 PM
    Author     : Huy Thai
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Information</title>
    </head>

    <link rel="stylesheet" href="/src/assests/css/style.css">
    <body>
        <%@include file="../../public/header.jsp" %>
        <div class="container ">
            <div class="ps-shopping-cart row pl-1 pr-1">
                <div class="row">
                    <div class="table-responsive col-9 pt-4">
                        <table class="table ps-table ps-table--shopping-cart">
                            <thead>
                                <tr>
                            <div style="font-size: 20px;">
                                Order ID: ${requestScope.order.oderID} </br>
                                Order Date : ${requestScope.order.orderDate} </br>
                                Status : ${requestScope.order.orderStatus}
                            </div>

                            </tr>
                            <tr>
                                <th>Product</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Discount</th>
                                <!--<th>Total</th>-->
                                <th></th>
                            </tr>
                            </thead>

                            <c:forEach items="${requestScope.order_details}" var="odd">
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="ps-product--cart">
                                                <div class="ps-product__thumbnail">
                                                    <img src="${odd.productId.thumbnail}" alt="">
                                                    <a class="ps-product__overlay" href="product-detail.html"></a></div>
                                                <div class="ps-product__content">
                                                    <a class="ps-product__title" href="product-detail.html">${odd.productId.productName}</a>
                                                    <p>${odd.productId.categoryID.categoryName}</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>$${odd.productId.price}</td>
                                        <td>
                                            <div class="form-group--number">
                                                <p>${odd.quantity}</p>
                                            </div>
                                        </td>
                                        <td>
                                            ${odd.productId.discount}
                                        </td>
                                    </tr>
                                <td>
                                    <div class="ps-section__actions">
                                        <a class="ps-btn ps-btn--outline" href="/src/customer/productdetail?productID=${odd.productId.productID}">By Again</a>
                                        <a class="ps-btn ps-btn--outline" href="/src/product/details?productID=${odd.productId.productID}">Feedback</a>
                                        <a class="ps-btn" href="#">Contacts Seller</a>
                                    </div>
                                </td>
                                </tbody>
                            </c:forEach>
                            <td>Total Cost</td>
                            <td>$${requestScope.order.totalMoney}</td>
                        </table>
                        <div class="ps-section__actions" style="text-align: center">
                            <a class="ps-btn" href="/src/customer/cartdetails" >Update</a>
                            <button type="button" class="ps-btn" data-toggle="modal" data-target="#exampleModal">
                                Cancel
                            </button>
                        </div>
                    </div>
                    <div class="col-3 mt-3">
                        <aside class="widget widget_search mt-4">
                            <form class="ps-form--widget-search" action="productlist" method="get">
                                <input class="form-control" type="text" placeholder="Search" name="searchkeyword">
                                <button type="submit"><i class="fa fa-search" ></i></button>
                            </form>  
                        </aside>
                        <aside class="widget widget_shop widget_categories">
                            <p class="ps-product__title">CATEGORIES</p>
                            <ul>
                                <!-- print list category-->
                                <c:forEach items="${sessionScope.listCategory}" var="C">
                                    <li><a  href="productlist?categorykeyword=${C.categoryID}">${C.categoryName}</a></li>
                                    </c:forEach>
                            </ul>
                            <div class="pagination">
                                <ul class="pagination">
                                    <c:if test="${pageCate >1}">  
                                        <li><a class="page-link" href="orderinfor?pageCate=${pageCate-1}"><i class="fa fa-caret-left"></i></a></li>
                                            </c:if> 
                                    <li><a class="page-link" href="orderinfor?pageCate=${pageCate}">${pageCate}/${endCaPage}</a></li>
                                        <c:if test="${pageCate < endCaPage }">
                                        <li><a class="page-link" href="orderinfor?pageCate=${pageCate+1}"><i class="fa fa-caret-right"></i></a></li>
                                            </c:if>
                                </ul> 
                            </div>
                        </aside>
                        <aside class="widget widget_shop widget_recent-product">
                            <p class="ps-product__title">LATEST PRODUCT </p>

                            <c:forEach items="${topProduct}" var="T">
                                <div class="ps-product--sidebar">
                                    <div class="ps-product__thumbnail" >
                                        <a class="ps-product__overlay" href="details?productID=${T.productID}"><img src="${T.thumbnail}"  alt=""/></a>
                                    </div>
                                    <div class="ps-product__content">
                                        <a class="ps-product__title" style="padding-top: 10px" href="details?productID=${T.productID}">${T.productName}</a> 
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

                    <!--                         <aside class="widget widget_blog widget_recent-posts">
                                                <p class="ps-product__title">CONTACTS/LINKS </p>
                                            </aside>-->
                </div>
                <div class="row">
                    <div class="ps-section__footer">
                        <figure class="ps-shopping-cart__total">
                            <figcaption>User Information</figcaption>
                            <table class="table">
                                <tr>
                                    <td>Full Name</td>
                                    <td><strong>${requestScope.user.name}</strong></td>
                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <c:if test="${requestScope.user.gender == true}" >
                                        <td><strong>Male</strong></td>
                                    </c:if>
                                    <c:if test="${requestScope.user.gender == false}" >
                                        <td><strong>Female</strong></td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><strong>${requestScope.user.email}</strong></td>
                                </tr>
                                <tr>
                                    <td>Mobile</td>
                                    <td><strong>${requestScope.user.mobile}</strong></td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td><strong>${requestScope.user.address}</strong></td>
                                </tr>
                            </table>
                            <!--<a class="ps-btn ps-btn--fullwidth" href="#">Proceed to checkout</a>-->
                        </figure>
                    </div>
                </div>
            </div>

        </div>
        <!-- Button trigger modal -->

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Do You Want Cancel Order</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                        <form action="/src/customer/orderinfor" method="post">
                            <button type="submit" class="btn btn-primary">Yes</button>
                            <input type="hidden" name="OrderID" value="${requestScope.order.oderID}">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../../public/footer.jsp" %>
    </body>
</html>