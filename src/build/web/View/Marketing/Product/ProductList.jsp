<%-- 
    Document   : UserList2
    Created on : Jun 14, 2022, 5:48:58 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <title>Flash Able - Most Trusted Admin Template</title>
        <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 11]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description"
              content="Flash Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
        <meta name="keywords"
              content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, Flash Able, Flash Able bootstrap admin template">
        <meta name="author" content="Codedthemes" />




        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    </head>
    <style>

    </style>

    <body class="">
        <%@include file="../../public/adNavbar.jsp" %>
        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <!-- [ breadcrumb ] start -->
                                <div class="page-header">
                                    <div class="page-block">
                                        <div class="row align-items-center">
                                            <div class="col-md-12">
                                                <div class="page-header-title">
                                                    <h5 class="m-b-10">Bootstrap Basic Tables</h5>
                                                </div>
                                                <ul class="breadcrumb">
                                                    <li class="breadcrumb-item"><a href="index.html"><i
                                                                class="feather icon-home"></i></a></li>
                                                    <li class="breadcrumb-item"><a href="#!">Bootstrap Table</a></li>
                                                    <li class="breadcrumb-item"><a href="#!">Basic Tables</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ breadcrumb ] end -->
                                <!-- [ Main Content ] start -->
                                <div class="row">


                                    <!-- [ stiped-table ] start -->
                                    <div class="col-xl-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>Striped Table</h5>
                                                <span class="d-block m-t-5">use class <code>table-striped</code> inside
                                                    table element</span>
                                            </div>
                                            <div class="card-body table-border-style" id="customformControl">
                                                <div class="table-responsive">

                                                    <div class="status-filter">
                                                        <select id="status" class="form-control">
                                                            <option value="">Show Status</option>
                                                              <c:forEach items="${lsStatus}" var="c">
                                                                <option value="${c.value}">${c.key}</option>
                                                            </c:forEach>
                                                        </select>


                                                    </div>
                                                    <div class="category-filter">
                                                        <select id="categoryFilter" class="form-control">
                                                            <option value="">Show Category</option>
                                                            <c:forEach items="${lsCategory}" var="c">
                                                                <option value="${c.categoryID}">${c.categoryName}</option>
                                                            </c:forEach>
                                                        </select>


                                                    </div>


                                                    <table id="filterTable" class="table  hover">
                                                        <thead>
                                                            <tr>
                                                                <th>ID</th>
                                                                <th>Product Name</th>
                                                                <th>Title</th>
                                                                <th>Brief</th>
                                                                <th>Thumbnail</th>
                                                                <th>Category</th>
                                                                <th>Price</th>
                                                                <th>Discount</th>
                                                                <th>Status</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${lsProduct}" var="c">
                                                                <tr>
                                                                    <td>${c.productID}</td>
                                                                    <td>${c.productName}</td>
                                                                    <td>${c.title}</td>
                                                                    <td>${c.title}</td>
                                                                    <td><img src="${c.thumbnail}" width="50" height="50"></td>
                                                                    <td>${c.categoryID.categoryName}</td>
                                                                    <td>${c.price}</td>
                                                                    <td>${c.discount}</td>
                                                                    <td>  <c:if test="${c.status == true}">On Shopping</c:if>
                                                                 <c:if test="${c.status == false}">Out of stock</c:if></td>
                                                                    <td>  <a href="/src/marketing/viewpost?productID=${p.productID}"><i class="fa fa-info-circle"></i></a>
                                                                        <a href="/src/marketing/editpost?productID=${p.productID}"> <i class="fa fa-pencil"></i></a>
                                                                        <a href="/src/marketing/changestatuspost?productID=${p.productID}&status=0">
                                                                            <c:if test="${c.status == true}"><i class="fa fa-eye"></i> </c:if> 
                                                                        </a>
                                                                        <a href="/src/marketing/changestatuspost?productID=${p.productID}&status=1">      
                                                                            <c:if test="${c.status == false}"><i class="fa fa-eye-slash"></i> </c:if>   
                                                                        </a> </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>ID</th>
                                                                <th>Product Name</th>
                                                                <th>Title</th>
                                                                <th>Brief</th>
                                                                <th>Thumbnail</th>
                                                                <th>Category</th>
                                                                <th>Price</th>
                                                                <th>Discount</th>
                                                                <th>Status</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </tfoot>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- [ stiped-table ] end -->

                                </div>
                                <!-- [ Main Content ] end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- Required Js -->

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

        <script>
            $("body").append('<div class="fixed-button active"><a href="/src/user/addnew" target="_blank" class="btn btn-md btn-primary"><i class="fa fa-user-plus" aria-hidden="true"></i>New Product</a> </div>');
            var $window = $(window), nav = $(".fixed-button");


        </script>
        <script>
            $("document").ready(function () {
                $("#filterTable").dataTable({
                    "searching": true
                });
                //Get a reference to the new datatable
                var table = $('#filterTable').DataTable();
                //Take the category filter drop down and append it to the datatables_filter div. 
                //You can use this same idea to move the filter anywhere withing the datatable that you want.

                $("#status").insertBefore($("#filterTable_filter.dataTables_filter"));
                $("#categoryFilter").insertBefore($("#filterTable_filter.dataTables_filter"));
                //Get the column index for the Category column to be used in the method below ($.fn.dataTable.ext.search.push)
                //This tells datatables what column to filter on when a user selects a value from the dropdown.
                //It's important that the text used here (Category) is the same for used in the header of the column to filter

                var statusIndex = 0;
                $("#filterTable th").each(function (i) {
                    if ($($(this)).html() == "Status") {
                        statusIndex = i;
                        return false;
                    }
                });

                var categoryIndex = 0;
                $("#filterTable th").each(function (i) {
                    if ($($(this)).html() == "Category") {
                        categoryIndex = i;
                        return false;
                    }
                });
                //Use the built in datatables API to filter the existing rows by the Category column

                $.fn.dataTable.ext.search.push(
                        function (settings, data, dataIndex) {
                            var selectedItem = $('#status').val()
                            var status = data[statusIndex];
                            if (selectedItem === "" || status.includes(selectedItem)) {
                                return true;
                            }
                            return false;
                        }
                );
                $.fn.dataTable.ext.search.push(
                        function (settings, data, dataIndex) {
                            var selectedItem = $('#categoryFilter').val()
                            var status = data[categoryIndex];
                            if (selectedItem === "" || categoryIndex.includes(selectedItem)) {
                                return true;
                            }
                            return false;
                        }
                );

                //Set the change event for the Category Filter dropdown to redraw the datatable each time
                //a user selects a new filter.

                $("#status").change(function (e) {
                    table.draw();
                });

                $("#categoryFilter").change(function (e) {
                    table.draw();
                });
                table.draw();
            });

        </script>


    </body>

</html>
