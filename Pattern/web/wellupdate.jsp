<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.MongoClientURI"%>
<%@page import="com.mongodb.ServerAddress"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCursor"%>
<%@page import="static com.mongodb.client.model.Filters.*"%>
<%@page import="com.mongodb.client.result.DeleteResult"%>
<%@page import="static com.mongodb.client.model.Updates.*"%>
<%@page import="com.mongodb.client.result.UpdateResult"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%> 
<%

      
            String[] selectedNames = request.getParameterValues("welllist");

            if(request.getParameter("welllist")!= null){%>
            
            <%
            
                MongoClient client = new MongoClient("localhost", 27017);
		MongoDatabase database = client.getDatabase("rig_witsml");
		MongoCollection collection = database.getCollection("data");
                BasicDBObject newDocument = new BasicDBObject();
                newDocument.append("$set", new BasicDBObject().append("wellchecked", "yes"));

                for(int i=0;i<selectedNames.length;i++){
                        BasicDBObject searchQuery = new BasicDBObject().append("uidWell", selectedNames[i]);
                        collection.updateMany(searchQuery, newDocument);
                }
                response.sendRedirect("holesincluded.jsp");
                            }
else{
                response.sendRedirect("holesincluded.jsp");
}
%>