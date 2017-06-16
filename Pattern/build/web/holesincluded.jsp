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
                    
                    
			
	/*navigation*/		
.nav-side-menu 
{
  padding-top:25px;	
  overflow: auto;
  font-family: verdana;
  font-size: 12px;
  font-weight: 200;
  background-color: #85c1e9;
  position: fixed;
  top: 0px;
  width:233px;
  height: 100%;
  color: #e1fff5;
}


.nav-side-menu ul,.nav-side-menu li 
{
  list-style: none;
  padding: 0px;
  margin-left: 0px;
  line-height: 35px;
  cursor: pointer;
}

.nav-side-menu ul .active,.nav-side-menu li .active 
{
  border-left: 3px solid #d19b3d;
  background-color: #57afc0;
  padding-left:15px;
}

.nav-side-menu ul .sub-menu li.active,
.nav-side-menu li .sub-menu li.active 
{
  color: #d19b3d;
  padding-left:15px;
}

.nav-side-menu ul .sub-menu li,.nav-side-menu li .sub-menu li 
{
  background-color: #2874a6;
  border: none;
  line-height: 28px;
  border-bottom: 1px solid #23282e;
  margin-left: 0px;
}

.nav-side-menu ul .sub-menu li:hover,.nav-side-menu li .sub-menu li:hover 
{
  background-color: #71b2dc;
}

.nav-side-menu li 
{
  padding-left: 20px;
  border-left: 3px solid #2e353d;
  border-bottom: 1px solid #23282e;
}

.nav-side-menu li a 
{
  text-decoration: none;
  color: #e1ffff;
}

.nav-side-menu li a i 
{
  padding-left: 10px;
  width: 20px;
  padding-right: 20px;
}

.nav-side-menu li:hover 
{
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
  -webkit-transition: all 1s ease;
}
@media (max-width: 767px) 
{
  .nav-side-menu 
  {
    position: relative;
    width: 100%;
    margin-bottom: 10px;
  }
  .nav-side-menu .toggle-btn {
    display: block;
    cursor: pointer;
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 10 !important;
    padding: 3px;
    background-color: #ffffff;
    color: #000;
    width: 40px;
    text-align: center;
  }
}

@media (min-width: 767px) 
{
  .nav-side-menu .menu-list .menu-content 
  {
    display: block;
  }
}

body 
{
  margin: 0px;
  padding: 0px;
}

#promotebtn{width:70px; height:32px; border-radius:3px; background-color:#1c79af; color:white; border-left-color:#2474a6; border-top-color:#2474a6; border-right-color:black; border-bottom-color:black}
#navHeading{padding-left:10px; padding-bottom:4px; font-family:verdana; font-size:26px}
#navHeading a{text-decoration:none}
body {background-color:#ebebeb}

	</style>

    
	
	
</head>

<body>
  
  
		<div class="row">
		
			<div class="col-sm-2"></div>
			
			<div class="col-sm-10">
				<div class="text">
					<ul class="breadcrumb" style="background-color:#ebebeb">
						<li><a href="#"><span style="font-size:15px">Container</span></a></li>
						<li><a href="#"><span style="font-size:15px">Result</span></a></li>
					</ul>
				</div>
			</div>
		</div>
  
	<div class="row" style="margin-top:0px; padding-top:10px">
            <div class="col-sm-2" style="background-color:red">
        	<div class="nav-side-menu left-nav">
                    <div class="menu-list">
                	<p id="navHeading"><a href="#"> Dashboard</a></p>
                            
                                <ul id="menu-content" class="menu-content collapse in">
                                    
                                    <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                                        <a href="#"> Dashboard</a>
                                    </li>
                                    
                                    <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                                        <a href="#"> Patterns</a>
                                    </li>
                                    
					<!--<li data-toggle="collapse" data-target="#service" class="collapsed">
					<a href="#"><i class="glyphicon glyphicon-chevron-right"></i>Button</a>
					</li>  

					<ul class="sub-menu collapse" id="service">
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					</ul>
					-->
				</ul>
                    </div>
                </div>
            </div>
		
            <form method="post">
		<% 
            
                    
                MongoClient mongoClient = new MongoClient();
                MongoDatabase database = mongoClient.getDatabase("rig_witsml");
                MongoCollection collection = database.getCollection("well");
              DistinctIterable<String> documents = collection.distinct("field", String.class );
                    
        %>
		
		<div class="col-sm-4" style="padding-left:80px">
			<div class="panel panel-default">
			
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse1" style="text-decoration:none">Fields<span class="glyphicon glyphicon-plus-sign" style="padding-left:270px"></span></a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body" style="max-height:200px; overflow-y:scroll">
                                            <ul style="list-style-type:none">
						<%
                                                    for (String document : documents) {
                                                        %>
                                                        <li><input type="checkbox"> <% out.println(document); %></li>
                                                        <%} %>
						</ul>
					</div>
				</div>
                                               
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse2" style="text-decoration:none">Wells<span class="glyphicon glyphicon-plus-sign" style="padding-left:274px"></span></a>
					</h4>
				</div>
                               
				<div id="collapse2" class="panel-collapse collapse in">
					<div class="panel-body" style="max-height:200px; overflow-y:scroll">
					 <%
                                             try{
                                     FindIterable<Document> thedatabaserecords = database.getCollection("well").find();
                                     MongoCursor<Document> welliterator = thedatabaserecords.iterator();
                                      while (welliterator.hasNext()) {
                                           Document doc = welliterator.next();
                                           String wells = doc.getString("nameWell");
                                           String checked = doc.getString("fieldchecked");
                                           if(checked.equals("yes") && wells !=null ){    
                                %>	
                                        
                                            <ul style="list-style-type:none">
                                                <li><input type="checkbox" name="welllist" value="<%=wells%>"><% out.println(wells); %></li>
                                            </ul>
                                            
                                                <%
                                                    }  
                                                }
                    }
                        catch(Exception e){

}
                                                    %>
					</div>
					
				</div>
			

			
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse3" style="text-decoration:none">Hole Size<span class="glyphicon glyphicon-plus-sign" style="padding-left:244px"></span></a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse in">
					<div class="panel-body" style="max-height:200px; overflow-y:scroll">
                                            <%
                                                try{
                                     FindIterable<Document> databaserecords = database.getCollection("data").find();
                                     MongoCursor<Document> dataiterator = databaserecords.iterator();
                                      while (dataiterator.hasNext()) {
                                           Document newdoc = dataiterator.next();
                                           String hole = newdoc.getString("holeSize");
                                           String wchecked = newdoc.getString("wellchecked");
                                           if(wchecked.equals("yes") && hole != null){ %>   
                                	
                                            <ul style="list-style-type:none">
                                                <li><input type="checkbox" name="holes" value="<%=hole%>"> <% out.println(hole); %></li>
                                            </ul>
                                             <% 
                                                    }  
                                                }
}
catch(Exception e){

}
                                                    %>
					</div>
				</div>
                        </div> 
                                                
                        <div class="btn center-block">                           
                        <button type="submit" class="btn btn-primary" formaction="fieldupdate.jsp" >Update</button>
                        <button type="submit" class="btn btn-primary glyphicon glyphicon-refresh" formaction="refresh.jsp"></button>
                    </div> 
                                        
                </div>
                                    
               
		
		
		<div class="col-sm-5">
			<div class="panel panel-default" style="height:400px; background-color:#f4f4f5">
				<!--Panel Content-->
			</div>
			
			<button type="button" class="btn btn-primary center-block">Generate</button>
		</div>
       
    </div>  
        
</form>
        
</body>
</html>
