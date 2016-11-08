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
	<li class="toplast"><a href="feed.jsp" style="width:91px;"><span>Feedback</span></a>
	<ul>
		<li class="subfirst"><a href="feed.jsp">View</a></li>
			</ul></li>
	
	
	
</ul>
			
</div>

</div>

<% 
String uname=(String)session.getAttribute("username");
session.setAttribute("username",session.getAttribute("username"));
%>

<% 
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	 String  id=(String) request.getParameter("msg");
	ResultSet rs=stmt.executeQuery("Select * from property_master where p_id='"+id+"'");
	rs.next();
byte[] fileBytes;
%>
<div id="main_column" style="width:530px">
 <table  cellpadding="3">

<tr>
<td> Type :
</td>
<td><%=rs.getString(2) %>
</td>
<td rowspan="15">
<%

 fileBytes = rs.getBytes(14);
                    if(fileBytes!=null)
                    {
   OutputStream targetFile = new FileOutputStream("C://Program Files//Apache Software Foundation//Tomcat 5.5//webapps//ROOT//image"+i+".jpg");
                  
                    targetFile.write(fileBytes);
                    targetFile.close();
                   
             }   
			 String name="image"+i+".jpg"; 
			
			 
			 %>
			 
			 <img src="<%=name %>" width="400" height="400" />
</td>
</tr>


<tr>
<td> Name:
</td>
<td><%=rs.getString(16) %>
</td>
</tr>

<tr>
<td> Country:
</td>
<td><%=rs.getString(3) %>
</td>
</tr>

<tr>
<td> State:
</td>
<td><%=rs.getString(4) %>
</td>
</tr>

<tr>
<td> City:
</td>
<td><%=rs.getString(5) %>
</td>
</tr>

<tr>
<td> Location:
</td>
<td><%=rs.getString(6) %>
</td>
</tr>

<tr>
<td> Area(sq.ft):
</td>
<td><%=rs.getString(7) %>
</td>
</tr>

<tr>
<td> Price:
</td>
<td>Rs. <%=rs.getString(8) %> Lakhs
</td>
</tr>

<tr>
<td> Transaction Type:
</td>
<td><%=rs.getString(9) %>
</td>
</tr>

<tr>
<td> Features:
</td>
<td><%=rs.getString(10) %>
</td>
</tr>

<tr>
<td> Bedroom:
</td>
<td><%=rs.getString(11) %>
</td>
</tr>

<tr>
<td> Bathroom:
</td>
<td><%=rs.getString(12) %>
</td>
</tr>

<tr>
<td> No of Appartments:
</td>
<td><%=rs.getString(13) %>
</td>
</tr>

<tr>
<td> Status:
</td>
<td><%=rs.getString(15) %>
</td>
</tr> 


<tr>
<td>
Space:
</td>
<td>
<%
  String  id1=(String) request.getParameter("msg");
  	ResultSet rs3=stmt.executeQuery("Select * from property_master where p_id='"+id1+"'");
	rs3.next();
	 String type=rs3.getString(2) ;

if((type.equals("Appartment")) ||(type.equals("Residential") ))
{
int n=Integer.parseInt(rs3.getString(13));
int arr[]=new int[n];
int j=0;
ResultSet rs1=stmt.executeQuery("select count(app_no) from register where b_id='"+id1+"' ");
int rows=0;
if(rs1.next())
{
rows=rs1.getInt(1);
}

if(rows==0)
{%>

Space is Available

<%}
else
{
if(rows==n)
{



%>

No Space is Available

<%}

else
{

ResultSet rs2=stmt.executeQuery("select app_no from register where b_id='"+id1+"' ");
while(rs2.next())
{
arr[j++]=Integer.parseInt(rs2.getString(1));
}	
int s=n-j;
out.println(" Space  Available:-"+s);
}
}
}

%>
</td>
</tr>

<tr>
</tr>

<tr>
</tr>
</table>           
<h2> Members:-</h2>

<%
String  id2=(String) request.getParameter("msg");

ResultSet reset=stmt.executeQuery("select ten_master.*,register.doj,register.app_no from ten_master inner join register on ten_master.t_id=register.t_id where register.b_id='"+id2+"'");
while(reset.next())
{%>
<table>

<tr>
<td>
Name:
</td>
<td>
<%=reset.getString(2) %>
</td>
</tr>

<tr>
<td>
Country:
</td>
<td>
<%=reset.getString(4) %>
</td>
</tr>

<tr>
<td>
State:
</td>
<td>
<%=reset.getString(5) %>
</td>
</tr>

<tr>
<td>
City:
</td>
<td>
<%=reset.getString(6) %>
</td>
</tr>

<tr>
<td>
Address:
</td>
<td>
<%=reset.getString(7) %>
</td>
</tr>

<tr>
<td>
Phone No:
</td>
<td>
<%=reset.getString(8) %>
</td>
</tr>

<tr>
<td>
EmailId:
</td>
<td>
<%=reset.getString(9) %>
</td>
</tr>

<tr>
<td>
Date Of Joining:
</td>
<td>
<%=reset.getString(13) %>
</td>
</tr>

<tr>
<td>
Appartment No:
</td>
<td>
<%=reset.getString(14) %>
</td>
</tr>


</table>
<br />
<br />
<% } %>

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


