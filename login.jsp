<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" session="true" %>
<html >
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Real Estate</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function validate()
{
if(document.f1.uname.value=="")
	{
		alert("PLEASE ENTER THE USERNAME");
		document.f1.uname.focus();
		return false;
	}
	if(document.f1.pwd.value=="")
	{
		alert("PLEASE ENTER THE PASSWORD");
		document.f1.pwd.focus();
		return false;
	}
	
	
	
	
}

</script>


<style type="text/css">
form
{

    width: 400px;
	height: 250px;
	padding-top:inherit;
    padding: 100px;
	

background-image:url(images/File-Lock-Key.jpg)
}

input{

    width: 230px;
   
    padding: 6px;
    margin-bottom: 10px;
    border-top: 1px solid #ad64e0;
    border-left: 0px;
    border-right: 0px;
    border-bottom: 0px;



}
select
{
width: 230px;
   
    padding: 6px;
    margin-bottom: 10px;
    border-top: 1px solid #ad64e0;
    border-left: 0px;
    border-right: 0px;
    border-bottom: 0px;

}
label
{font-family:"Times New Roman", Times, serif;
font-size:24px;
color:#FFFFFF;
}

input.submit {
    width: 100px;
    color: #000000;
    text-transform: uppercase;
       border-top: 1px solid #ad64e0;
    margin-top: 10px;
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
            
            <li><a href="gallery.jsp"><span></span>Gallery</a></li>
            <li><a href="contact.jsp"><span></span>Contact</a></li>
			<% if ((session.getAttribute("username"))!=null)
			{ %>
			<li><a href="logout.jsp"><span></span>Logout</a></li>
			<% } 
			else
			{
			%>
			<li><a href="login.jsp" class="current"><span></span>Login</a></li>
			<% }%>
        </ul>
    </div>




</div>
</div>
<div id="templatemo_content">
</div>


<center>
<form name="f1"   action="verify.jsp" method="get" >

<br />
 <% if((request.getParameter("msg"))!=null)
{
String url=(String)request.getParameter("msg");
 out.println("<strong><font color=white> <b>"+url+"</b></font></strong>"); 
 }%> 
   
<br />

       <b> <label>Username:</label></b>
		<br /><br />
            <input type="text" name="uname" /><br />
		
     <b>  <label>Password:</label></b>
		<p><br />
		  
		  <input type="password" name="pwd"  />
    </p>
		<p>
		  <label>Select:</label>
<br /><br/>
		  <select name="s1">
		    <option value="Tenant">Tenant</option>
		    <option value="Landlord">Landlord</option>
		    <option value="Admin">Admin</option>
		  
	      </select>
		  		  <br />
		  
		  <input type="submit" value="Submit" name="submit"  class="submit" onclick="return validate()"/>
		  <br />
		  
          <b><font size="-1">Not a registered user? </font> <a href="signup.jsp">SIGN UP</a></b>                </p>
</form>
</center>


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

           
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->




</body>
</html>
