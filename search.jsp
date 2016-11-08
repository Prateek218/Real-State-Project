<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
        	<div class="real_estate_search">
            <% 
String name=(String)session.getAttribute("username");
session.setAttribute("username",session.getAttribute("username"));
%>
            <h2>Real Estate Search</h2>
            <form method="get" action="result.jsp">

			
			   
        	<div class="left_column">
			<div class="form_row"> 
			
			<label>Property Type </label><select name="s">
<option value="Residential"> Residential</option>
<option value="Appartment">Appartment</option>
<option value="Individual House">Individual house</option>
<option value="Office">Office</option>
<option value="Shop">Shop</option>
</select>
               </div>
  <div class="form_row"> <label>Country: </label><input name="country" type="text" />
               </div>
                <div class="form_row"> <label>Sate/Province: </label>
                	<input name="state" type="text"  />
                </div>
				<div class="form_row"> <label>City: </label><input name="city" type="text" />
               </div>
                
				
                
            </div>
            <div class="right_column">
	                <div class="form_row">
                    	<label>Price from</label>
                        <select name="min_price">
                            <option value="0">minimum</option>
                            <option  value="50000">50000</option>
                            <option value="100000">100000</option>
                            <option value="150000">150000</option>
                           	<option value="250000">250000</option>
                            <option value="500000">500000</option>
                        </select>
            
		           <div class="cleaner_h10"></div>
                		<label>To: </label>
                        <select name="max_price">
                            <option value="0">maximum</option>
                            <option value="100000">100000</option>
                            <option value="250000">250000</option>
                            <option value="500000">500000</option>
                           	<option value="1000000">1000000</option>
                            <option  value="2000000">2000000</option>
                        </select>
                   </div>
               	<div class="form_row"> <label>Bedroom:</label>
                	<select name="bedroom">
                    	<option value="0">select</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>
                <div class="form_row"> <label>Bathroom:</label>
                	<select name="bathroom">
                    <option value="0">select</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>
                <div class="form_row">
                  <input type="submit" value="Submit" name="submit" class="submit_btn_02" /> 
               	 
                </div>
            </div>
            
        </form>   

</div>
</div>
</div>
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
