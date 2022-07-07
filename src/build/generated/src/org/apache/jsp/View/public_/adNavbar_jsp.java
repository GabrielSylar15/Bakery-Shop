package org.apache.jsp.View.public_;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adNavbar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("    \r\n");
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
      out.write("                                <li class=\"\"><a href=\"/src/marketing/postlist\" class=\"\">Post</a></li>\r\n");
      out.write("                                <li class=\"\"><a href=\"/src/marketing/productlist\" class=\"\">Product</a></li>\r\n");
      out.write("                                <li class=\"\"><a href=\"/src/marketing/sliderlist\" class=\"\">Slider</a></li>\r\n");
      out.write("                                <li class=\"\"><a href=\"bc_collapse.html\" class=\"\">Customer</a></li>\r\n");
      out.write("                                <li class=\"\"><a href=\"bc_progress.html\" class=\"\">Feedback</a></li>\r\n");
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
      out.write("                                    <li><a href=\"auth-signin.html\" class=\"dropdown-item\"><i class=\"feather icon-lock\"></i> Lock Screen</a></li>\r\n");
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
      out.write("    <script src=\"/src/assests/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"/src/assests/js/pcoded.min.js\"></script>\r\n");
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
}
