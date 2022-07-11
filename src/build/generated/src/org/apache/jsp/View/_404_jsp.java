package org.apache.jsp.View;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class _404_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>\r\n");
      out.write("    body {\r\n");
      out.write("  background-color: #2F3242;\r\n");
      out.write("}\r\n");
      out.write("svg {\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  top: 50%;\r\n");
      out.write("  left: 50%;\r\n");
      out.write("  margin-top: -250px;\r\n");
      out.write("  margin-left: -400px;\r\n");
      out.write("}\r\n");
      out.write(".message-box {\r\n");
      out.write("  height: 200px;\r\n");
      out.write("  width: 380px;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  top: 50%;\r\n");
      out.write("  left: 50%;\r\n");
      out.write("  margin-top: -100px;\r\n");
      out.write("  margin-left: 50px;\r\n");
      out.write("  color: #FFF;\r\n");
      out.write("  font-family: Roboto;\r\n");
      out.write("  font-weight: 300;\r\n");
      out.write("}\r\n");
      out.write(".message-box h1 {\r\n");
      out.write("  font-size: 60px;\r\n");
      out.write("  line-height: 46px;\r\n");
      out.write("  margin-bottom: 40px;\r\n");
      out.write("}\r\n");
      out.write(".buttons-con .action-link-wrap {\r\n");
      out.write("  margin-top: 40px;\r\n");
      out.write("}\r\n");
      out.write(".buttons-con .action-link-wrap a {\r\n");
      out.write("  background: #68c950;\r\n");
      out.write("  padding: 8px 25px;\r\n");
      out.write("  border-radius: 4px;\r\n");
      out.write("  color: #FFF;\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("  font-size: 14px;\r\n");
      out.write("  transition: all 0.3s linear;\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  margin-right: 10px\r\n");
      out.write("}\r\n");
      out.write(".buttons-con .action-link-wrap a:hover {\r\n");
      out.write("  background: #5A5C6C;\r\n");
      out.write("  color: #fff;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#Polygon-1 , #Polygon-2 , #Polygon-3 , #Polygon-4 , #Polygon-4, #Polygon-5 {\r\n");
      out.write("  animation: float 1s infinite ease-in-out alternate;\r\n");
      out.write("}\r\n");
      out.write("#Polygon-2 {\r\n");
      out.write("  animation-delay: .2s; \r\n");
      out.write("}\r\n");
      out.write("#Polygon-3 {\r\n");
      out.write("  animation-delay: .4s; \r\n");
      out.write("}\r\n");
      out.write("#Polygon-4 {\r\n");
      out.write("  animation-delay: .6s; \r\n");
      out.write("}\r\n");
      out.write("#Polygon-5 {\r\n");
      out.write("  animation-delay: .8s; \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@keyframes float {\r\n");
      out.write("\t100% {\r\n");
      out.write("    transform: translateY(20px);\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("@media (max-width: 450px) {\r\n");
      out.write("  svg {\r\n");
      out.write("    position: absolute;\r\n");
      out.write("    top: 50%;\r\n");
      out.write("    left: 50%;\r\n");
      out.write("    margin-top: -250px;\r\n");
      out.write("    margin-left: -190px;\r\n");
      out.write("  }\r\n");
      out.write("  .message-box {\r\n");
      out.write("    top: 50%;\r\n");
      out.write("    left: 50%;\r\n");
      out.write("    margin-top: -100px;\r\n");
      out.write("    margin-left: -190px;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<svg width=\"380px\" height=\"500px\" viewBox=\"0 0 837 1045\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\r\n");
      out.write("    <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\r\n");
      out.write("        <path d=\"M353,9 L626.664028,170 L626.664028,487 L353,642 L79.3359724,487 L79.3359724,170 L353,9 Z\" id=\"Polygon-1\" stroke=\"#007FB2\" stroke-width=\"6\" sketch:type=\"MSShapeGroup\"></path>\r\n");
      out.write("        <path d=\"M78.5,529 L147,569.186414 L147,648.311216 L78.5,687 L10,648.311216 L10,569.186414 L78.5,529 Z\" id=\"Polygon-2\" stroke=\"#EF4A5B\" stroke-width=\"6\" sketch:type=\"MSShapeGroup\"></path>\r\n");
      out.write("        <path d=\"M773,186 L827,217.538705 L827,279.636651 L773,310 L719,279.636651 L719,217.538705 L773,186 Z\" id=\"Polygon-3\" stroke=\"#795D9C\" stroke-width=\"6\" sketch:type=\"MSShapeGroup\"></path>\r\n");
      out.write("        <path d=\"M639,529 L773,607.846761 L773,763.091627 L639,839 L505,763.091627 L505,607.846761 L639,529 Z\" id=\"Polygon-4\" stroke=\"#F2773F\" stroke-width=\"6\" sketch:type=\"MSShapeGroup\"></path>\r\n");
      out.write("        <path d=\"M281,801 L383,861.025276 L383,979.21169 L281,1037 L179,979.21169 L179,861.025276 L281,801 Z\" id=\"Polygon-5\" stroke=\"#36B455\" stroke-width=\"6\" sketch:type=\"MSShapeGroup\"></path>\r\n");
      out.write("    </g>\r\n");
      out.write("</svg>\r\n");
      out.write("<div class=\"message-box\">\r\n");
      out.write("  <h1>404</h1>\r\n");
      out.write("  <p>Page not found</p>\r\n");
      out.write("  <div class=\"buttons-con\">\r\n");
      out.write("    <div class=\"action-link-wrap\">\r\n");
      out.write("      <a onclick=\"history.back(-1)\" class=\"link-button link-back-button\">Go Back</a>\r\n");
      out.write("      <a href=\"/src/HomepageController\" class=\"link-button\">Go to Home Page</a>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>");
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
