<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" session="true"%>
<%@ page import="java.io.*" session="true"%>
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
            
            <li><a href="gallery.jsp" class="current"><span></span>Gallery</a></li>
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
		


</div>
</div>
<div id="main_column">
<h2>View</h2>
<img src="images/house_5.jpg" alt="css template" /> </br>
</br>

<img src="images/house_2.jpg" alt="css template" /> 
<img src="images/house_3.jpg" alt="css template" />  
<img src="images/house_4.jpg" alt="css template" /> 


<img src="images/templatemo_image_02.png" alt="css template" /> 
</br>
</br>
<img src="images/templatemo_image_03.png" alt="css template" /> 
<img src="images/templatemo_image_02.png" alt="css template" /> 
<img src="images/templatemo_image_03.png" alt="css template" /> 


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
			
                  <li><a href="main.jsp" >Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="view_news.jsp">Industry News</a></li>
                <li><a href="gallery.jsp" class="current">Gallery</a></li>
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


