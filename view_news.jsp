<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" session="true"%>
<%@ page import="java.io.*"%>
<%! int i=1; %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Real Estate</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style.css" type="text/css" />
<style type="text/css">._css3m{display:none}</style>

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
			<% if ((session.getAttribute("username"))!=null)
			{ %>
			<li><a href="logout.jsp"><span></span>Logout</a></li>
			<% } 
			else
			{
			%>
			<li><a href="login.jsp"><span></span>Login</a></li>
			<% }%>
        </ul>
    </div>



</div>
</div>
<div id="templatemo_content">


<div id="side_column" style="width:150px; margin-bottom:20px">
	<div class="section_w290">
		
<% if((session.getAttribute("username"))!=null)

{
%>

<h2> MENU:</h2>
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="view_l.jsp" style="width:91px;"><span>Landlord</span></a>
	<ul>
		<li class="subfirst"><a href="view_l.jsp">View</a></li>
		<li><a href="l_del.jsp">Delete</a></li>
		
	</ul></li>
	<li class="topmenu"><a href="#" style="width:91px;"><span>Tenant</span></a>
	<ul>
		<li class="subfirst"><a href="view_t.jsp">View</a></li>
		<li><a href="t_del.jsp">Delete</a></li>
		
	</ul></li>
	<li class="topmenu"><a href="view_b.jsp" style="width:91px;"><span>Property</span></a>
	<ul>
		<li class="subfirst"><a href="view_b.jsp">View</a></li>
	
	</ul></li>
	<li class="topmenu"><a href="view_news.jsp" style="width:91px;"><span>News</span></a>
	<ul>
		<li class="subfirst"><a href="view_news.jsp">View</a></li>
		<li><a href="news.jsp">Add</a></li>
		
		<li><a href="news_del.jsp">Delete</a></li>
	</ul></li>
	
	
	
	
</ul>

<% } %>
	
			
</div>

</div>

<% 
try
{
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=stmt.executeQuery("Select * from news");
%>
<div id="main_column" style="width:530px">


<center><h2>NEWS!!</h2></center>
 <%
byte[] fileBytes;
while(rs.next())
{    

%>


 <table border="1" bordercolor="#FFFFFF" bordercolordark="#CCCCCC" cellpadding="3">
 

<tr>
<td>
Id:
</td>
<td><%=rs.getString(1) %>
</td>


<tr>
<td>
Date:
</td>
<td><%=rs.getString(2) %>
</td>
</tr>

<tr>
<td>
Place:
</td>
<td><%=rs.getString(3) %>
</td>
</tr>

<tr>
<td>
News:
</td>
<td><%=rs.getString(4) %>
</td>
</tr>

</table>   
<br />
<br />
<%}


}
catch(Exception e)
{}
 %>

			
			     
  
 
         
 
 <center>

</center>
</div>
</div>


<div class="cleaner">
</div>
<div class="cleaner"></div>
</div> <!-- end of content -->



</body>
</html>

