package org.apache.jsp.View.Marketing.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CustomerList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/View/Marketing/Customer/../../public/adNavbar.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("    <title>Flash Able - Most Trusted Admin Template</title>\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 11]>\n");
      out.write("    \t<script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("    \t<script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    \t<![endif]-->\n");
      out.write("    <!-- Meta -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta name=\"description\" content=\"Flash Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs.\" />\n");
      out.write("    <meta name=\"keywords\"\n");
      out.write("        content=\"admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, Flash Able, Flash Able bootstrap admin template\">\n");
      out.write("    <meta name=\"author\" content=\"Codedthemes\" />\n");
      out.write("   \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<body class=\"\">\n");
      out.write("    ");
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
      out.write("\n");
      out.write("    <section class=\"pcoded-main-container\">\n");
      out.write("        <div class=\"pcoded-wrapper\">\n");
      out.write("            <div class=\"pcoded-content\">\n");
      out.write("                <div class=\"pcoded-inner-content\">\n");
      out.write("                    <div class=\"main-body\">\n");
      out.write("                        <div class=\"page-wrapper\">\n");
      out.write("                            <!-- [ breadcrumb ] start -->\n");
      out.write("                            <div class=\"page-header\">\n");
      out.write("                                <div class=\"page-block\">\n");
      out.write("                                    <div class=\"row align-items-center\">\n");
      out.write("                                        <div class=\"col-md-12\">\n");
      out.write("                                            <div class=\"page-header-title\">\n");
      out.write("                                                <h5 class=\"m-b-10\">Dashboard</h5>\n");
      out.write("                                            </div>\n");
      out.write("                                            <ul class=\"breadcrumb\">\n");
      out.write("                                                <li class=\"breadcrumb-item\"><a href=\"index.html\"><i class=\"feather icon-home\"></i></a></li>\n");
      out.write("                                                <li class=\"breadcrumb-item\"><a href=\"#!\">Admin</a></li>\n");
      out.write("                                                <li class=\"breadcrumb-item\"><a href=\"#!\">Customer List</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- [ breadcrumb ] end -->\n");
      out.write("                            <!-- [ Main Content ] start -->\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xl-12\">\n");
      out.write("                                    <div class=\"card\">\n");
      out.write("                                        <div class=\"card-header\">\n");
      out.write("                                            <h5>List Customers</h5>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"card-header\">\n");
      out.write("                                            <h5>Filter</h5>\n");
      out.write("                                            <div class=\"col-md-12\">\n");
      out.write("                                                <form method=\"GET\" action=\"/src/marketing/customer\">\n");
      out.write("                                                    <div class=\"form-group row\">\n");
      out.write("                                                        <div class=\"col-md-6\">\n");
      out.write("                                                            <label for=\"name\">Author</label>\n");
      out.write("                                                            <input type=\"text\" \n");
      out.write("                                                                   class=\"form-control\" \n");
      out.write("                                                                   id=\"author\" \n");
      out.write("                                                                   placeholder=\"Enter Full name\" \n");
      out.write("                                                                   value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.author}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                                                                   name=\"name\">\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"col-md-6\">\n");
      out.write("                                                            <label for=\"title\">Title</label>\n");
      out.write("                                                            <input type=\"email\" class=\"form-control\" \n");
      out.write("                                                                   id=\"title\" \n");
      out.write("                                                                   placeholder=\"Enter Email\" \n");
      out.write("                                                                   value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                                                                   name=\"email\">\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"form-group row\">\n");
      out.write("                                                        <div class=\"col-md-6\">\n");
      out.write("                                                            <label for=\"category\">Category</label>\n");
      out.write("                                                        </div> \n");
      out.write("                                                        <div class=\"col-md-6\">\n");
      out.write("                                                            <label for=\"status\">Status</label>\n");
      out.write("                                                        </div>                                                        \n");
      out.write("                                                    </div>\n");
      out.write("                                                    <button type=\"submit\" class=\"btn btn-primary\">Filter</button>\n");
      out.write("                                                    <a href='/src/marketing/postlist' class=\"btn btn-danger\">Clear all</a>  \n");
      out.write("                                                </form>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"card-body table-border-style\">\n");
      out.write("                                            <div class=\"table-responsive\">\n");
      out.write("                                                <table class=\"table table-striped\">\n");
      out.write("                                                    <thead>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <th>#</th>\n");
      out.write("                                                            <th>Id</th>\n");
      out.write("                                                            <th><a id=\"name\" class=\"toggle-link\" href=\"\">Full Name</a></th>\n");
      out.write("                                                            <th><a >Gender</a></th>\n");
      out.write("                                                            <th><a id=\"Email\" class=\"toggle-link\" href=\"\">Email</a></th>\n");
      out.write("                                                            <th><a id=\"Mobile\" class=\"toggle-link\" href=\"\">Mobile</a></th>\n");
      out.write("                                                            <th><a id=\"Status\" class=\"toggle-link\" href=\"\">Status</a></th>\n");
      out.write("                                                            <th>Actions</th>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                    </thead>\n");
      out.write("                                  \n");
      out.write("                                                </table>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <div class=\"text-center\">\n");
      out.write("        <nav aria-label=\"Page navigation example\">\n");
      out.write("            <ul class=\"pagination\" id=\"pagination\" style=\"justify-content: center\">\n");
      out.write("<!--                <li class=\"page-item\"><a class=\"page-link\" href=\"#\">First</a></li>\n");
      out.write("                <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\n");
      out.write("                <li class=\"page-item\"><a class=\"page-link\" href=\"#\">2</a></li>\n");
      out.write("                <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\n");
      out.write("                <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Last</a></li>-->\n");
      out.write("            </ul>\n");
      out.write("        </nav>   \n");
      out.write("    </div>\n");
      out.write("                                                        \n");
      out.write("    <script src=\"/src/assests/js/pagger.js\"></script>\n");
      out.write("    <script>\n");
      out.write("    function ConfigureUrl(keywords){\n");
      out.write("        let currentUrl = window.location.href;\n");
      out.write("        keywords.forEach(element => {\n");
      out.write("            const params = new URLSearchParams(window.location.search)\n");
      out.write("            let QueryValue = params.get(element);\n");
      out.write("            if(QueryValue!=null){\n");
      out.write("                if(currentUrl.includes(\"?\"+element)){\n");
      out.write("                currentUrl = currentUrl.replaceAll(\"?\"+element+\"=\"+QueryValue,\"\");\n");
      out.write("                }else if(currentUrl.includes(\"&\"+element)){\n");
      out.write("                    currentUrl = currentUrl.replaceAll(\"&\"+element+\"=\"+QueryValue,\"\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("        if(currentUrl.includes(\"?\"))    return (currentUrl+\"&\");\n");
      out.write("        else if(currentUrl.includes(\"&\"))  return (currentUrl.replace(\"&\",\"?\")+\"&\"); \n");
      out.write("        else    return (currentUrl+\"?\"); \n");
      out.write("    }\n");
      out.write("    let keywordsPagging = [\"page_index\"];\n");
      out.write("    let configureUrl = ConfigureUrl(keywordsPagging);\n");
      out.write("    console.log(configureUrl);\n");
      out.write("    pagger({\n");
      out.write("        id: 'pagination',\n");
      out.write("        pageindex: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.page_index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(", \n");
      out.write("        totalpage: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.totalpage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(", \n");
      out.write("        gap: 1, \n");
      out.write("        url: {\n");
      out.write("            firstpage: '<li class=\"page-item\"><a class=\"page-link\" href=\"'+configureUrl+\"page_index=1\"+'\">First</a></li>',\n");
      out.write("            lastpage: '<li class=\"page-item\"><a class=\"page-link\" href=\"'+configureUrl+\"page_index=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.totalpage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"+'\">Last</a></li>',\n");
      out.write("            currentpage: '<li id=\"activepagging\" class=\"active\"><a class=\"page-link\" href=\"'  +configureUrl+\"page_index=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.page_index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"+  '\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.page_index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>',\n");
      out.write("            nextpage: function (i){\n");
      out.write("                return '<li class=\"page-item\"><a class=\"page-link\" href=\"'+configureUrl+\"page_index=\"+ ''+i+'\">'+i+'</a></li>';\n");
      out.write("            }\n");
      out.write("    }});\n");
      out.write("    \n");
      out.write("    var link_data = document.getElementsByClassName(\"toggle-link\");\n");
      out.write("    let keywordsSort = [\"orderby\", \"direction\"];\n");
      out.write("    let configureUrlSort = ConfigureUrl(keywordsSort);\n");
      out.write("    for (var i = 0; i < link_data.length; i++) {\n");
      out.write("        console.log(link_data[i].id)\n");
      out.write("        if(window.location.href.includes(\"desc\"))   link_data[i].href = configureUrlSort + \"orderby=\"+link_data[i].id+\"&direction=asc\";\n");
      out.write("        else    link_data[i].href = configureUrlSort + \"orderby=\"+link_data[i].id+\"&direction=desc\";\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
        out.write("                                     <li class=\"\"><a href=\"/src/admin/featurelist\" class=\"\">Authorzation</a></li>\r\n");
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
}
