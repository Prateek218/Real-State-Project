<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" session="true" %>
<%@ page import="java.io.*" session="true" %>
<%! int i=1; %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Real Estate</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style.css" type="text/css" />
<style type="text/css">._css3m{display:none}</style>

<style>

.imagepluscontainer{ /* main image container */
position: relative;
z-index: 1;
}

.imagepluscontainer img{ /* CSS for image within container */
position: relative;
z-index: 2;
-moz-transition: all 0.5s ease; /* Enable CSS3 transition on all props */
-webkit-transition: all 0.5s ease-in-out;
-o-transition: all 0.5s ease-in-out;
-ms-transition: all 0.5s ease-in-out;
transition: all 0.5s ease-in-out;
}

.imagepluscontainer:hover img{ /* CSS for image when mouse hovers over main container */
-moz-box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.5);
-webkit-box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.5);
box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.5);
-moz-transform: scale(1.05, 1.05);
-webkit-transform: scale(1.05, 1.05);
-ms-transform: scale(1.05, 1.05);
-o-transform: scale(1.05, 1.05);
transform: scale(1.05, 1.05);
}

.imagepluscontainer div.desc{ /* CSS for desc div of each image. */
position: absolute;
width: 90%;
z-index: 1; /* Set z-index to that less than image's, so it's hidden beneath it */
bottom: 0; /* Default position of desc div is bottom of container, setting it up to slide down */
left: 5px;
padding: 8px;
background: rgba(0, 0, 0, 0.8); /* black bg with 80% opacity */
color: white;
-moz-border-radius: 0 0 8px 8px; /* CSS3 rounded borders */
-webkit-border-radius: 0 0 8px 8px;
border-radius: 0 0 8px 8px;
opacity: 0; /* Set initial opacity to 0 */
-moz-box-shadow: 0 0 6px rgba(0, 0, 0, 0.8); /* CSS3 shadows */
-webkit-box-shadow: 0 0 6px rgba(0, 0, 0, 0.8);
box-shadow: 0 0 6px rgba(0, 0, 0, 0.8);
-moz-transition: all 0.5s ease 0.5s; /* Enable CSS3 transition on desc div. Final 0.5s value is the delay before animation starts */
-webkit-transition: all 0.5s ease 0.5s;
-o-transition: all 0.5s ease 0.5s;
-ms-transition: all 0.5s ease 0.5s;
transition: all 0.5s ease 0.5s;
}

.imagepluscontainer div.desc a{
color: white;
}

.imagepluscontainer:hover div.desc{ /* CSS for desc div when mouse hovers over main container */
-moz-transform: translate(0, 100%);
-webkit-transform: translate(0, 100%);
-ms-transform: translate(0, 100%);
-o-transform: translate(0, 100%);
transform: translate(0, 100%);
opacity:1; /* Reveal desc DIV fully */
}

/*### Below CSS when applied to desc DIV slides the desc div from the right edge of the image ###*/

.imagepluscontainer div.rightslide{
width: 150px; /* reset from default */
top:15px;
right:0;
left:auto;  /* reset from default */
bottom:auto;  /* reset from default */
padding-left:15px;
-moz-border-radius: 0 8px 8px 0;
-webkit-border-radius: 0 8px 8px 0;
border-radius: 0 8px 8px 0;
}

.imagepluscontainer:hover div.rightslide{
-moz-transform: translate(100%, 0);
-webkit-transform: translate(100%, 0);
-ms-transform: translate(100%, 0);
-o-transform: translate(100%, 0);
transform: translate(100%, 0);
}




}

</style>
</head>

<body>

<div id="templatemo_banner_wrapper">
<div id="templatemo_banner">
<div id="templatemo_site_title">
<h1>
            	<img src="images/templatemo_logo.png" alt="css template" /> 
           </h1>
		   </div>
		   <div id="templatemo_menu">
    	<ul>
             <li><a href="main.jsp" ><span></span>Home</a></li>
            <li><a href="about.jsp"><span></span>About</a></li>
            
            <li><a href="gallery.jsp" ><span></span>Gallery</a></li>
            <li><a href="contact.jsp"><span></span>Contact</a></li>
			<li><a href="logout.jsp"><span></span>Logout</a></li>
        </ul>
    </div>



</div>
</div>
<div id="templatemo_content">


<div id="side_column" style="width:150px; margin-bottom:20px">
	<div class="section_w290">
		

<h2> MENU:</h2>

<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="t_view.jsp" style="width:91px;"><span>My Profile</span></a>
	<ul>
		<li class="subfirst"><a href="t_view.jsp">View</a></li>
			<li><a href="t_update.jsp">Update</a></li>
		
	</ul></li>

	<li class="topmenu"><a href="search.jsp" style="width:91px;"><span>Property</span></a>
	<ul>
		<li class="subfirst"><a href="search.jsp">Search</a></li>
		
		
	</ul></li>
	
	
	
</ul>		

			
</div>

</div>

<div id="main_column">
<h2>View</h2>
<% 
String uname=(String)session.getAttribute("username");
session.setAttribute("username",session.getAttribute("username"));
%>
<%
 try
 {
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

String min=request.getParameter("min_price");
String max=request.getParameter("max_price");
String type=request.getParameter("s");
String country=request.getParameter("country");
String city=request.getParameter("city");
String state=request.getParameter("state");

ResultSet rs=stmt.executeQuery("Select * from property_master where type ='"+type+"' and country ='"+country+"' and state='"+state+"' and city ='"+city+"'   ");
rs.next();
%>
 <table cellpadding="3">
<tr>
<td>
Type</td>

<td><%=rs.getString(2) %>
</td>
</tr>



<tr>
<td>
Country
</td>
<td><%=rs.getString(3) %>
</td>
</tr>

<tr>
<td>
State
</td>
<td><%=rs.getString(4) %>
</td>
</tr>

<tr>
<td>
City
</td>
<td><%=rs.getString(5) %>
</td>
</tr>

<tr>
<td>
Location
</td>
<td><%=rs.getString(6) %>
</td>
</tr>
<tr>
<td>
Area
</td>
<td><%=rs.getString(7) %>
</td>
</tr>


<tr>
<td>
Prices
</td>
<td><%=rs.getString(8) %>
</td>
</tr>




<tr>
<td>
Transaction Type
</td>
<td><%=rs.getString(9) %>
</td>
</tr>
<tr>
<td >

<tr>
<td>
Mobile No.
</td>
<td><%=rs.getString(10) %>
</td>
</tr>

<tr>
<td>
Owner Name
</td>
<td><%=rs.getString(16) %>
</td>
</tr>

</td>
</tr>

 </table> 

</div>
</div>
<br />
<br />
 <%
 rs.close();
 stmt.close();
 con.close();
 }catch(Exception e)
 {
 
 }
 
  %>
</div>

</div>


<div class="cleaner">
</div>
<div class="cleaner"></div>
</div> <!-- end of content -->


</body>
</html>


