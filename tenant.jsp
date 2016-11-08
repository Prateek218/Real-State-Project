<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" session="true" %>
<%@ page import="java.io.*" session="true" %>

<html>
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


<div id="side_column">
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
<div class="section_w470">
<% 
String name=(String)session.getAttribute("username");
session.setAttribute("username",session.getAttribute("username"));
%>
<h2>WELCOME <%=session.getAttribute("username") %>!!</h2>
            <p>RealEstate provides cost-effective, web-based rental property management software that allows residential property managers to more effectively market, manage and grow their business. Our rental property software includes complete accounting and property management functionality with the ability to email work-orders, owner statements and resident communications. Integrated marketing features allow you to post vacancy ads to Craigslist, your website and hundreds of sites on the Internet. Professional websites are also offered and included as part of your monthly fees (one-time set-up fees apply).</p>
			<p> Integrated applications for prospective renters allow prospects to apply to rent apartments and homes online. Residents can also pay rent online each month – this is included with the monthly subscription fee. Data can be automatically migrated from your existing rental management software and outstanding service and training are included with the simple monthly fees. AppFolio is committed to industry education and is the provider of PropertyManager.com and GreenPropertyManagement.com, online education resources for landlords, owners and property managers..</p>

</div>
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
