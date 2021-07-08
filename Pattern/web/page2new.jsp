<%@page import="com.mongodb.client.DistinctIterable"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>index</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet/less" href="less/sidebar.less">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<style>
    
    *{margin:0px}
    
    #promotebtn{width:70px; height:32px; border-radius:3px; background-color:#1c79af; color:white; border-left-color:#2474a6; border-top-color:#2474a6; border-right-color:black; border-bottom-color:black}
    #navHeading{padding-left:10px; padding-bottom:4px; font-family:verdana; font-size:26px}
    #navHeading a{text-decoration:none}
    body {background-color:#ebebeb}
    #navlist li{display:inline}
	
</style>

    
	
	
</head>

<body>
  
                       
                
                <nav class="navbar" style="background-color:#85c1e9">        
                        <ul class="nav navbar-nav" style="padding-left:238px">
                            <li class="active"><a href="#">Dashboard</a></li>
                            
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Patterns<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Container</a></li>
                                    <li><a href="#">Result</a></li>
                                </ul>
                            </li>
                            
                        </ul>
                    </div>
                </nav>   
            
            

		
            <form method="post">
		<% 
            
                    
                MongoClient mongoClient = new MongoClient();
                MongoDatabase database = mongoClient.getDatabase("rig_witsml");
                MongoCollection collection = database.getCollection("well");
              DistinctIterable<String> documents = collection.distinct("field", String.class );
                    
        %>
            
            <div class="row">
		<div class="col-sm-4">
			<div class="panel panel-default" style="margin-left:20px">
			
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse1" style="text-decoration:none; color:#3d82b8; font-size:13px">Fields<span class="glyphicon glyphicon-plus-sign" style="padding-left:318px"></span></a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse">
					<div class="panel-body" style="max-height:200px; overflow-y:scroll">
                                            <ul style="list-style-type:none ; color:#74bcd4">
						<%
                                                    for (String document : documents) {
                                                        %>
                                                        <li><input type="checkbox" name="field" value="<%=document%>"> <% out.println(document); %></li>
                                                        <%} %>
						</ul>
					</div>
				</div>
                                               
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse2" style="text-decoration:none; color:#3d82b8; font-size:13px">Wells<span class="glyphicon glyphicon-plus-sign" style="padding-left:321px"></span></a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body" style="max-height:200px; overflow-y:scroll">
						<ul>
						</ul>
					</div>
					
				</div>
			

			
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse3" style="text-decoration:none; color:#3d82b8; font-size:13px">Hole Size<span class="glyphicon glyphicon-plus-sign" style="padding-left:297px"></span></a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body" style="max-height:200px; overflow-y:scroll">
						<ul></ul>
					</div>
				</div>
                        </div> 
                        
                    <div class="btn center-block">                           
                        <button type="submit" class="btn btn-sm btn-primary" formaction="fieldupdate.jsp" >Update</button>
                        <button type="submit" class="btn btn-sm btn-primary glyphicon glyphicon-refresh" formaction="refresh.jsp"></button>                    </div>   
                </div>
                                    
               
		
		
		<div class="col-sm-4">
			<div class="panel panel-default" style="max-height:300px; background-color:#f4f4f5; overflow-y:scroll">
                             <div class="panel" style="max-height:100px; overflow-y:scroll; background-color:#f8f8f9">
                                <h3 class="text"><small style="color:#3d82b8; padding-left:15px; font-size:13px">Field Name</small></h3>
                                    <ul id="navlist" style="color:#74bcd4">
                                        
                                    </ul>
                            </div>
                            
                            <div class="panel" style="max-height:100px; overflow-y:scroll; background-color:#f8f8f9">
                                <h3 class="text"><small style="color:#3d82b8; padding-left:15px; font-size:13px">Well Name</small></h3>
                                    <ul id="navlist" style="color:#74bcd4">
                                        
                                    </ul>
                            </div>
                            
                            <div class="panel" style="max-height:100px; overflow-y:scroll; background-color:#f8f8f9">
                                <h3 class="text"><small style="color:#3d82b8; padding-left:15px; font-size:13px">Hole Size</small></h3>
                                    <ul id="navlist" style="color:#74bcd4">
                                        
                                    </ul>
                            </div>
			</div>
		
                      <button type="button" class="btn btn-sm btn-primary center-block">Generate</button>
                </div>    
                        
            <div class="col-sm-4">                                    
                <div class="panel panel-default" style="max-height:300px; background-color:#f4f4f4f5; overflow-y:scroll; margin-right:20px">
                    <div class="panel" style="max-height:100px; background-color:#f8f8f9">
                        <h3 class="text"><small style="color:#3d82b8; padding-left:15px; font-size:13px">Mnemonic</small></h3>
                            <ul id="navlist" style="color:#74bcd4">
                                        
                            </ul>
                    </div>
                </div>
            </div>
    </div>                                    
                                                
        
</form>
        
</body>
</html>
