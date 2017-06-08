package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mongodb.client.FindIterable;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import com.mongodb.client.MongoCursor;
import static com.mongodb.client.model.Filters.*;
import com.mongodb.client.result.DeleteResult;
import static com.mongodb.client.model.Updates.*;
import com.mongodb.client.result.UpdateResult;
import java.util.ArrayList;
import java.util.List;

public final class mongodb_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("     <meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1256\"> \n");
      out.write("     <title> Test Page</title>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("     <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <script>\n");
      out.write("\tfunction sizeSelect100()\n");
      out.write("\t{\n");
      out.write("\t\tdocument.getElementById(\"demo\").innerHTML=\"100 Well size selected\";\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction sizeSelect50()\n");
      out.write("\t{\n");
      out.write("\t\tdocument.getElementById(\"demo\").innerHTML=\"50 Well size selected\";\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction sizeSelect20()\n");
      out.write("\t{\n");
      out.write("\t\tdocument.getElementById(\"demo\").innerHTML=\"20 Well size selected\";\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction sizeSelect10()\n");
      out.write("\t{\n");
      out.write("\t\tdocument.getElementById(\"demo\").innerHTML=\"10 Well size selected \";\n");
      out.write("\t}\n");
      out.write("  </script>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("\n");
      out.write("body{text-align:center}\n");
      out.write("\n");
      out.write("\t.btn-default{font-size:19px}\n");
      out.write("\n");
      out.write("  .btn-breadcrumb .btn:not(:last-child):after \n");
      out.write("  {\n");
      out.write("  content: \" \";\n");
      out.write("  display: block;\n");
      out.write("  width: 0;\n");
      out.write("  height: 0;\n");
      out.write("  border-top: 17px solid transparent;\n");
      out.write("  border-bottom: 17px solid transparent;\n");
      out.write("  border-left: 10px solid white;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  margin-top: -17px;\n");
      out.write("  left: 100%;\n");
      out.write("  z-index: 3;\n");
      out.write("}\n");
      out.write(".btn-breadcrumb .btn:not(:last-child):before {\n");
      out.write("  content: \" \";\n");
      out.write("  display: block;\n");
      out.write("  width: 0;\n");
      out.write("  height: 0;\n");
      out.write("  border-top: 17px solid transparent;\n");
      out.write("  border-bottom: 17px solid transparent;\n");
      out.write("  border-left: 10px solid rgb(173, 173, 173);\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  margin-top: -17px;\n");
      out.write("  margin-left: 1px;\n");
      out.write("  left: 100%;\n");
      out.write("  z-index: 3;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/** The Spacing **/\n");
      out.write(".btn-breadcrumb .btn {padding:6px 12px 6px 24px;}\n");
      out.write(".btn-breadcrumb .btn:first-child {padding:6px 6px 6px 10px;}\n");
      out.write(".btn-breadcrumb .btn:last-child {padding:6px 18px 6px 24px;}\n");
      out.write("\n");
      out.write("/** Default button **/\n");
      out.write(".btn-breadcrumb .btn.btn-default:not(:last-child):after {border-left: 10px solid #fff;}\n");
      out.write(".btn-breadcrumb .btn.btn-default:not(:last-child):before {border-left: 10px solid #ccc;}\n");
      out.write(".btn-breadcrumb .btn.btn-default:hover:not(:last-child):after {border-left: 10px solid #ebebeb;}\n");
      out.write(".btn-breadcrumb .btn.btn-default:hover:not(:last-child):before {border-left: 10px solid #adadad;}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("</head> \n");
      out.write("     <body> \n");
      out.write("         \n");
      out.write("         \n");
      out.write("         <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("    \t<h2></h2>\n");
      out.write("        <div class=\"btn-group btn-breadcrumb\">\n");
      out.write("            \n");
      out.write("            <a href=\"#\" class=\"btn btn-default\">File Available</a>\n");
      out.write("            <a href=\"#\" class=\"btn btn-default\">MA</a>\n");
      out.write("            <a href=\"#\" class=\"btn btn-default\">UN</a> \n");
      out.write("            <a href=\"#\" class=\"btn btn-default\">Data Aggregation</a>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t<div class=\"col-sm-1\"></div>\n");
      out.write("\t\t\t<div class=\"col-sm-1\">\n");
      out.write("\t\t\t\t<div class=\"btn-group\">\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\">Well Size</button>\n");
      out.write("\t\t\t\t\t \n");
      out.write("\t\t\t\t\t\t<span class=\"caret\"></span>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown-header\">Select the well size</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"divider\"></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" onClick=\"sizeSelect100()\">100</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" onClick=\"sizeSelect50()\">50</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" onClick=\"sizeSelect20()\">20</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" onClick=\"sizeSelect10()\">10</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"col-sm-1\">\n");
      out.write("\t\t\t\t<div class=\"btn-group\">\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\">Select</button>\n");
      out.write("\t\t\t\t\t \n");
      out.write("\t\t\t\t\t\t<span class=\"caret\"></span>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Promote</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Demote</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"col-sm-1\">\n");
      out.write("\t\t\t\t<div class=\"btn-group\">\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-primary\"><A HREF=\"javascript:history.go(0)\"><font color =\"white\">Click to refresh</font></A></button>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<p id=\"demo\"></p>\n");
      out.write("\t</div>\n");
      out.write("</div> \n");
      out.write("         \n");
      out.write("         <div class=\"row\">\n");
      out.write("         ");

             try {
            MongoClient mongoClient = new MongoClient();
             MongoDatabase database = mongoClient.getDatabase("rig_witsml");
            FindIterable<Document> mydatabaserecords = database.getCollection("well").find();
        MongoCursor<Document> iterator = mydatabaserecords.iterator();
        
      out.write("\n");
      out.write("        <table border=\"2\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Well Name</th>\n");
      out.write("                <th>Country</th>\n");
      out.write("                <th>State</th>\n");
      out.write("                <th>Operator</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

        while (iterator.hasNext()) {
            Document doc = iterator.next();
            String country = doc.getString("country");
            String state = doc.getString("state");
            String Operator = doc.getString("operator");
            String name = doc.getString("nameWell");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
 out.println(name);
      out.write("</td>\n");
      out.write("                <td>");
 out.println(country);
      out.write("</td>\n");
      out.write("                <td>");
 out.println(state);
      out.write("</td>\n");
      out.write("                <td>");
 out.println(Operator);
      out.write("</tr> \n");
      out.write("          ");
 }
      out.write("\n");
      out.write("        </table>");

        
} catch (Exception e1) {
    // TODO Auto-generated catch block
    e1.printStackTrace();
}

      out.write("\n");
      out.write("</div>\n");
      out.write("     </body>\n");
      out.write("     </html>\n");
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
