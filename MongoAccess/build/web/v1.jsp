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
<title>Template</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet/less" href="less/sidebar.less">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

	<style>
            *{margin:0px}
	
			body{text-align:center}
			.btn 
				{ 
					margin-top: 25px; margin-left:30px
				}
			.btn-arrow-right 
			{
				position: relative;
				padding-left: 28px;
				padding-right: 18px;
			}
			.btn-arrow-right:before,
			.btn-arrow-right:after,
			.btn-arrow-left:before,
			.btn-arrow-left:after 
			{ 
				content:"";
				position: absolute;
				top: 5px; 
				width: 22px; 
				height: 22px; 
				background: inherit; 
				border: inherit; 
				border-left-color: transparent; 
				border-bottom-color: transparent; 
				border-radius: 0px 4px 0px 0px; 
				-webkit-border-radius: 0px 4px 0px 0px;
			}
			
			.btn-arrow-right:before,.btn-arrow-right:after 
			{
				transform: rotate(45deg); 
				-webkit-transform: rotate(45deg);
			}
			.btn-arrow-left:before,.btn-arrow-left:after 
			{
				transform: rotate(225deg); 
				-webkit-transform: rotate(225deg);
			}
			.btn-arrow-right:before,.btn-arrow-left:before 
			{ 
				left: -11px;
			}
			.btn-arrow-right:after,.btn-arrow-left:after 
			{ 
				right: -11px;
			}
			.btn-arrow-right:after,.btn-arrow-left:before 
			{ 
				z-index: 1;
			}
			.btn-arrow-right:before,.btn-arrow-left:after 
			{ 
				background-color: white;
			}
	
			#table{padding-top:30px; font-size:11px; text-align:justify; color:#666;}
                        #StageGate{padding-bottom:18px; margin-left:100px; padding-bottom:3px}
			
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
  width: 233px;
  height: 100%;
  color: #e1ffff;
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
  background-color: #aed6f1;
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


	</style>

    <script>
	function sizeSelect100()
	{
		document.getElementById("demo").innerHTML="Well of size 100 selected";
	}
	
	function sizeSelect50()
	{
		document.getElementById("demo").innerHTML="Well of size 50 selected";
	}
	
	function sizeSelect20()
	{
		document.getElementById("demo").innerHTML="Well of size 20 selected";
	}
	
	function sizeSelect10()
	{
		document.getElementById("demo").innerHTML="Well of size 10 selected";
	}
	
	function backgroundColor(color)
	{
		document.getElementById("click").style.background=color;
	}
	
	function myFunc2()
	{
		document.getElementById("01").style.color="red";
	}
        function toggle(source) 
        {
        checkboxes = document.getElementsByName('values');
        for(var i=0, n=checkboxes.length;i<n;i++) 
            {
                checkboxes[i].checked = source.checked;
            }
        }
        
       function goma()
       {
           window.location = 'DisplayPromoted.jsp';
       }
        function goUN()
       {
           window.location = 'DisplayPromoted1.jsp'; 
       }
       function goHM()
       {
           window.location = 'DisplayPromoted2.jsp'; 
       }
       function goPG()
       {
           window.location = 'DisplayPromoted3.jsp'; 
       }
  </script>
	
	
</head>

<body style="overflow:hidden">
  
        <% long count,count1,count2,count3,count4 = 0;
            long total = 0;
            
             try 
             {
                MongoClient mongoClient = new MongoClient();
                MongoDatabase database = mongoClient.getDatabase("rig_witsml");
                MongoCollection collection = database.getCollection("well");
                BasicDBObject searchQuery = new BasicDBObject().append("flag", 0);
                BasicDBObject searchQuery1 = new BasicDBObject().append("flag", 2);
                BasicDBObject searchQuery2 = new BasicDBObject().append("flag", 4);
                BasicDBObject searchQuery3 = new BasicDBObject().append("flag", 6);
                BasicDBObject searchQuery4 = new BasicDBObject().append("flag", 8);
                count = collection.count(searchQuery);
                count1 = collection.count(searchQuery1);
                count2 = collection.count(searchQuery2);
                count3 = collection.count(searchQuery3);
                count4 = collection.count(searchQuery4);
                total = collection.count();
                
        %>
<div id="StageGate">    
    <button type="button" class="btn btn-info btn-arrow-right" style="background-color:#1d79fd">Data Loading</button>
    <button id="click" type="button" class="btn btn-info btn-arrow-right" onclick="goma()">Mnemonic Harmonization</button>
    <button type="button" class="btn btn-info btn-arrow-right" onclick="goUN()">Unit Normalization</button>
    <button type="button" class="btn btn-info btn-arrow-right" onclick="goHM()">Data Aggregation</button>
    <button type="button" class="btn btn-info btn-arrow-right" onclick="goPG()">Pattern Generation</button>
</div>	
    
<!--Displaying Dynamic table rows selected-->
<div class="row" style="padding-bottom:0px; margin-top:0px">
    <div class="col-sm-2"></div>
    <div class="col-sm-2" style="color:#01579b"><%out.println(count);%>/ <%out.print(total);%></div>
    <div class="col-sm-1" style="padding-left:60px; color:#01579b"><%out.println(count1);%>/ <%out.print(total);%></div>
    <div class="col-sm-2" style="padding-left:160px; color:#01579b"><%out.println(count2);%>/ <%out.print(total);%></div>
    <div class="col-sm-2" style="padding-left:95px; color:#01579b"><%out.println(count3);%>/ <%out.print(total);%></div>
    <div class="col-sm-2" style="color:#01579b"><%out.println(count4);%>/ <%out.print(total);%></div>
    <div class="col-sm-1"></div>
</div>    
	<form method="post" action="stage.jsp">
        <div class="row" style="margin-bottom:0px">
          
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <p id="demo" style="padding-top:12px; font-size:11px"></p>
            </div>
            
            <div class="col-sm-4"> 
                 <div class="btn-sm">
                    
                     <button type="button" class="btn-sm btn-primary dropdown-toggle" data-toggle="dropdown">Well Size
			<span class="caret"></span>
                    </button>
                     <ul class="dropdown-menu" role="menu">
			<li class="dropdown-header">Select the well size</li>
			<li class="divider"></li>
			<li><a href="#" onClick="sizeSelect100()">100</a></li>
			<li><a href="#" onClick="sizeSelect50()">50</a></li>
			<li><a href="#" onClick="sizeSelect20()">20</a></li>
			<li><a href="#" onClick="sizeSelect10()">10</a></li>
                    </ul>
                    
                    <INPUT id="promotebtn" TYPE=submit name=submit Value="Promote">	
                    <button type="button" class="btn-sm btn-primary">Demote</button>
                    <button type="button" class="btn-sm btn-primary glyphicon glyphicon-refresh" onClick="window.location.reload();"></button>   
                    <button type="button" class="btn-sm btn-primary" onclick="displayall()">View All</button>					
					
                 </div>       
	</div>
</div>
</div>
      
        <div class="row" id="table" style="margin-top:0px; padding-top:10px">
    	<div class="col-sm-2">
        	<div class="nav-side-menu">
            
            	<div class="menu-list">
                	<ul id="menu-content" class="menu-content collapse in">
                    	<li  data-toggle="collapse" data-target="#products" class="collapsed active">
                  			<a href="#"><i class="glyphicon glyphicon-chevron-right"></i> Dashboard</a>
                		</li>
                        	<ul class="sub-menu collapse" id="products">
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
				    <li><a href="#"></a></li>
				    <li><a href="#"></a></li>
                            </ul>
                            
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
        <%
           FindIterable<Document> mydatabaserecords = database.getCollection("well").find();
            MongoCursor<Document> iterator = mydatabaserecords.iterator();
           
       %>
        
        
        <div class="col-sm-10" style="margin-top:0px; padding-top:0px">
        <table class="table table-striped table-bordered table-condensed" style="margin-top:0px; font-size:11px">
            <tr class="info">
                <th class="col-sm-1"><input type="checkbox" onClick="toggle(this)"></input></th>
                <th class="col-sm-2"><a href="#">Well Name</a></th>
                <th class="col-sm-1">Country</th>
                <th class="col-sm-1">State</th>
                <th class="col-sm-2">Operator</th>
                <th class="col-sm-1">Region</th>
                <th class="col-sm-1">Status</th>
                <th class="col-sm-3">Purpose</th>
            </tr>
            
        <%

        while (iterator.hasNext()) {
             Document docs = iterator.next();
            String country = docs.getString("country");
            String state = docs.getString("state");
            String Operator = docs.getString("operator");
            String name = docs.getString("nameWell");
            String region = docs.getString("region");
            String statusWell = docs.getString("statusWell");
            String purposeWell = docs.getString("purposeWell");
             Integer flag = docs.getInteger("flag");
           
        %>
            <tr class = "default">
                
                <td class="col-sm-1">  
               <input type="checkbox" name="values" value=<%=name%> />
                 </td>
               <td class="col-sm-2"><% out.println(name);%></td>
                <td class="col-sm-1"><% out.println(country);%></td>
                <td class="col-sm-1"><% out.println(state);%></td>
                <td class="col-sm-2"><% out.println(Operator);%></td>
                <td class="col-sm-1"><% out.println(region);%></td>
                <td class="col-sm-1"><% out.println(statusWell);%></td>
                <td class="col-sm-3"><% out.println(purposeWell);%></td>
            </tr>  <%

    }
%>
         
    
            </table>
        </div>
    </div>
            <%
}
catch (Exception e1) {
    // TODO Auto-generated catch block
    e1.printStackTrace();
}
%>
</form>	

</body>
</html>
