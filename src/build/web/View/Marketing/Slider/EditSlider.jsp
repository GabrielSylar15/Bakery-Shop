<%-- 
    Document   : EditSlider
    Created on : Jun 14, 2022, 9:45:19 AM
    Author     : hellb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
        <meta name="description" content="Flash Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
        <meta name="keywords"
              content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, Flash Able, Flash Able bootstrap admin template">
        <meta name="author" content="Codedthemes" />
        <!-- Favicon icon -->
        <link rel="icon" href="/src/assests/img/favicon.ico" type="image/x-icon">
        <!-- fontawesome icon -->
        <link rel="stylesheet" href="/src/assests/plugins/font-awesome/css/font-awesome.min.css">
        <!-- animation css -->
        <link rel="stylesheet" href="/src/assests/plugins/animation/css/animate.min.css">
        <!-- vendor css -->
        <link rel="stylesheet" href="/src/assests/css/style_admin.css">
        <!--for Alert-->
        <link rel="stylesheet" href="/src/assests/css/toast.css">
    </head>

    <style>
        .table-striped img{
            height: 50px;
            width: 50px;
        }
    </style>

    <body class="">
        <!-- [ Pre-loader ] start -->
        <div class="loader-bg">
            <div class="loader-track">
                <div class="loader-fill"></div>
            </div>
        </div>
        <!-- [ Pre-loader ] End -->
        <!-- [ navigation menu ] start -->
        <nav class="pcoded-navbar menupos-fixed menu-light brand-blue ">
            <div class="navbar-wrapper ">
                <div class="navbar-brand header-logo">
                    <a href="index.html" class="b-brand">
                        <img src="../assets/images/logo.svg" alt="" class="logo images">
                        <img src="../assets/images/logo-icon.svg" alt="" class="logo-thumb images">
                    </a>
                    <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
                </div>
                <div class="navbar-content scroll-div">
                    <ul class="nav pcoded-inner-navbar">
                        <li class="nav-item pcoded-menu-caption">
                            <label>Navigation</label>
                        </li>
                        <li class="nav-item">
                            <a href="index.html" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
                        </li>
                        <li class="nav-item pcoded-menu-caption">
                            <label>UI Element</label>
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-box"></i></span><span class="pcoded-mtext">Componant</span></a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="bc_button.html" class="">Button</a></li>
                                <li class=""><a href="bc_badges.html" class="">Badges</a></li>
                                <li class=""><a href="bc_breadcrumb-pagination.html" class="">Breadcrumb & paggination</a>
                                </li>
                                <li class=""><a href="bc_collapse.html" class="">Collapse</a></li>
                                <li class=""><a href="bc_progress.html" class="">Progress</a></li>
                                <li class=""><a href="bc_tabs.html" class="">Tabs & pills</a></li>
                                <li class=""><a href="bc_typography.html" class="">Typography</a></li>
                            </ul>
                        </li>
                        <li class="nav-item pcoded-menu-caption">
                            <label>Forms &amp; table</label>
                        </li>
                         <li class="nav-item">
                            <a href="/src/marketing/productlist" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Product</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="/src/marketing/sliderlist" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Slider
                                    </span></a>
                        </li>
                        <li class="nav-item">
                            <a href="/src/marketing/postlist" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Post
                                    </span></a>
                        </li>
                        <li class="nav-item pcoded-menu-caption">
                            <label>Chart & Maps</label>
                        </li>
                        <li class="nav-item">
                            <a href="chart-morris.html" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-pie-chart"></i></span><span
                                    class="pcoded-mtext">Chart</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="map-google.html" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a>
                        </li>
                        <li class="nav-item pcoded-menu-caption">
                            <label>Pages</label>
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-lock"></i></span><span
                                    class="pcoded-mtext">Authentication</span></a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="auth-signup.html" class="" target="_blank">Sign up</a></li>
                                <li class=""><a href="auth-signin.html" class="" target="_blank">Sign in</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a href="sample-page.html" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-sidebar"></i></span><span class="pcoded-mtext">Sample
                                    page</span></a></li>
                        <li class="nav-item disabled"><a href="#!" class="nav-link"><span class="pcoded-micon"><i
                                        class="feather icon-power"></i></span><span class="pcoded-mtext">Disabled
                                    menu</span></a></li>
                    </ul>
                    <div class="card text-center">
                        <div class="card-block">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <i class="feather icon-sunset f-40"></i>
                            <h6 class="mt-3">Upgrade to pro</h6>
                            <p>upgrade for get full themes and 30min support</p>
                            <a href="https://codedthemes.com/item/flash-able-bootstrap-admin-template/" target="_blank"
                               class="btn btn-gradient-primary btn-sm text-white m-0">Upgrade</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <!-- [ navigation menu ] end -->

        <!-- [ Header ] start -->
        <header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed">
            <div class="m-header">
                <a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
                <a href="index.html" class="b-brand">
                    <img src="../assets/images/logo.svg" alt="" class="logo images">
                    <img src="../assets/images/logo-icon.svg" alt="" class="logo-thumb images">
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
                                        <p class="m-b-0">NEW SLIDER</p>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="../assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
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
                                            <img class="img-radius" src="../assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>10 min</span></p>
                                                <p>Prchace New Theme and make payment</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="../assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>12 min</span></p>
                                                <p>currently login</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="../assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
                                                <p>Prchace New Theme and make payment</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="../assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>1 hour</span></p>
                                                <p>currently login</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification">
                                        <div class="media">
                                            <img class="img-radius" src="../assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
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
                               
                                </div>
                                <ul class="pro-body">
                                    <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> Profile</a>
                                    </li>
                                    <li><a href="/src/HomepageController" class="dropdown-item"><i class="feather icon-settings"></i>
                                            User Site</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </header>
        <!-- [ Header ] end -->
        <!-- [ Main Content ] start -->
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
                                                    <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                                    <li class="breadcrumb-item"><a href="#!">Marketting</a></li>
                                                    <li class="breadcrumb-item"><a href="#!">Edit Slider</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ breadcrumb ] end -->
                                <!-- [ Main Content ] start -->
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="card">
                                          
                                            <div class="card-body table-border-style">
                                                <div class="table-responsive">
                                                <form action="../marketing/editslider" method="post" enctype="multipart/form-data">
                                                        <div class="modal-header">						
                                                            <h4 class="modal-title">Edit Slider</h4>
                                                           <a href="../marketing/sliderlist"> <input type="button"
                                                                                                      class="btn btn-success" value="Back to List"></a>
                                                        </div>

                                                        <div class="modal-body">					
                                                            <div class="form-group">
                                                                <label>Slider ID</label>
                                                                <input value="${slider.sliderID}" name="sliderId" type="text" class="form-control" readonly required>
                                                            </div>
                                                            <c:if test="${slider.productID.productID != 0}">
                                                                <div class="form-group">
                                                                    <label>ProductId</label>
                                                                    <input value="${slider.productID.productID}" name="productId" type="text" class="form-control"  readonly required>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${slider.postID.postID != 0}">
                                                                <div class="form-group">
                                                                    <label>PostId</label>
                                                                    <input value="${slider.postID.postID}" name="postId" type="text" class="form-control" readonly  required>
                                                                </div>
                                                            </c:if>
                                                            <div class="form-group">
                                                                <label>Title</label>
                                                                <input value="${slider.title}" name="title" type="text" class="form-control"   required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Back link</label>
                                                                <input value="${slider.backlink}" name="backlink" type="text" class="form-control"   required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Image</label>
                                                                <div class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm">
                                                                    <input id="upload" name="image" type="file" onchange="readURL(this);" class="form-control border-0">
                                                                  

                                                                </div>

                                                                <!-- Uploaded image area-->

                                                                <div class="image-area mt-4"><img id="imageResult" src="${slider.image}" alt="" class="img-fluid rounded shadow-sm mx-auto d-block"></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Note</label>
                                                                <textarea name="note" class="form-control"   required>${slider.notes}</textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Status</label>
                                                                <select name="statusSlider" class="form-control" aria-label="Default select example">
                                                                    <option ${slider.status == 1?"selected":""} value="1">Active</option>
                                                                    <option ${slider.status == 2?"selected":""} value="2">Deactive</option>
                                                                </select>
                                                            </div>

                                                        </div>

                                                        <div class="modal-footer">
                                                            <input type="submit" class="btn btn-succsess" value="Save">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="/src/assests/js/vendor-all.min.js"></script>
        <script src="/src/assests/plugins/bootstrap4/js/bootstrap.min.js"></script>
        <script src="/src/assests/js/pcoded.min.js"></script>
         <script src="https://cdn.ckeditor.com/4.19.0/standard-all/ckeditor.js"></script>
 <script>

    function myFunction() {
      let title = document.forms["formInsert"]["title"].value;
      let brief = document.forms["formInsert"]["briefInformation"].value;
      let Description = document.forms["formInsert"]["Description"].value;
      let thumbnail = document.forms["formInsert"]["thumbnail"].value;
      let category = document.forms["formInsert"]["postCategoryID"].value;
      let status = document.forms["formInsert"]["status"].value;
      if (title == "" || brief == "" || Description == "" || thumbnail == "" || category == "" || status == "") {
        alert("All content must be filled out");
        return false;
      }
    }
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
          $('#imageResult')
            .attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
      }
    }

    $(function () {
      $('#upload').on('change', function () {
        readURL(input);
      });
    });
    var input = document.getElementById('upload');
    var infoArea = document.getElementById('upload-label');

    input.addEventListener('change', showFileName);

    function showFileName(event) {
      var input = event.srcElement;
      var fileName = input.files[0].name;
      infoArea.textContent = 'File name: ' + fileName;
    }
    CKEDITOR.replace('Description', {
      extraPlugins: 'editorplaceholder',
      editorplaceholder: 'Write your description here...',
      removeButtons: 'PasteFromWord'
    });


  </script>
    </body>

</html>
