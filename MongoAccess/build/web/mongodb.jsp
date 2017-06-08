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

<head>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1256"> 
     <title> Test Page</title>
     
     
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  <script>
	function sizeSelect100()
	{
		document.getElementById("demo").innerHTML="100 Well size selected";
	}
	
	function sizeSelect50()
	{
		document.getElementById("demo").innerHTML="50 Well size selected";
	}
	
	function sizeSelect20()
	{
		document.getElementById("demo").innerHTML="20 Well size selected";
	}
	
	function sizeSelect10()
	{
		document.getElementById("demo").innerHTML="10 Well size selected ";
	}
  </script>

<style>

body{text-align:center}

	.btn-default{font-size:19px}

  .btn-breadcrumb .btn:not(:last-child):after 
  {
  content: " ";
  display: block;
  width: 0;
  height: 0;
  border-top: 17px solid transparent;
  border-bottom: 17px solid transparent;
  border-left: 10px solid white;
  position: absolute;
  top: 50%;
  margin-top: -17px;
  left: 100%;
  z-index: 3;
}
.btn-breadcrumb .btn:not(:last-child):before {
  content: " ";
  display: block;
  width: 0;
  height: 0;
  border-top: 17px solid transparent;
  border-bottom: 17px solid transparent;
  border-left: 10px solid rgb(173, 173, 173);
  position: absolute;
  top: 50%;
  margin-top: -17px;
  margin-left: 1px;
  left: 100%;
  z-index: 3;
}

/** The Spacing **/
.btn-breadcrumb .btn {padding:6px 12px 6px 24px;}
.btn-breadcrumb .btn:first-child {padding:6px 6px 6px 10px;}
.btn-breadcrumb .btn:last-child {padding:6px 18px 6px 24px;}

/** Default button **/
.btn-breadcrumb .btn.btn-default:not(:last-child):after {border-left: 10px solid #fff;}
.btn-breadcrumb .btn.btn-default:not(:last-child):before {border-left: 10px solid #ccc;}
.btn-breadcrumb .btn.btn-default:hover:not(:last-child):after {border-left: 10px solid #ebebeb;}
.btn-breadcrumb .btn.btn-default:hover:not(:last-child):before {border-left: 10px solid #adadad;}

</style>
     
     
</head> 
     <body> 
         
         
         <div class="container">
    <div class="row">
    	<h2></h2>
        <div class="btn-group btn-breadcrumb">
            
            <a href="#" class="btn btn-default">File Available</a>
            <a href="#" class="btn btn-default">MA</a>
            <a href="#" class="btn btn-default">UN</a> 
            <a href="#" class="btn btn-default">Data Aggregation</a>
           
        </div>
	</div>
	
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
		<div class="col-sm-1"></div>
			<div class="col-sm-1">
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Well Size</button>
					 
						<span class="caret"></span>
					
					
					<ul class="dropdown-menu" role="menu">
						<li class="dropdown-header">Select the well size</li>
						<li class="divider"></li>
						<li><a href="#" onClick="sizeSelect100()">100</a></li>
						<li><a href="#" onClick="sizeSelect50()">50</a></li>
						<li><a href="#" onClick="sizeSelect20()">20</a></li>
						<li><a href="#" onClick="sizeSelect10()">10</a></li>
					</ul>
				</div>
			</div>
			
			<div class="col-sm-1">
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Select</button>
					 
						<span class="caret"></span>
					
					
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Promote</a></li>
						<li><a href="#">Demote</a></li>
					</ul>
				</div>
			</div>
			
			<div class="col-sm-1">
				<div class="btn-group">
                                    <button type="button" class="btn btn-primary"><A HREF="javascript:history.go(0)"><font color ="white">Click to refresh</font></A></button>
					
				</div>
			</div>
	</div>
	
	<div class="row">
		<p id="demo"></p>
	</div>
</div> 
         
         <div class="row">
         <%
             try {
            MongoClient mongoClient = new MongoClient();
             MongoDatabase database = mongoClient.getDatabase("rig_witsml");
            FindIterable<Document> mydatabaserecords = database.getCollection("well").find();
        MongoCursor<Document> iterator = mydatabaserecords.iterator();
        %>
        <%
        while (iterator.hasNext()) {
            Document doc = iterator.next();
            String country = doc.getString("country");
            String state = doc.getString("state");
            String Operator = doc.getString("operator");
            String name = doc.getString("nameWell");%>
        <table border="2">
            <tr>
                <th>Well Name</th>
                <th>Country</th>
                <th>State</th>
                <th>Operator</th>
            </tr>

            <tr>
                <td><% out.println(name);%></td>
                <td><% out.println(country);%></td>
                <td><% out.println(state);%></td>
                <td><% out.println(Operator);%></tr> 
          <% }%>
        </table><%
        
} catch (Exception e1) {
    // TODO Auto-generated catch block
    e1.printStackTrace();
}
%>
</div>
     </body>
     </html>
