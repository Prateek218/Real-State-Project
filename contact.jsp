<%@ page import="java.sql.*" session="true" %>
<%@ page import="java.io.*" session="true" %>
<%! int i=1;%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Real Estate</title>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="templatemo_banner_wrapper">

	<div id="templatemo_banner">
    
   		<div id="templatemo_site_title">       
            <h1>
            	<img src="images/templatemo_logo.png" alt="css template" /> 
           </h1>
            
        </div> <!-- end of site title -->
        
        <div id="templatemo_menu">
    	<ul>
            <li><a href="main.jsp" ><span></span>Home</a></li>
            <li><a href="about.jsp" ><span></span>About</a></li>
            
            <li><a href="gallery.jsp"><span></span>Gallery</a></li>
            <li><a href="contact.jsp" class="current"><span></span>Contact</a></li>
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
    </div> <!-- end of menu -->
    
    </div> <!-- end of banner -->

</div> <!-- end of banner wrapper -->

<div id="templatemo_content">

	<div id="side_column">
    	
        <div class="section_w290">
             <div class="news_box">
                
                <h2>Industry News</h2>
				<%
				
				%>
                
                    
                
            </div>
		</div>
        
        
        
        <div class="cleaner"></div>
    </div> <!-- end of side_column -->
    
    <div id="main_column">
    
    	<div class="section_w470">
        	<h2> Contact Us!!</h2>
           <br />
		   <center>
          <table cellpadding="3">
		  <tr>
		  <td>
		  Name:
		  </td>
		  <td>
		 Mr. Prateek Jaiswal
		  </td>
		  </tr>
		  <tr>
		  <td>
		Contact Number:
		  </td>
		  <td>
		  +91-9044624143
		  </td>
		  </tr>
		  
		   <tr>
		  <td>
		EmailId
		  </td>
		  <td>
		  info@realestate.com
		  </td>
		  </tr>
		  
		   <tr>
		  <td>
		Address:
		  </td>
		  <td>
		 P-6/B-15, Ocean Complex, Sector-18, Noida. 201301
		  </td>
		  </tr>
		  </table>
		  </center>
        </div>
        
        
        
        
        <div class="cleaner"></div>
            </div>
        </div>
    	
    </div> <!-- end of main column -->

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
                <li><a href="main.jsp" >Home</a></li>
                <li><a href="about.jsp" >About</a></li>
                <li><a href="view_news.jsp">Industry News</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li class="last"><a href="contact.jsp" class="current">Contact</a></li>
            </ul>

        	Copyright © 2048 <a href="#">realestate.com</a><br /><br />

            
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->
</body>
</html><%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
