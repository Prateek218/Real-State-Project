
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
.ds_box {
	background-color: #FFF;
	border: 1px solid #000;
	position: absolute;
	z-index: 32767;
}

.ds_tbl {
	background-color: #FFF;
}

.ds_head {
	background-color: #333;
	color: #FFF;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	font-weight: bold;
	text-align: center;
	letter-spacing: 2px;
}

.ds_subhead {
	background-color: #CCC;
	color: #000;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	width: 32px;
}

.ds_cell {
	background-color: #EEE;
	color: #000;
	font-size: 13px;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	padding: 5px;
	cursor: pointer;
}

.ds_cell:hover {
	background-color: #F3F3F3;
} /* This hover code won't work for IE */

</style>
</head>
<body>

<table class="ds_box" cellpadding="0" cellspacing="0" id="ds_conclass" style="display: none;">
<tr><td id="ds_calclass">
</td></tr>
</table>

<script type="text/javascript">
// <!-- <![CDATA[

// Project: Dynamic Date Selector (DtTvB) - 2006-03-16
// Script featured on JavaScript Kit- http://www.javascriptkit.com
// Code begin...
// Set the initial date.
var ds_i_date = new Date();
ds_c_month = ds_i_date.getMonth() + 1;
ds_c_year = ds_i_date.getFullYear();

// Get Element By Id
function ds_getel(id) {
	return document.getElementById(id);
}

// Get the left and the top of the element.
function ds_getleft(el) {
	var tmp = el.offsetLeft;
	el = el.offsetParent
	while(el) {
		tmp += el.offsetLeft;
		el = el.offsetParent;
	}
	return tmp;
}
function ds_gettop(el) {
	var tmp = el.offsetTop;
	el = el.offsetParent
	while(el) {
		tmp += el.offsetTop;
		el = el.offsetParent;
	}
	return tmp;
}

// Output Element
var ds_oe = ds_getel('ds_calclass');
// Container
var ds_ce = ds_getel('ds_conclass');

// Output Buffering
var ds_ob = ''; 
function ds_ob_clean() {
	ds_ob = '';
}
function ds_ob_flush() {
	ds_oe.innerHTML = ds_ob;
	ds_ob_clean();
}
function ds_echo(t) {
	ds_ob += t;
}

var ds_element; // Text Element...

var ds_monthnames = [
'January', 'February', 'March', 'April', 'May', 'June',
'July', 'August', 'September', 'October', 'November', 'December'
]; // You can translate it for your language.

var ds_daynames = [
'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'
]; // You can translate it for your language.

// Calendar template
function ds_template_main_above(t) {
	return '<table cellpadding="3" cellspacing="1" class="ds_tbl">'
	     + '<tr>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_py();"><<</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_pm();"><</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_hi();" colspan="3">[Close]</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_nm();">></td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_ny();">>></td>'
		 + '</tr>'
	     + '<tr>'
		 + '<td colspan="7" class="ds_head">' + t + '</td>'
		 + '</tr>'
		 + '<tr>';
}

function ds_template_day_row(t) {
	return '<td class="ds_subhead">' + t + '</td>';
	// Define width in CSS, XHTML 1.0 Strict doesn't have width property for it.
}

function ds_template_new_week() {
	return '</tr><tr>';
}

function ds_template_blank_cell(colspan) {
	return '<td colspan="' + colspan + '"></td>'
}

function ds_template_day(d, m, y) {
	return '<td class="ds_cell" onclick="ds_onclick(' + d + ',' + m + ',' + y + ')">' + d + '</td>';
	// Define width the day row.
}

function ds_template_main_below() {
	return '</tr>'
	     + '</table>';
}

// This one draws calendar...
function ds_draw_calendar(m, y) {
	// First clean the output buffer.
	ds_ob_clean();
	// Here we go, do the header
	ds_echo (ds_template_main_above(ds_monthnames[m - 1] + ' ' + y));
	for (i = 0; i < 7; i ++) {
		ds_echo (ds_template_day_row(ds_daynames[i]));
	}
	// Make a date object.
	var ds_dc_date = new Date();
	ds_dc_date.setMonth(m - 1);
	ds_dc_date.setFullYear(y);
	ds_dc_date.setDate(1);
	if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) {
		days = 31;
	} else if (m == 4 || m == 6 || m == 9 || m == 11) {
		days = 30;
	} else {
		days = (y % 4 == 0) ? 29 : 28;
	}
	var first_day = ds_dc_date.getDay();
	var first_loop = 1;
	// Start the first week
	ds_echo (ds_template_new_week());
	// If sunday is not the first day of the month, make a blank cell...
	if (first_day != 0) {
		ds_echo (ds_template_blank_cell(first_day));
	}
	var j = first_day;
	for (i = 0; i < days; i ++) {
		// Today is sunday, make a new week.
		// If this sunday is the first day of the month,
		// we've made a new row for you already.
		if (j == 0 && !first_loop) {
			// New week!!
			ds_echo (ds_template_new_week());
		}
		// Make a row of that day!
		ds_echo (ds_template_day(i + 1, m, y));
		// This is not first loop anymore...
		first_loop = 0;
		// What is the next day?
		j ++;
		j %= 7;
	}
	// Do the footer
	ds_echo (ds_template_main_below());
	// And let's display..
	ds_ob_flush();
	// Scroll it into view.
	ds_ce.scrollIntoView();
}

// A function to show the calendar.
// When user click on the date, it will set the content of t.
function ds_sh(t) {
	// Set the element to set...
	ds_element = t;
	// Make a new date, and set the current month and year.
	var ds_sh_date = new Date();
	ds_c_month = ds_sh_date.getMonth() + 1;
	ds_c_year = ds_sh_date.getFullYear();
	// Draw the calendar
	ds_draw_calendar(ds_c_month, ds_c_year);
	// To change the position properly, we must show it first.
	ds_ce.style.display = '';
	// Move the calendar container!
	the_left = ds_getleft(t);
	the_top = ds_gettop(t) + t.offsetHeight;
	ds_ce.style.left = the_left + 'px';
	ds_ce.style.top = the_top + 'px';
	// Scroll it into view.
	ds_ce.scrollIntoView();
}

// Hide the calendar.
function ds_hi() {
	ds_ce.style.display = 'none';
}

// Moves to the next month...
function ds_nm() {
	// Increase the current month.
	ds_c_month ++;
	// We have passed December, let's go to the next year.
	// Increase the current year, and set the current month to January.
	if (ds_c_month > 12) {
		ds_c_month = 1; 
		ds_c_year++;
	}
	// Redraw the calendar.
	ds_draw_calendar(ds_c_month, ds_c_year);
}

// Moves to the previous month...
function ds_pm() {
	ds_c_month = ds_c_month - 1; // Can't use dash-dash here, it will make the page invalid.
	// We have passed January, let's go back to the previous year.
	// Decrease the current year, and set the current month to December.
	if (ds_c_month < 1) {
		ds_c_month = 12; 
		ds_c_year = ds_c_year - 1; // Can't use dash-dash here, it will make the page invalid.
	}
	// Redraw the calendar.
	ds_draw_calendar(ds_c_month, ds_c_year);
}

// Moves to the next year...
function ds_ny() {
	// Increase the current year.
	ds_c_year++;
	// Redraw the calendar.
	ds_draw_calendar(ds_c_month, ds_c_year);
}

// Moves to the previous year...
function ds_py() {
	// Decrease the current year.
	ds_c_year = ds_c_year - 1; // Can't use dash-dash here, it will make the page invalid.
	// Redraw the calendar.
	ds_draw_calendar(ds_c_month, ds_c_year);
}

// Format the date to output.
function ds_format_date(d, m, y) {
	// 2 digits month.
	m2 = '00' + m;
	m2 = m2.substr(m2.length - 2);
	// 2 digits day.
	d2 = '00' + d;
	d2 = d2.substr(d2.length - 2);
	// YYYY-MM-DD
	return y + '-' + m2 + '-' + d2;
}

// When the user clicks the day.
function ds_onclick(d, m, y) {
	// Hide the calendar.
	ds_hi();
	// Set the value of it, if we can.
	if (typeof(ds_element.value) != 'undefined') {
		ds_element.value = ds_format_date(d, m, y);
	// Maybe we want to set the HTML in it.
	} else if (typeof(ds_element.innerHTML) != 'undefined') {
		ds_element.innerHTML = ds_format_date(d, m, y);
	// I don't know how should we display it, just alert it to user.
	} else {
		alert (ds_format_date(d, m, y));
	}
}

// And here is the end.

// ]]> -->
</script>

<script type="text/javascript">
function val()
{
	if(document.f1.t1.value=="")
	{
		alert("PLEASE ENTER THE NAME");
		document.f1.t1.focus();
		return false;
	}
	if(document.f1.t2.value=="")
	{
		alert("PLEASE ENTER THE DATE OF BIRTH");
		document.f1.t2.focus();
		return false;
	}
	if(document.f1.t3.value=="")
	{
		alert("PLEASE ENTER THE COUNTRY");
		document.f1.t3.focus();
		return false;
	}
	
	if(document.f1.t4.value=="")
	{
		alert("PLEASE ENTER THE STATE");
		document.f1.t4.focus();
		return false;
	}
	if(document.f1.t5.value=="")
	{
		alert("PLEASE ENTER THE CITY");
		document.f1.t5.focus();
		return false;
	}
	if(document.f1.t6.value=="")
	{
		alert("PLEASE ENTER THE ADDRESS");
		document.f1.t6.focus();
		return false;
	}
	if(document.f1.t7.value.length!=10)
{


	alert("PLEASE ENTER VALID PHONE NO");
	document.f1.t7.focus();
	return false;


}
var r=document.f1.t8.value.indexOf("@");
 if(r<1)
 {
 alert("PLEASE ENTER CORRECT EMAIL ID");
document.f1.t8.focus();
 return false;
 }
 
if(document.f1.t9.value=="")
	{
		//alert("PLEASE CHOOSE THE PHOTO");
		document.f1.t9.focus();
		return true;
	}
	if(document.f1.t10.value=="")
	{
		alert("PLEASE FILL THE COMPANY NAME");
		document.f1.t10.focus();
		return false;
	}
	if(document.f1.t11.value=="")
	{
		alert("PLEASE FILL THE COMPANY ADDRESS");
		document.f1.t11.focus();
		return false;
	}

	if(document.f1.r1[0].checked==false && document.f1.r1[1].checked==false)
	{
		alert("SELECT THE GENDER");
		return false;
	}
	if(document.f1.uname.value=="")
	{
		alert("PLEASE ENTER THE NAME");
		document.f1.uname.focus();
		return false;
	}
	if(document.f1.pwd.value=="")
	{
		alert("PLEASE ENTER THE PASSWORD");
		document.f1.pwd.focus();
		return false;
	}
	if(document.f1.pwd.value != document.f1.cpwd.value)
	{
		alert(" CONFIRM THE PASSWORD");
		document.f1.cpwd.value="";
		document.f1.cpwd.focus();
		return false;
	}
	
document.f1.submit();
	}
	
	function check(evt)
{
	var r=evt.keyCode;
	if(r>31 && (r<48 || r>57))
	return false;
	
	return true;
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
        <li><a href="main.jsp" ><span></span>Home</a></li>
            <li><a href="about.jsp"><span></span>About</a></li>
            
            <li><a href="gallery.jsp" ><span></span>Gallery</a></li>
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
<center>
<div id="templatemo_content">
<div id="main_column">
<div class="section_w470">

<div class="real_estate_search">
<center><h1>Register!!</h1></center>
<br />


<form name="f1" method="get" action="l_register.jsp" style="text-align:left">
<br />
<br />
<% if((request.getParameter("msg"))!=null)
{
String url="USERNAME ALREADY IN USE.PLEASE SELECT OTHER USERNAME!!" ;
 out.println("<strong><font color=red> <b>"+url+"</b></font></strong>"); 
 }%> 
<table cellpadding="5">
<tr>
<td>
<label>Name:</label></td>
<td>
<input type="text"  name="t1" /></td><br />
</tr>

<tr>
<td>
<label>
Date Of Birth:</label>
</td>
<td> 
 <input onClick="ds_sh(this);" name="t2" readonly="readonly" style="cursor: text" /><br />
</td>
</tr>

<tr>
<td>
<label> Country :</label>
</td>
<td>
 <input type="text" name="t3" />
</td>
</tr>
<tr>
<td>
<label> State :</label></td>
<td> <input type="text" name="t4" /></td>
</tr>

<tr>
<td>
<label> City:</label> 
</td>
<td>
<input type="text" name="t5" />
</td>
</tr>

<tr>
<td>

<label> Address :</label></td>
<td> <textarea name="t6">
</textarea>
</td></tr>

<tr>
<td>
<label> Phone No :</label></td>
<td> <input type="text" name="t7"  onkeypress="return check(event)"/></td>
</tr>

<tr>
<td><label>Email Id</label></td><td> <input type="text" name="t8" /></td>
</tr>
<tr>
<td><label> Gender :</label></td><td> <input type="radio" name="r1"  value="male"/> Male
<input type="radio" name="r1" value="female" /> Female</td>
</tr>
<tr>
<td>
<label> Company Name :</label>
</td>
<td>
<input type="text" name="t10" />
</td>
</tr>
<tr>
<td>
<label> Company Address :</label>
</td>
<td>
<textarea name="t11">
</textarea>
</td>
</tr>
<tr>


</tr>

</table>
<br />
<br />
<h1> Login Details</h1>
<br />
<br />
<table cellpadding="5">

<tr>

<td>
<label> Username:</label>
</td>

<td>
<input type="text" name="uname" /></td>
</tr>

<tr>
<td>
<label>Password:</label>

</td>
<td>
<input type="password" name="pwd" />
</td>
</tr>

<tr>
<td>
<label> Confirm Password:</label>
</td>
<td>
<input type="password" name="cpwd" />
</td>
</tr>

<tr>

<td>
</td>
<td>
<input type="submit" name="submit" value="submit"  onclick="return val();"/>
</td>
</tr>
</table>
</form>

</div>
</div>

</div>

</div>
</center>
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

        	Copyright � 2048 <a href="#">Your Company Name</a><br /><br />

            <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent" title="CSS Templates">Free CSS Templates</a><br />
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->


</body>
</html>
