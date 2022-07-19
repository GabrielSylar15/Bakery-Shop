<%-- 
    Document   : newjsp
    Created on : Jul 17, 2022, 2:37:17 PM
    Author     : hellb
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <!-- Favicon icon -->
        <link rel="icon" href="/src/assets/images/favicon.ico" type="image/x-icon">
        <!-- fontawesome icon -->

        <link href="/src/assests/fonts/fontawesome/css/fontawesome-all.min.css" rel="stylesheet" type="text/css"/>
        <!-- animation css -->

        <link href="/src/assests/plugins/animation/css/animate.min.css" rel="stylesheet" type="text/css"/>
        <!-- morris css -->

        <link href="/src/assests/plugins/chart-morris/css/morris.css" rel="stylesheet" type="text/css"/>
        <!-- vendor css -->
        <link href="/src/assests/css/style.css" rel="stylesheet" type="text/css"/>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    </head>
    <style>
        .form-control {
            background-color: white;
        }
        .cardnam .card{
            height: 300px;
        }
    </style>

    <body class="">
        <!--        navbar-->
        <%@include file="../../public/adNavbar.jsp" %>

        

        <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <form action="dashboard" method="GET">
                                <div class="page-wrapper">
                                    <!-- [ breadcrumb ] start -->
                                    <div class="page-header">
                                        <div class="page-block">
                                            <div class="row align-items-center">
                                                <div class="col-md-12">
                                                    <div class="page-header-title">
                                                        <h5>Home</h5>
                                                    </div>
                                                    <ul class="breadcrumb">
                                                        <li class="breadcrumb-item"><a href="index.html"><i
                                                                    class="feather icon-home"></i></a></li>
                                                        <li class="breadcrumb-item"><a href="#!">Analytics Dashboard</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">


                                        <div class="form-group col-md-3">
                                            <span>From</span>
                                            <input value="${from}" name="from" type="date" id="checkin"
                                                   class="form-control" width="285" onchange="checkdate(this);" >
                                        </div>
                                        <div class="form-group col-md-3">
                                            <span>To</span>
                                            <input value="${to}"  name="to" type="date" id="datepickerTo"
                                                   class="form-control" width="286" style="margin-left: 3px; " onchange="checkoutdate(this);">

                                        </div>
                                        
                                        <div class="form-group col-md-3">

                                            <input type="submit" onclick="checkDateDifference(datepickerFrom, datepickerTo)" name="get" class="btn btn-primary"
                                                   style="margin-left: 6px;margin-top: 18px;" name="search" value="Filter">
                                        </div>
                                    </div>
                                    <!-- [ breadcrumb ] end -->
                                    <!-- [ Main Content ] start -->
                                    <div class="cardnam row">

                                        <div class="col-md-6 col-xl-3">
                                            <div class="card card-social">
                                                <div class="card-block border-bottom">
                                                    <div class="row align-items-center justify-content-center">
                                                        <div class="col-auto">
                                                            <i class="fab fa-twitter text-c-info f-36"></i>
                                                        </div>
                                                        <div class="col text-right">
                                                            <h3>${countAllOrderByDate}</h3>
                                                            <h5 class="text-c-info mb-0"> <span class="text-muted">NEW ORDERS</span></h5>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-block">
                                                    <div class="row align-items-center justify-content-center card-active mb-3">
                                                        <div class="col-6">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Cancelled:</span>${countOrderByDateCancel}</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countOrderByDateCancel/countAllOrderByDate*100}%;height:6px;" aria-valuenow="40"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <h6 class="text-center  m-b-10"><span
                                                                    class="text-muted m-r-5">Pending:</span>${countOrderByDatePending}</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countOrderByDatePending/countAllOrderByDate*100}%;height:6px;" aria-valuenow="70"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row align-items-center justify-content-center card-active">
                                                        <div class="col-6">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Processing:</span>${countOrderByDateProcessing}</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countOrderByDateProcessing/countAllOrderByDate*100}%;height:6px;" aria-valuenow="40"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <h6 class="text-center  m-b-10"><span
                                                                    class="text-muted m-r-5">Submitted:</span>${countOrderByDateShipped}</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countOrderByDateShipped/countAllOrderByDate*100}%;height:6px;" aria-valuenow="70"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="card card-social">
                                                <div class="card-block border-bottom">
                                                    <div class="row align-items-center justify-content-center">
                                                        <div class="col-auto">
                                                            <i class="fab fa-twitter text-c-info f-36"></i>
                                                        </div>
                                                        <div class="col text-right">
                                                            <h3>${totalCus}</h3>
                                                            <h5 class="text-c-info mb-0"><span class="text-muted">Customer</span></h5>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-block">
                                                    <div class="row align-items-center justify-content-center card-active">
                                                        <div class="col-6">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Registered:</span>${countCusByDate}</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countCusByDate/totalCus*100}%;height:6px;" aria-valuenow="40"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <h6 class="text-center  m-b-10"><span
                                                                    class="text-muted m-r-5">Bought:</span>${countCusBoughtByDate}</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countCusBoughtByDate/totalCus*100}%;height:6px;" aria-valuenow="70"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="card card-social">
                                                <div class="card-block border-bottom">
                                                    <div class="row align-items-center justify-content-center">
                                                        <div class="col-auto">
                                                            <i class="fab fa-twitter text-c-info f-36"></i>
                                                        </div>
                                                        <div class="col text-right">
                                                            <h3>${countAllRevenues}$</h3>
                                                            <h5 class="text-c-info mb-0"><span class="text-muted">Revenues</span></h5>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-block">
                                                    <div class="row align-items-center justify-content-center card-active mb-3">
                                                        <div class="col-6">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Bready: </span>${countRevenuesByCate5}$</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countRevenuesByCate5/countAllRevenues*100}%;height:6px;" aria-valuenow="40"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <h6 class="text-center  m-b-10"><span
                                                                    class="text-muted m-r-5">Pinpool:</span>${countRevenuesByCate6}$</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countRevenuesByCate6/countAllRevenues*100}%;height:6px;" aria-valuenow="70"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row align-items-center justify-content-center card-active mb-3">
                                                        <div class="col-6">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Deliciuex: </span>${countRevenuesByCate7}$</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countRevenuesByCate7/countAllRevenues*100}%;height:6px;" aria-valuenow="40"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <h6 class="text-center  m-b-10"><span
                                                                    class="text-muted m-r-5">Cake: </span>${countRevenuesByCate8}$</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countRevenuesByCate8/countAllRevenues*100}%;height:6px;" aria-valuenow="70"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row align-items-center justify-content-center card-active">
                                                        <div class="">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Cupke: </span>${countRevenuesByCate9}$</h6>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-c-blue" role="progressbar"
                                                                     style="width:${countRevenuesByCate9/countAllRevenues*100}%;height:6px;" aria-valuenow="40"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="card card-social">
                                                <div class="card-block border-bottom">
                                                    <div class="row align-items-center justify-content-center">
                                                        <div class="col-auto">
                                                            <i class="fab fa-twitter text-c-info f-36"></i>
                                                        </div>
                                                        <div class="col text-right">
                                                            <h3>
                                                                <fmt:formatNumber  type="number"  maxFractionDigits="1" value="${averageStar}"/> <i class="fa fa-star " style="color: blue"></i></h3>
                                                            <h5 class="text-c-info mb-0"><span class="text-muted">Feedback</span></h5>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-block">
                                                    <div class="row align-items-center justify-content-center card-active mb-3">
                                                        <div class="col-6">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Bready: </span><fmt:formatNumber  type="number"  maxFractionDigits="1" value="${averageStarByCate5}"/><i class="fa fa-star " style="color: blue"></i></h6>

                                                        </div>
                                                        <div class="col-6">
                                                            <h6 class="text-center  m-b-10"><span
                                                                    class="text-muted m-r-5">Pinpool:</span><fmt:formatNumber  type="number"  maxFractionDigits="1" value="${averageStarByCate6}"/><i class="fa fa-star " style="color: blue"></i></h6>

                                                        </div>
                                                    </div>
                                                    <div class="row align-items-center justify-content-center card-active mb-3">
                                                        <div class="col-6">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Deliciuex:</span><fmt:formatNumber  type="number"  maxFractionDigits="1" value="${averageStarByCate7}"/><i class="fa fa-star " style="color: blue"></i></h6>

                                                        </div>
                                                        <div class="col-6">
                                                            <h6 class="text-center  m-b-10"><span
                                                                    class="text-muted m-r-5">Cake: </span><fmt:formatNumber  type="number"  maxFractionDigits="1" value="${averageStarByCate8}"/><i class="fa fa-star " style="color: blue"></i></h6>

                                                        </div>
                                                    </div>
                                                    <div class="row align-items-center justify-content-center card-active">
                                                        <div class="">
                                                            <h6 class="text-center m-b-10"><span
                                                                    class="text-muted m-r-5">Cupke: </span><fmt:formatNumber  type="number"  maxFractionDigits="1" value="${averageStarByCate9}"/><i class="fa fa-star " style="color: blue"></i></h6>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="row">
                                        <!-- [ bar-simple Chart ] start -->
                                        <div class="col-xl-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Trend of order counts</h5>
                                                </div>
                                                <div class="card-body">
                                                    <div id="morris-line-chart" style="height:300px "></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- [ bar-simple Chart ] end -->

                                    </div>
                                    <!-- [ Main Content ] end -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Main Content ] end -->

        <!-- Warning Section start -->
        <!-- Older IE warning message -->
        <!--[if lt IE 11]>
        <div class="ie-warning">
            <h1>Warning!!</h1>
            <p>You are using an outdated version of Internet Explorer, please upgrade
               <br/>to any of the following web browsers to access this website.
            </p>
            <div class="iew-container">
                <ul class="iew-download">
                    <li>
                        <a href="http://www.google.com/chrome/">
                            <img src="assets/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assets/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assets/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assets/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assets/images/browser/ie.png" alt="">
                            <div>IE (11 & above)</div>
                        </a>
                    </li>
                </ul>
            </div>
            <p>Sorry for the inconvenience!</p>
        </div>
    <![endif]-->
        <!-- Warning Section Ends -->

        <!-- Required Js -->


        <script src="/src/assests/js/vendor-all.min.js" type="text/javascript"></script>
        <script src="/src/assests/plugins/bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/src/assests/js/pcoded.min.js" type="text/javascript"></script>


        <!-- chart-morris Js -->

        <script src="/src/assests/plugins/chart-morris/js/morris.min.js" type="text/javascript"></script>
        <script src="/src/assests/plugins/chart-morris/js/raphael.min.js" type="text/javascript"></script>
<!--        <script src="/src/assests/js/chart-morris-custom.js" type="text/javascript"></script>-->


    </body>

</html>
<script>
//
             $(document).ready(function () {
                setTimeout(function () {


                    // [ line-angle-chart ] Start
                    Morris.Line({
                        element: 'morris-line-chart',
                        data: [
            <c:forEach items="${chartData}" var="c">
                            {
                                y: '${c.key}',
                                a: ${c.value}

                            },
            </c:forEach>
                        ],
                        xkey: 'y',
                        redraw: true,
                        resize: true,
                        smooth: false,
                        ykeys: ['a'],
                        hideHover: 'auto',
                        responsive: true,
                        labels: ['New Customer'],
                        lineColors: ['#463699']
                    });
                    // [ line-angle-chart ] end

                }, 700);
                // [ Donut-chart ] end
            });       
        
        // [ bar-simple ] chart end
</script>
<script>
    function checkoutdate(x) {
        var date1 = new Date(document.getElementById('checkin').value);
        var date2 = new Date(x.value);
        var checkindate = date1.toISOString().slice(0, 10);
        var inputdate = date2.toISOString().slice(0, 10);
        var date = new Date();
        if (checkindate > inputdate) {
            alert("Check out date must be after checkin date");
            x.value = "";
        } else {
            x.value = inputdate;
        }
    }
</script>                        