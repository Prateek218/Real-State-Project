<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" session="true" %>
<%@ page import="java.io.*" session="true" %>
<%! int i=1; %>
<%! String q=null; %>

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
	<li class="topfirst"><a href="t_view.jsp" style="width:91px;"><span>My Profile</span></a>
	<ul>
		<li class="subfirst"><a href="t_view.jsp">View</a></li>
			<li><a href="t_update.jsp">Update</a></li>
		
	</ul></li>

	<li class="topmenu"><a href="search.jsp" style="width:91px;"><span>Property</span></a>
	<ul>
		<li class="subfirst"><a href="search.jsp">Search</a></li>
		
		
	</ul></li>
	
	<li class="topmenu"><a href="feedback.jsp" style="width:91px;"><span>Feedback</span></a>
	</li>
	
	<li class="toplast"><a href="problem.jsp" style="width:91px;"><span>Problems</span></a>
	</li>
	
</ul>


	
</div>
</div>
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
q="No Space is Available";


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

<tr>
<td >
<%
if(q==null)
{
%>
<a href="reg.jsp?msg1=<%=request.getParameter("msg") %>" >
<img src="images/register.jpg " width="100" height="100" /></a>


</td>
<td >
<a href="fix.jsp?msg1=<%=request.getParameter("msg") %>" >
<img src="images/fix.jpg" width="150" height="100" /></a>
</td>
<%
}
}catch(Exception e)
{}
%>
</tr>
 </table>           


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


