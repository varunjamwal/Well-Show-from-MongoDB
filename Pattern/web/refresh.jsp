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
                MongoClient client = new MongoClient("localhost", 27017);
		MongoDatabase database = client.getDatabase("rig_witsml");
		MongoCollection collection = database.getCollection("well");
                Document document = new Document();
                BasicDBObject newDocument = new BasicDBObject();
                newDocument.append("$set", new BasicDBObject().append("fieldchecked", "no"));
                FindIterable<Document> mydatabaserecords = database.getCollection("well").find();
                BasicDBObject searchQuery = new BasicDBObject().append("fieldchecked", "yes");  
                MongoCollection collection2 = database.getCollection("data");
                Document doc = new Document();
                BasicDBObject newDoc= new BasicDBObject();
                newDoc.append("$set", new BasicDBObject().append("wellchecked", "no"));
                FindIterable<Document> databaserecords = database.getCollection("data").find();
                 BasicDBObject searchQuery1 = new BasicDBObject().append("wellchecked", "yes");
                 collection.updateMany(searchQuery, newDocument);
                 collection2.updateMany(searchQuery1, newDoc);
                response.sendRedirect("main pattern.jsp");
%>