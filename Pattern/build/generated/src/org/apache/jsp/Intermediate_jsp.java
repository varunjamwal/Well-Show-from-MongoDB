package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mongodb.client.DistinctIterable;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
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

public final class Intermediate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>index</title>\n");
      out.write("\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    \n");
      out.write("    #font{font-family:Verdana; border-bottom:solid 3px #f0f3f4}\n");
      out.write("    #font:hover {color:#1794bf; border-bottom:solid 3px #1794bf}\n");
      out.write("    #fontDropdown:hover{font-family:Verdana; color:#ecf0f1; background-color:#707b7c; -webkit-transition-duration:0.4s}\n");
      out.write("    body{overflow-y:scroll; overflow-x:hidden; background-color:#d0d3d4;}\n");
      out.write("\n");
      out.write("    .scrollbar{ \n");
      out.write("        max-height: 200px;\n");
      out.write("        overflow-x:hidden;\n");
      out.write("        overflow-y:scroll; \n");
      out.write("        min-width: 135px;\n");
      out.write("                }\n");
      out.write("    \n");
      out.write("    #ex4::-webkit-scrollbar { width:8px;background-color:white; } \n");
      out.write("    #ex4::-webkit-scrollbar-thumb { background-color:#abb2b9; border-radius:10px; }\n");
      out.write("    #ex4::-webkit-scrollbar-thumb:hover { background-color:#aeb6bf; border:1px solid #808b96; }\n");
      out.write("    #ex4::-webkit-scrollbar-thumb:active { background-color:#aeb6bf; border:1px solid #808b96; }\n");
      out.write("    \n");
      out.write("</style>\t\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"scrollbar\" id=\"ex4\">\n");
      out.write("  \n");
      out.write("<div class=\"row\">\n");
      out.write("    \t<div class=\"col-md-12\">\n");
      out.write("            <nav class=\"navbar navbar-default\" style=\"background-color:#ececec; box-shadow:0 0 30px 0 #727272\">\n");
      out.write("                <div class=\"container\" style=\"margin-top:12px;\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <a class=\"navbar-brand\" href=\"#\" style=\"font-size:35px; font-family:Verdana; color:#1794bf\"><span class=\"glyphicon glyphicon-home\" style=\"font-size:20px; margin-right:20px\"></span>Dashboard</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <ul class=\"nav navbar-nav\" style=\"font-size:20px; margin-left:132px\">\n");
      out.write("                        <li id=\"font\">\n");
      out.write("                            <a href=\"#\">\n");
      out.write("                                <i class=\"fa fa-bar-chart\"></i>\n");
      out.write("                                <span> Dashboard</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li id=\"font\" class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><i class=\"fa fa-line-chart\"></i>\n");
      out.write("                                <span> Patterns</span>\n");
      out.write("                                <span class=\"caret\"></span>\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a id=\"fontDropdown\" href=\"#\">Container</a></li>\n");
      out.write("                                <li><a id=\"fontDropdown\" href=\"#\">Result</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li> \n");
      out.write("                        <li><a href=\"#\"></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>            \n");
      out.write("    </div>  \n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("    <form method=\"post\">\n");
      out.write("\t");
 
                              
            MongoClient mongoClient = new MongoClient();
            MongoDatabase database = mongoClient.getDatabase("rig_witsml");
            MongoCollection collection = database.getCollection("well");
DistinctIterable<String> documents = collection.distinct("field", String.class).filter(eq("fieldchecked", "no"));                    
        
      out.write("\n");
      out.write("\t\t\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\" style=\"width:418px\">\n");
      out.write("                <div class=\"panel panel-default\">\n");
      out.write("                    <div class=\"panel-heading\" style=\"background-color:#1794bf\">\n");
      out.write("                        <h4 class=\"panel-title\">\n");
      out.write("                            <a data-toggle=\"collapse\" href=\"#collapse1\" style=\"text-decoration:none; color:#f8f9f9; font-size:13px; font-family:Verdana;\">Fields<span class=\"glyphicon glyphicon-chevron-down pull-right\"></span></a>\n");
      out.write("                        </h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"collapse1\" class=\"panel-collapse collapse in\">\n");
      out.write("                        <div class=\"panel-body scrollable-menu scrollbar\" id=\"ex4\" style=\"max-height:120px\">\n");
      out.write("                            <ul style=\"list-style-type:none; color:#74bcd4\">\n");
      out.write("\t\t\t\t");

                                    for (String document : documents) {
                                
      out.write("\n");
      out.write("                                    <li><input type=\"checkbox\"> ");
 out.println(document); 
      out.write("</li>\n");
      out.write("                                ");
} 
      out.write("\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("                    </div>\n");
      out.write("                                               \n");
      out.write("                    <div class=\"panel-heading\" style=\"background-color:#1794bf\">\n");
      out.write("                        <h4 class=\"panel-title\">\n");
      out.write("                            <a data-toggle=\"collapse\" href=\"#collapse2\" style=\"text-decoration:none; color:#f8f9f9; font-size:13px; font-family:Verdana;\">Wells<span class=\"glyphicon glyphicon-chevron-down pull-right\"></span></a>\n");
      out.write("                        </h4>\n");
      out.write("                    </div>\n");
      out.write("                               \n");
      out.write("\t\t\t<div id=\"collapse2\" class=\"panel-collapse collapse in\">\n");
      out.write("\t\t\t<div class=\"panel-body scrollable-menu scrollbar\" id=\"ex4\" style=\"max-height:120px; overflow-y:scroll\">\n");
      out.write("                                ");

                                             try{
                                     FindIterable<Document> thedatabaserecords = database.getCollection("well").find();
                                     MongoCursor<Document> welliterator = thedatabaserecords.iterator();
                                      while (welliterator.hasNext()) {
                                           Document doc = welliterator.next();
                                           String wells = doc.getString("nameWell");
                                           String checked = doc.getString("fieldchecked");
                                           if(checked.equals("no") && wells !=null ){    
                                
      out.write("\t\n");
      out.write("                                        \n");
      out.write("                                            <ul style=\"list-style-type:none; color:#74bcd4\">\n");
      out.write("                                                <li><input type=\"checkbox\" name=\"welllist\" value=\"");
      out.print(wells);
      out.write("\"> ");
 out.println(wells); 
      out.write("</li>\n");
      out.write("                                            </ul>\n");
      out.write("                                            \n");
      out.write("                                                ");

                                                    }  
                                                }
                    }
                        catch(Exception e){

}
                                                    
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t                <div class=\"panel-heading\" style=\"background-color:#1794bf\">\n");
      out.write("                                    <h4 class=\"panel-title\">\n");
      out.write("                                        <a data-toggle=\"collapse\" href=\"#collapse3\" style=\"text-decoration:none; color:#f8f9f9; font-size:13px; font-family:Verdana;\">Hole Size<span class=\"glyphicon glyphicon-chevron-down pull-right\"></span></a>\n");
      out.write("                                    </h4>\n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t\n");
      out.write("                                <div id=\"collapse3\" class=\"panel-collapse collapse in\">\n");
      out.write("                                <div class=\"panel-body scrollable-menu scrollbar\" id=\"ex4\" style=\"max-height:120px; overflow-y:scroll\">\n");
      out.write("                                            ");

                                                try{
                                     FindIterable<Document> databaserecords = database.getCollection("data").find();
                                     MongoCursor<Document> dataiterator = databaserecords.iterator();
                                      while (dataiterator.hasNext()) {
                                           Document newdoc = dataiterator.next();
                                           String hole = newdoc.getString("holeSize");
                                           String wchecked = newdoc.getString("holeSelected");
                                           if(wchecked.equals("no") && hole != null){ 
      out.write("   \n");
      out.write("                                \t\n");
      out.write("                                            <ul style=\"list-style-type:none; color:#74bcd4\">\n");
      out.write("                                                <li><input type=\"checkbox\" name=\"holes\" value=\"");
      out.print(hole);
      out.write("\"> ");
 out.println(hole); 
      out.write("</li>\n");
      out.write("                                            </ul>\n");
      out.write("                                             ");
 
                                                    }  
                                                }
}
catch(Exception e){

}
                                                    
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                </div> \n");
      out.write("                                                \n");
      out.write("                       \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-3\" style=\"width:40px\">\n");
      out.write("                <ul style=\"list-style-type:none; margin-top:140px; padding-left:1px; padding-right:5px\">\n");
      out.write("                    <li><button class=\"btn btn-md btn-primary\" style=\"margin-left:-13px\"><span class=\"fa fa-angle-double-right\"></span></button></li><br>\n");
      out.write("                    <li><button class=\"btn btn-md btn-primary\" style=\"margin-left:-13px\"><span class=\"fa fa-angle-double-left\"></span></button></li>    \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-3\" style=\"width:422px\">\n");
      out.write("                <div class=\"panel panel-default\">\n");
      out.write("                    <div class=\"panel-heading\" style=\"background-color:#1794bf\">\n");
      out.write("                        <h4 class=\"panel-title\">\n");
      out.write("                            <a data-toggle=\"collapse\" href=\"#collapseinter\" style=\"text-decoration:none; color:#f8f9f9; font-size:13px; font-family:Verdana;\">Intermediate<span class=\"glyphicon glyphicon-minus-sign pull-right\"></span></a>\n");
      out.write("                        </h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"collapseinter\" class=\"panel-collapse collapse in\">\n");
      out.write("                        <div class=\"panel-body scrollable-menu scrollbar\" id=\"ex4\" style=\"max-height:336px; overflow-y:scroll\">\n");
      out.write("                            <ul style=\"list-style-type:none; color:#74bcd4; padding-left:5px\">\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"panel-body\" style=\"border-bottom:solid 1px #bababa\">    \n");
      out.write("                                        <h4>Field Name :</h4>\n");
      out.write("                                         ");

                                     DistinctIterable<String> fdocuments = collection.distinct("field", String.class).filter(eq("fieldchecked", "yes"));
                                    for (String document : fdocuments) {
                                
      out.write("\n");
      out.write("                                    <li>");
 out.println(document); 
      out.write("</li>\n");
      out.write("                                ");
} 
      out.write("           \n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"panel-body\" style=\"border-bottom:solid 1px #bababa\">\n");
      out.write("                                        <h4>Well Name</h4>\n");
      out.write("                                            ");

                                             try{
                                                 FindIterable<Document> Thedatabaserecords = database.getCollection("well").find();
                                     MongoCursor<Document> Welliterator = Thedatabaserecords.iterator();
                                      while (Welliterator.hasNext()) {
                                           Document doc = Welliterator.next();
                                           String wells = doc.getString("nameWell");
                                           String checked = doc.getString("fieldchecked");
                                           if(checked.equals("yes") && wells !=null ){    
                                
      out.write("\t\n");
      out.write("                                        \n");
      out.write("                                           \n");
      out.write("                                <p style=\"padding-left:10px\">");
 out.println(wells); 
      out.write("</p></<br>\n");
      out.write("                                           \n");
      out.write("                                             ");
 
                                                    }  
                                                }
}
catch(Exception e){

}
                                                    
      out.write("\n");
      out.write("                                    </div>    \n");
      out.write("                                    <div class=\"panel-body\">    \n");
      out.write("                                        <h4>Hole Size</h4>\n");
      out.write("                                          ");

                                             try{
                                                 FindIterable<Document> Ddatabaserecords = database.getCollection("data").find();
                                     MongoCursor<Document> Dataiterator = Ddatabaserecords.iterator();
                                      while (Dataiterator.hasNext()) {
                                           Document doc = Dataiterator.next();
                                           String holes = doc.getString("holeSize");
                                           String checked = doc.getString("holeSelected");
                                           if(checked.equals("yes") && holes !=null ){    
                                
      out.write("\t\n");
      out.write("                                        \n");
      out.write("                                           \n");
      out.write("                                <p style=\"padding-left:10px\">");
 out.println(holes); 
      out.write("</p></<br>\n");
      out.write("                                           \n");
      out.write("                                             ");
 
                                                    }  
                                                }
}
catch(Exception e){

}
                                                    
      out.write("\n");
      out.write("                                        \n");
      out.write("                                    </div>    \n");
      out.write("                                        \n");
      out.write("                                   \n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("    \n");
      out.write("                </div>\n");
      out.write("     \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-1\" style=\" width:30px\">\n");
      out.write("                <ul style=\"list-style-type:none; margin-top:160px; padding-left:1px; padding-right:5px\">\n");
      out.write("                    <li><button class=\"btn btn-md btn-primary\" formaction=\"mnemonicsupdate.jsp\" style=\"margin-left:-19px\"><span class=\"fa fa-angle-double-right\"></span></button></li>\n");
      out.write("                </ul>    \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\">\n");
      out.write("                <div class=\"panel panel-default\" style=\"width:422px\">\n");
      out.write("                    <div class=\"panel-heading\" style=\"background-color:#1794bf\">\n");
      out.write("                        <h4 class=\"panel-title\">\n");
      out.write("                            <a data-toggle=\"collapse\" href=\"#mnemonicsCollapse\" style=\"text-decoration:none; color:#f8f9f9; font-size:13px; font-family:Verdana;\">Mnemonics<span class=\"glyphicon glyphicon-plus-sign pull-right\"></span></a>\n");
      out.write("                        </h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"mnemonicsCollapse\" class=\"panel-collapse collapse\">\n");
      out.write("                        <div class=\"panel-body scrollable-menu scrollbar\" id=\"ex4\" style=\"max-height:200px; overflow-y:scroll\">\n");
      out.write("                            <ul style=\"list-style-type:none; color:#74bcd4\">\n");
      out.write("                                \n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <div class=\"btn center-block\">                           \n");
      out.write("                    <button type=\"submit\" class=\"btn btn-sm btn-primary glyphicon glyphicon-refresh\" formaction=\"refresh.jsp\"></button>                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <center><button class=\"btn btn-md btn-primary\" disabled=\"disabled\">Generate</button></center>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-4\"></div>\n");
      out.write("        </div> \n");
      out.write("    <div class=\"footer navbar-fixed-bottom\" style=\"background-color:#ececec; box-shadow:0 0 30px 0 #7e7e7e; margin-bottom:1px; height:40px\">\n");
      out.write("        <a style=\"font-size:15px; font-family:Verdana; color:#595959\"><center style=\"padding-top:10px\">Copyright &copy 2017</center></a>\n");
      out.write("    </div>                                                                                                \n");
      out.write("          \n");
      out.write(" </div>    \n");
      out.write("   \n");
      out.write("                                              \n");
      out.write("</form>\n");
      out.write("        \n");
      out.write("</body>\n");
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
