package org.apache.jsp.View.Admin.Feature;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FeatureList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/View/Admin/Feature/../../public/adNavbar.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <title>Admin - Feature List</title>\r\n");
      out.write("        <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->\r\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("        <!--[if lt IE 11]>\r\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\r\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\r\n");
      out.write("            <![endif]-->\r\n");
      out.write("        <!-- Meta -->\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("        <meta name=\"description\"\r\n");
      out.write("              content=\"Flash Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs.\" />\r\n");
      out.write("        <meta name=\"keywords\"\r\n");
      out.write("              content=\"admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, Flash Able, Flash Able bootstrap admin template\">\r\n");
      out.write("        <meta name=\"author\" content=\"Codedthemes\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <style>\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("    <body class=\"\">\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <!-- Favicon icon -->\r\n");
      out.write("    <link rel=\"icon\" href=\"/src/assests/img/favicon.ico\" type=\"image/x-icon\">\r\n");
      out.write("    <!-- fontawesome icon -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/src/assests/plugins/font-awesome/css/font-awesome.min.css\">\r\n");
      out.write("    <!-- animation css -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/src/assests/plugins/animation/css/animate.min.css\">\r\n");
      out.write("    <!-- vendor css -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/src/assests/css/style_admin.css\">\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- [ navigation menu ] start -->\r\n");
      out.write("        <nav class=\"pcoded-navbar menupos-fixed menu-light brand-blue \">\r\n");
      out.write("            <div class=\"navbar-wrapper \">\r\n");
      out.write("                <div class=\"navbar-brand header-logo\">\r\n");
      out.write("                    <a href=\"index.html\" class=\"b-brand\">\r\n");
      out.write("                        <img src=\"assets/images/logo.svg\" alt=\"\" class=\"logo images\">\r\n");
      out.write("                        <img src=\"assets/images/logo-icon.svg\" alt=\"\" class=\"logo-thumb images\">\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a class=\"mobile-menu\" id=\"mobile-collapse\" href=\"#!\"><span></span></a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"navbar-content scroll-div\">\r\n");
      out.write("                    <ul class=\"nav pcoded-inner-navbar\">\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"index.html\" class=\"nav-link\"><span class=\"pcoded-micon\"><i class=\"feather icon-home\"></i></span><span class=\"pcoded-mtext\">Dashboard</span></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"nav-item pcoded-hasmenu\">\r\n");
      out.write("                            <a href=\"#!\" class=\"nav-link\"><span class=\"pcoded-micon\"><i class=\"fa fa-tasks\"></i></span><span class=\"pcoded-mtext\">Componant</span></a>\r\n");
      out.write("                            <ul class=\"pcoded-submenu\">\r\n");
      out.write("\r\n");
      out.write("                                ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- [ navigation menu ] end -->\r\n");
      out.write("\r\n");
      out.write("        <!-- [ Header ] start -->\r\n");
      out.write("        <header class=\"navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed\">\r\n");
      out.write("            <div class=\"m-header\">\r\n");
      out.write("                <a class=\"mobile-menu\" id=\"mobile-collapse1\" href=\"#!\"><span></span></a>\r\n");
      out.write("                <a href=\"index.html\" class=\"b-brand\">\r\n");
      out.write("                    <img src=\"assets/images/logo.svg\" alt=\"\" class=\"logo images\">\r\n");
      out.write("                    <img src=\"assets/images/logo-icon.svg\" alt=\"\" class=\"logo-thumb images\">\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <a class=\"mobile-menu\" id=\"mobile-header\" href=\"#!\">\r\n");
      out.write("                <i class=\"feather icon-more-horizontal\"></i>\r\n");
      out.write("            </a>\r\n");
      out.write("            <div class=\"collapse navbar-collapse\">\r\n");
      out.write("                <a href=\"#!\" class=\"mob-toggler\"></a>\r\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <div class=\"main-search open\">\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"text\" id=\"m-search\" class=\"form-control\" placeholder=\"Search . . .\">\r\n");
      out.write("                                <a href=\"#!\" class=\"input-group-append search-close\">\r\n");
      out.write("                                    <i class=\"feather icon-x input-group-text\"></i>\r\n");
      out.write("                                </a>\r\n");
      out.write("                                <span class=\"input-group-append search-btn btn btn-primary\">\r\n");
      out.write("                                    <i class=\"feather icon-search input-group-text\"></i>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <div class=\"dropdown\">\r\n");
      out.write("                            <a class=\"dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\"><i class=\"icon feather icon-bell\"></i></a>\r\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-right notification\">\r\n");
      out.write("                                <div class=\"noti-head\">\r\n");
      out.write("                                    <h6 class=\"d-inline-block m-b-0\">Notifications</h6>\r\n");
      out.write("                                    <div class=\"float-right\">\r\n");
      out.write("                                        <a href=\"#!\" class=\"m-r-10\">mark as read</a>\r\n");
      out.write("                                        <a href=\"#!\">clear all</a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <ul class=\"noti-body\">\r\n");
      out.write("                                    <li class=\"n-title\">\r\n");
      out.write("                                        <p class=\"m-b-0\">NEW</p>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"notification\">\r\n");
      out.write("                                        <div class=\"media\">\r\n");
      out.write("                                            <img class=\"img-radius\" src=\"assets/images/user/avatar-1.jpg\" alt=\"Generic placeholder image\">\r\n");
      out.write("                                            <div class=\"media-body\">\r\n");
      out.write("                                                <p><strong>John Doe</strong><span class=\"n-time text-muted\"><i class=\"icon feather icon-clock m-r-10\"></i>5 min</span></p>\r\n");
      out.write("                                                <p>New ticket Added</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"n-title\">\r\n");
      out.write("                                        <p class=\"m-b-0\">EARLIER</p>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"notification\">\r\n");
      out.write("                                        <div class=\"media\">\r\n");
      out.write("                                            <img class=\"img-radius\" src=\"assets/images/user/avatar-2.jpg\" alt=\"Generic placeholder image\">\r\n");
      out.write("                                            <div class=\"media-body\">\r\n");
      out.write("                                                <p><strong>Joseph William</strong><span class=\"n-time text-muted\"><i class=\"icon feather icon-clock m-r-10\"></i>10 min</span></p>\r\n");
      out.write("                                                <p>Prchace New Theme and make payment</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"notification\">\r\n");
      out.write("                                        <div class=\"media\">\r\n");
      out.write("                                            <img class=\"img-radius\" src=\"assets/images/user/avatar-3.jpg\" alt=\"Generic placeholder image\">\r\n");
      out.write("                                            <div class=\"media-body\">\r\n");
      out.write("                                                <p><strong>Sara Soudein</strong><span class=\"n-time text-muted\"><i class=\"icon feather icon-clock m-r-10\"></i>12 min</span></p>\r\n");
      out.write("                                                <p>currently login</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"notification\">\r\n");
      out.write("                                        <div class=\"media\">\r\n");
      out.write("                                            <img class=\"img-radius\" src=\"assets/images/user/avatar-1.jpg\" alt=\"Generic placeholder image\">\r\n");
      out.write("                                            <div class=\"media-body\">\r\n");
      out.write("                                                <p><strong>Joseph William</strong><span class=\"n-time text-muted\"><i class=\"icon feather icon-clock m-r-10\"></i>30 min</span></p>\r\n");
      out.write("                                                <p>Prchace New Theme and make payment</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"notification\">\r\n");
      out.write("                                        <div class=\"media\">\r\n");
      out.write("                                            <img class=\"img-radius\" src=\"assets/images/user/avatar-3.jpg\" alt=\"Generic placeholder image\">\r\n");
      out.write("                                            <div class=\"media-body\">\r\n");
      out.write("                                                <p><strong>Sara Soudein</strong><span class=\"n-time text-muted\"><i class=\"icon feather icon-clock m-r-10\"></i>1 hour</span></p>\r\n");
      out.write("                                                <p>currently login</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"notification\">\r\n");
      out.write("                                        <div class=\"media\">\r\n");
      out.write("                                            <img class=\"img-radius\" src=\"assets/images/user/avatar-1.jpg\" alt=\"Generic placeholder image\">\r\n");
      out.write("                                            <div class=\"media-body\">\r\n");
      out.write("                                                <p><strong>Joseph William</strong><span class=\"n-time text-muted\"><i class=\"icon feather icon-clock m-r-10\"></i>2 hour</span></p>\r\n");
      out.write("                                                <p>Prchace New Theme and make payment</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                                <div class=\"noti-footer\">\r\n");
      out.write("                                    <a href=\"#!\">show all</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <div class=\"dropdown drp-user\">\r\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n");
      out.write("                                <i class=\"icon feather icon-settings\"></i>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-right profile-notification\">\r\n");
      out.write("                                <div class=\"pro-head\">\r\n");
      out.write("                                    <img src=\"assets/images/user/avatar-1.jpg\" class=\"img-radius\" alt=\"User-Profile-Image\">\r\n");
      out.write("                                    <span>John Doe</span>\r\n");
      out.write("                                    <a href=\"auth-signin.html\" class=\"dud-logout\" title=\"Logout\">\r\n");
      out.write("                                        <i class=\"feather icon-log-out\"></i>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <ul class=\"pro-body\">\r\n");
      out.write("                                    <li><a href=\"#!\" class=\"dropdown-item\"><i class=\"feather icon-settings\"></i> Settings</a></li>\r\n");
      out.write("                                    <li><a href=\"#!\" class=\"dropdown-item\"><i class=\"feather icon-user\"></i> Profile</a></li>\r\n");
      out.write("                                    <li><a href=\"message.html\" class=\"dropdown-item\"><i class=\"feather icon-mail\"></i> My Messages</a></li>\r\n");
      out.write("                                    <li><a href=\"/src/comment/logout\" class=\"dropdown-item\"><i class=\"feather icon-lock\"></i> Log out</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("        <!-- [ Header ] end -->\r\n");
      out.write("    </body>\r\n");
      out.write("    <script src=\"/src/assests/js/vendor-all.min.js\"></script>\r\n");
      out.write("    <script src=\"/src/assests/plugins/bootstrap4/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"/src/assests/js/pcoded.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("        <section class=\"pcoded-main-container\">\r\n");
      out.write("            <div class=\"pcoded-wrapper\">\r\n");
      out.write("                <div class=\"pcoded-content\">\r\n");
      out.write("                    <div class=\"pcoded-inner-content\">\r\n");
      out.write("                        <div class=\"main-body\">\r\n");
      out.write("                            <div class=\"page-wrapper\">\r\n");
      out.write("                                <!-- [ breadcrumb ] start -->\r\n");
      out.write("                                <div class=\"page-header\">\r\n");
      out.write("                                    <div class=\"page-block\">\r\n");
      out.write("                                        <div class=\"row align-items-center\">\r\n");
      out.write("                                            <div class=\"col-md-12\">\r\n");
      out.write("                                                <div class=\"page-header-title\">\r\n");
      out.write("                                                    <h5 class=\"m-b-10\">Feature List</h5>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <ul class=\"breadcrumb\">\r\n");
      out.write("                                                    <li class=\"breadcrumb-item\"><a href=\"index.html\"><i\r\n");
      out.write("                                                                class=\"feather icon-home\"></i></a></li>\r\n");
      out.write("                                                    <li class=\"breadcrumb-item\"><a href=\"#!\">Admin</a></li>\r\n");
      out.write("                                                    <li class=\"breadcrumb-item\"><a href=\"#!\">Feature List</a></li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!-- [ breadcrumb ] end -->\r\n");
      out.write("                                <!-- [ Main Content ] start -->\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                    <!-- [ stiped-table ] start -->\r\n");
      out.write("                                    <div class=\"col-xl-12\">\r\n");
      out.write("                                        <div class=\"card\">\r\n");
      out.write("                                            <div class=\"card-header\">\r\n");
      out.write("                                                <h5>Striped Table</h5>\r\n");
      out.write("                                                <span class=\"d-block m-t-5\">use class <code>table-striped</code> inside\r\n");
      out.write("                                                    table element</span>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"card-body table-border-style\" id=\"customformControl\">\r\n");
      out.write("                                                <div class=\"table-responsive\">\r\n");
      out.write("\r\n");
      out.write("                                                    <div class=\"status-filter\">\r\n");
      out.write("                                                        <select id=\"status\" class=\"form-control\">\r\n");
      out.write("                                                            <option value=\"\">Show Role Name</option>\r\n");
      out.write("                                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                                        </select>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                    <table id=\"filterTable\" class=\"table  hover\">\r\n");
      out.write("                                                        <thead>\r\n");
      out.write("                                                            <tr>\r\n");
      out.write("                                                                <th>Description</th>\r\n");
      out.write("                                                                <th>URL</th>\r\n");
      out.write("                                                                \r\n");
      out.write("                                                                <th>Role Name</th>\r\n");
      out.write("                                                            </tr>\r\n");
      out.write("                                                        </thead>\r\n");
      out.write("                                                        <tbody>\r\n");
      out.write("                                                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                                        </tbody>\r\n");
      out.write("                                                        <tfoot>\r\n");
      out.write("                                                            <tr>\r\n");
      out.write("                                                                <th>RoleName</th>\r\n");
      out.write("                                                                <th>URL</th>\r\n");
      out.write("                                                                <th>Description</th>\r\n");
      out.write("                                                                <th>Action</th>\r\n");
      out.write("                                                            </tr>\r\n");
      out.write("                                                        </tfoot>\r\n");
      out.write("\r\n");
      out.write("                                                    </table>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!-- [ stiped-table ] end -->\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!-- [ Main Content ] end -->\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Required Js -->\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\r\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("        \r\n");
      out.write("        <script>\r\n");
      out.write("            $(\"document\").ready(function () {\r\n");
      out.write("                $(\"#filterTable\").dataTable({\r\n");
      out.write("                    \"searching\": true\r\n");
      out.write("                });\r\n");
      out.write("                //Get a reference to the new datatable\r\n");
      out.write("                var table = $('#filterTable').DataTable();\r\n");
      out.write("                //Take the category filter drop down and append it to the datatables_filter div. \r\n");
      out.write("                //You can use this same idea to move the filter anywhere withing the datatable that you want.\r\n");
      out.write("\r\n");
      out.write("                $(\"#status\").insertBefore($(\"#filterTable_filter.dataTables_filter\"));\r\n");
      out.write("    \r\n");
      out.write("                //Get the column index for the Category column to be used in the method below ($.fn.dataTable.ext.search.push)\r\n");
      out.write("                //This tells datatables what column to filter on when a user selects a value from the dropdown.\r\n");
      out.write("                //It's important that the text used here (Category) is the same for used in the header of the column to filter\r\n");
      out.write("\r\n");
      out.write("                var statusIndex = 0;\r\n");
      out.write("                $(\"#filterTable th\").each(function (i) {\r\n");
      out.write("                    if ($($(this)).html() == \"Role Name\") {\r\n");
      out.write("                        statusIndex = i;\r\n");
      out.write("                        return false;\r\n");
      out.write("                    }\r\n");
      out.write("                });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                //Use the built in datatables API to filter the existing rows by the Category column\r\n");
      out.write("\r\n");
      out.write("                $.fn.dataTable.ext.search.push(\r\n");
      out.write("                        function (settings, data, dataIndex) {\r\n");
      out.write("                            var selectedItem = $('#status').val()\r\n");
      out.write("                            var status = data[statusIndex];\r\n");
      out.write("                            if (selectedItem === \"\" || status.includes(selectedItem)) {\r\n");
      out.write("                                return true;\r\n");
      out.write("                            }\r\n");
      out.write("                            return false;\r\n");
      out.write("                        }\r\n");
      out.write("                );\r\n");
      out.write("               \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                //Set the change event for the Category Filter dropdown to redraw the datatable each time\r\n");
      out.write("                //a user selects a new filter.\r\n");
      out.write("\r\n");
      out.write("                $(\"#status\").change(function (e) {\r\n");
      out.write("                    table.draw();\r\n");
      out.write("                });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                table.draw();\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user.roleID eq 3}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                    <li class=\"\"><a href=\"/src/marketing/postlist\" class=\"\">Post</a></li>\r\n");
        out.write("                                    <li class=\"\"><a href=\"/src/marketing/productlist\" class=\"\">Product</a></li>\r\n");
        out.write("                                    <li class=\"\"><a href=\"/src/marketing/sliderlist\" class=\"\">Slider</a></li>\r\n");
        out.write("                                    <li class=\"\"><a href=\"bc_collapse.html\" class=\"\">Customer</a></li>\r\n");
        out.write("                                    <li class=\"\"><a href=\"/src/marketing/feedbacklist\" class=\"\">Feedback</a></li>\r\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user.roleID eq 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                     <li class=\"\"><a href=\"/src/user/userlist\" class=\"\">User</a></li>\r\n");
        out.write("                                    <li class=\"\"><a href=\"/src/admin/settinglist\" class=\"\">Settings</a></li>\r\n");
        out.write("                                    \r\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lr}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("r");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${r.roleName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${r.roleName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\r\n");
          out.write("                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lf}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("c");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                                <tr>\r\n");
          out.write("                                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.url}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                                    \r\n");
          out.write("                                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.roleName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                                </tr>\r\n");
          out.write("                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}
