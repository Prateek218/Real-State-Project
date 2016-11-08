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
            <li><a href="main.jsp" class="current"><span></span>Home</a></li>
            <li><a href="about.jsp"><span></span>About</a></li>
            
            <li><a href="gallery.jsp"><span></span>Gallery</a></li>
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
    </div> <!-- end of menu -->
    
    </div> <!-- end of banner -->

</div> <!-- end of banner wrapper -->

<div id="templatemo_content">

	<div id="side_column">
    	
        <div class="section_w290">
             <div class="news_box">
                
                <h2>Industry News</h2>
				
                
                    
                
            </div>
		</div>
        
        <div class="section_w290">
          <div class="find_agent"><a href=""><img src="images/teamplatemo_find_agent.png" alt="find an agent" /></a></div>
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of side_column -->
    
    <div id="main_column">
    
    	<div class="section_w470">
        	
            <h2>Overview</h2>
            <p>RealEstate provides cost-effective, web-based rental property management software that allows residential property managers to more effectively market, manage and grow their business. Our rental property software includes complete accounting and property management functionality with the ability to email work-orders, owner statements and resident communications. Integrated marketing features allow you to post vacancy ads to Craigslist, your website and hundreds of sites on the Internet. Professional websites are also offered and included as part of your monthly fees (one-time set-up fees apply).</p>
			<p> Integrated applications for prospective renters allow prospects to apply to rent apartments and homes online. Residents can also pay rent online each month – this is included with the monthly subscription fee. Data can be automatically migrated from your existing rental management software and outstanding service and training are included with the simple monthly fees. AppFolio is committed to industry education and is the provider of PropertyManager.com and GreenPropertyManagement.com, online education resources for landlords, owners and property managers..</p>
          
        </div>
        
        <div class="section_w470">
        	<div class="latest_properties">
	            <h2>Latest properties</h2>
  <ul class="img_list">
                	<li><img src="images/templatemo_image_01.png" alt="house 1" /></li>
                	<li><img src="images/templatemo_image_02.png" alt="house 2" /></li>
					<li><img src="images/templatemo_image_03.png" alt="house 1" /></li>
                	<li><img src="images/templatemo_image_04.png" alt="house 2" /></li>
                   
				</ul>
            <div class="cleaner"></div>    
            </div>
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
                <li><a href="main.jsp" class="current">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="view_news.jsp">Industry News</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li class="last"><a href="contact.jsp">Contact</a></li>
            </ul>

        	Copyright © 2048 <a href="#">realestate.com</a><br /><br />

            
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->
</body>
</html>