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
            <li><a href="about.jsp" class="current"><span></span>About</a></li>
            
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
				<%
				try
				{
				  }
				catch(Exception e)
				{
				out.print(""+e);
				}
				%>
                
                    
                
            </div>
		</div>
        
        
        
        <div class="cleaner"></div>
    </div> <!-- end of side_column -->
    
    <div id="main_column">
    
    	<div class="section_w470">
        	
        <p>   RealEsrate.com works in a group with dedicated & dynamic team of experienced professionals who are here to serve you, whether you are looking to buy , sell or lease for residential, commercial or industrial use.</p>
        <p>
		The core aim of the agency has always been to conduct real estate transactions in such a way as to develop long term relationships to the benefit of all concerned. we love pushing ourselves every day to do it better. This is the only Property Centre of its kind where you get anything and everything related to real estate. Please spare a few minutes to know about our Company and about the people who created and run Vismay Infra.
</p>
<p>
 The Company is willing to adopt and adapt to changing situations and requirements of its client from all parts of the country. The Company has earned an respect for itself as property developers and property builders. We provide multitude of services to our clients in keeping with our Motto <b>“Excellence is a Never Ending Journey” </b>And, we strive to provide our clients with a quality of service which they expect and are used to. We, the team at Vismay Infra work with zeal and enthusiasm to translate the dream of our clients into reality.Want to know more about us? Want to hear more about what we can do for you and your family? Just write, or send an e-mail or contact us.
</p>
<p>
<b>
Our Vision
</b>
At our company, we believe in complete customer satisfaction. We have always made an effort to make sure that its customers get homes suiting their tastes and lifestyles and budget. We strive to make sure that with every deal puts our customers as well as business partners in an advantageous position, by establishing a profitable relationship between the two.
</p>
<p>
<b>
Our Mission</b>
Our mission is to provide quality real estate and allied services and help our customers get their dream home or ideal investment as quickly as possible. An in-depth study of our clients and a methodical approach enables us to give customized and end user specific solution. Our mission is to provide the perfect opportunity for the investor for optimizing his returns.We not just say that customer is the king, but we believe in it and work around it. In addition to that giving equal importance to post sales follow up and service as pre sales is another of our cherished values. We also value and realise the importance of transparency in every deal. Last but not the least; we know the value of being a responsible corporate entity.
</p>
<p>
<b>
Why Choose a Realtor?</b>
Service of an experienced, qualified (Professionally) Realtor (Property Dealer) having in depth knowledge of properties’s documentation etc. Having a professional approach with after sale service and unimpeachable loyalty as well as integrity should be taken. In India there is no license/ qualification required to become a realtor and there are no written laws/ by laws for realtors hence the importance of an aggressive, dedicated realtor with professional approach and a sincere team for running around and also after sales service.
</p>
<p>
When you're thinking about buying or selling your property, you need to ask yourself the following questions: Do you have the time, energy, sources of information, and contacts to do the job yourself? If you are one of the 'do-it-yourself' people, would the results be as good as or better than they would be if you had professional assistance? Would it go smoother? Would it give you more personal time? Would you purchase for less, or sell for more, if a real estate agent was involved? Read the following information and learn how a real estate agent can help you understand everything you need to know about a real estate transaction.
</p>
<p>
<b>
Our Motto is "The requirement & interest of our honorable clients comes first ALWAYS & EVERYTIME"</b></p>
		</p>  
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
                <li><a href="about.jsp" class="current">About</a></li>
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