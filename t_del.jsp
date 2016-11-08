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

			
</div>

</div>

<% 
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=stmt.executeQuery("Select * from ten_master");
%>
<div id="main_column" style="width:530px">


<center><h2>SELECT ROWS TO DELETE!!</h2></center>
<form name="f1" action="del_t.jsp">
<% if((request.getParameter("msg"))!=null)
{
if(((String)request.getParameter("msg")).equals("invalid"))
{
String url="PLEASE SELECT THE ROW TO DELETE";
 out.println("<strong><font color=red><h2> <b>"+url+"</b></h2></font></strong>"); 
 }
else if(((String)request.getParameter("msg")).equals("success"))
{
String url="DELETED!!";
 out.println("<strong><font color=red> <h2><b>"+url+"</b></h2></font></strong>"); 
 }
 }
 %>

 <table border="1" bordercolor="#FFFFFF" bordercolordark="#CCCCCC" cellpadding="3">
 <tr>
 <th> Select</th>
 <th>Id</th>
 <th>Name</th>
 <th>Date Of Birth</th><th>Country</th><th>State</th><th>City</th><th>Address</th><th>Contact No</th>
 <th>Email_Id</th>
 <th>Gender</th>
 
 </tr>
 <%
byte[] fileBytes;
while(rs.next())
{    

%>
<tr>
<td>
<input type="checkbox" name="c1"  value="<%=rs.getString(1) %>"/>
</td>
<td><%=rs.getString(1) %>
</td>
<td><%=rs.getString(2) %>
</td>
<td><%=rs.getString(3) %>
</td>
<td><%=rs.getString(4) %>
</td>
<td><%=rs.getString(5) %>
</td>
<td><%=rs.getString(6) %>
</td>
<td><%=rs.getString(7) %>
</td>
<td><%=rs.getString(8) %>
</td>
<td><%=rs.getString(9) %>
</td>
<td><%=rs.getString(10) %>
</td>

</tr>

<%} %>

			
			     
  
 
 </table>           
 <br />
 <center>
<input type="submit" name="submit" value="submit" />
</center>
</form>
</div>
</div>


<div class="cleaner">
</div>
<div class="cleaner"></div>
</div> <!-- end of content -->

<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
    
    	<div class="section_w290">
        	<h4>Office Address</h4>
            111/222 Vivamus vestibulum<br />
			Condimentum massa<br />
			Phasellus<br />
			info@yourcompany.com

        </div>
        
        <div class="section_w470">
        
            <ul class="footer_menu">
			
               <li><a href="main.jsp" class="current">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="view_news.jsp">Industry News</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li class="last"><a href="contact.jsp">Contact</a></li>
            </ul>

        	Copyright © 2048 <a href="#">Your Company Name</a><br /><br />

            <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent" title="CSS Templates">Free CSS Templates</a><br />
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->

</body>
</html>

