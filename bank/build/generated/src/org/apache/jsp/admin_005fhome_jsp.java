package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>ADMIN HOME</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .heading h1{\n");
      out.write("                text-align: left;\n");
      out.write("                background-size: 100%;\n");
      out.write("                font-family: Arial, Helvetica, sans-serif;\n");
      out.write("                font-style: normal;\n");
      out.write("                background-color: dodgerblue;\n");
      out.write("                background-size: cover;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                padding: 10px 30px;\n");
      out.write("                color: aliceblue; \n");
      out.write("            }\n");
      out.write("            heading{\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                padding: 0;\n");
      out.write("                margin: 0;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .link{\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: gainsboro;\n");
      out.write("                \n");
      out.write("                border-bottom: 1px solid #fff;\n");
      out.write("                font-family: Arial, Helvetica, sans-serif;\n");
      out.write("            }\n");
      out.write("            .link a{\n");
      out.write("                float: right;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color:black;\n");
      out.write("                display: inline-block;\n");
      out.write("                \n");
      out.write("                text-align: center;\n");
      out.write("                padding: 16px 24px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .link a:hover{\n");
      out.write("                color:dodgerblue;\n");
      out.write("            }\n");
      out.write("            .link .back{\n");
      out.write("                float: left;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color:black;\n");
      out.write("                display: inline-block;\n");
      out.write("                \n");
      out.write("                text-align: center;\n");
      out.write("                padding: 16px 24px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                \n");
      out.write("\n");
      out.write("            }\n");
      out.write("                \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"heading\">\n");
      out.write("            <h1>ADMIN HOME</h1>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"link\">\n");
      out.write("            <a href=\"index.html\" class=\"back\"> BACK</a>\n");
      out.write("            <a href=\"logout.jsp\">LOGOUT</a>\n");
      out.write("        <a href=\"delete.jsp\">DELETE BRANCH</a>\n");
      out.write("        <a href=\"view_branch.jsp\">BRANCH DETAILS</a>\n");
      out.write("        <a href=\"add_branch.jsp\">ADD BRANCH</a>\n");
      out.write("        </div>\n");
      out.write("        <img src=\"admin-img.jpg\" width=\"100%\" height=\"650px\">\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
