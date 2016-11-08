<%@ page  import="java.io.*" session="true" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Real Estate</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style.css" type="text/css" />
<style type="text/css">._css3m{display:none}</style>


<style type="text/css">
label
{
font-family:Times New Roman;
font-size:18px;
color:#FFFFFF;
font-weight:500
}

</style>


<script type="text/javascript">
function val()
{


	if(document.f1.r1[0].checked==false && document.f1.r1[1].checked==false)
	{
		alert("SELECT ANY USER");
		return false;
	}
	}
</script>

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
            <li><a href="#" class="current"><span></span>Home</a></li>
            <li><a href="#"><span></span>About</a></li>
            
            <li><a href="#"><span></span>Gallery</a></li>
            <li><a href="#"><span></span>Contact</a></li>
			<li><a href="#"><span></span>Login</a></li>
        </ul>
    </div>



</div>
</div>

<div id="templatemo_content">

<form name="f1" action="sign.jsp">
<label>
<h2> REGISTER YOURSELF AS:-</h2></label><br><h2>
<input type="radio" name="r1" value="Tenant" />Tenant</h2>
<br><h2>
<input type="radio" name="r1" value="Lnadlord" />Landlord</h2>
<br>
<input type="submit" value="Submit" onClick="return val()" />

</form>

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
			
                <li><a href="#" class="current">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Industry News</a></li>
                <li><a href="#">Gallery</a></li>
                <li class="last"><a href="#">Contact</a></li>
            </ul>

        	Copyright © 2048 <a href="#">Your Company Name</a><br /><br />

            <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent" title="CSS Templates">Free CSS Templates</a><br />
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->


</body>
</html>
