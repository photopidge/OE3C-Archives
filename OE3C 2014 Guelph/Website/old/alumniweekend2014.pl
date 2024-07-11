#!/usr/bin/perl


use CGI;
use Fcntl ':flock';

print <<__END__;
Content-type: text/html

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-CA">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Registration - Alumni Weekend | University of Guelph</title>
	<base href="https://www.uoguelph.ca" />
    <meta name="description" content="University of Guelph - Ontario, Canada.  Biological and Physical Sciences, Veterinary Medicine, Agriculture, Engineering, Arts and Social Sciences, as well as applied and professional programs." />
    <meta name="keywords" content="University of Guelph, Guelph University, U of G, Guelph, Ontario, Canada, University, graduate, undergraduate, research, science, biology, physics, chemistry, veterinary, agriculture, engineering, arts, social sciences, degree, academic, student, school" />
    <link rel="stylesheet" type="text/css" href="https://www.uoguelph.ca/alumni/Rotating_News/contentslider.css" />
    <link rel="stylesheet" type="text/css" href="https://www.uoguelph.ca/alumni/includes/alumni_custom2_secure.css" />
    <link rel="stylesheet" type="text/css" href="https://www.uoguelph.ca/alumni/Black_Tab_Menu/tab_menu.css" />

    <script type="text/javascript" src="https://www.uoguelph.ca/alumni/Rotating_News/contentslider.js">
/***********************************************
* Featured Content Slider- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/
</script>

<meta name="icbm" content="43.53000, -80.23000" />
<meta name="geo.country" content="CA" />
<link rel="home" title="Home" href="http://www.uoguelph.ca/" />
<link rel="copyright" title="Copyright" href="https://www.uoguelph.ca/web/terms/" />
<link rel="index" title="Sitemap" href="https://www.uoguelph.ca/sitemap/" />

<link rel="shortcut icon" href="https://www.uoguelph.ca/images/guelph.ico" />
<link href="https://www.uoguelph.ca/alumni/includes/alumni_custom2_secure.css" rel="stylesheet" type="text/css" media="screen" />
<link href="https://www.uoguelph.ca/css/linkPreview.css" rel="stylesheet" type="text/css" />
    

<script language="JavaScript" src="https://www.uoguelph.ca/js/noframes.js" type="text/javascript"></script>
<!--<script language="JavaScript" src="https://www.uoguelph.ca/js/linkPreview.js" type="text/javascript"></script>
<script type="text/javascript" src="https://www.uoguelph.ca/js/sweetTitles.js"></script>-->
<script type="text/javascript" src="https://www.uoguelph.ca/js/search.js"></script>
<style type="text/css" media="screen">
<!--
@import url("https://www.uoguelph.ca/css/sweetTitles.css");
-->
 </style>
 
<script language="javascript" type="text/javascript">

function check_the_form()
{
  
  f = document.online_registration_form;
  var form_error = false;
  
  if (f.Total.value == "") {
    alert("Please check to see that there is a total amount");
    form_error = true;
    return false;
  }
  if (f.Total.value != "" && f.Total.value.match(/^[0-9]+\.?[0-9]{0,2}\$/) == null ) {
    alert("Please check the total amount showing.\\nNon-numeric characters, including comas, are not\\nallowed in the total");
    form_error = true;
    return false;
  }
  if (f.Last_name.value == "" || f.First_name.value == "") {
    alert("Please enter your first and last name.");
    form_error = true;
    return false;
  }
  
  if (f.Last_name.value == "" || f.First_name.value == "") {
    alert("Please enter your first and last name.");
    form_error = true;
    return false;
  }
  
  if (f.street_address.value == "" ) {
    alert("Please enter your street address.");
    form_error = true;
    return false;
  }
  
  if (f.city.value == "" ) {
    alert("Please enter your city.");
    form_error = true;
    return false;
  }
  
  if (f.select_province.selectedIndex == 0 ) {
    alert("Please enter your province.");
    form_error = true;
    return false;
  }
  
  if (f.country.selectedIndex == 0 ) {
    alert("Please enter your country.");
    form_error = true;
    return false;
  }
  
  if (f.postalcode_zip.value == "" ) {
    alert("Please enter your postal or zip code.");
    form_error = true;
    return false;
  }
    
  if (f.phone_number.value == "" ) {
    alert("Please enter your phone number.");
    form_error = true;
    return false;
  }
  
  if (f.email.value == "" ) {
    alert("Please enter your email address.");
    form_error = true;
    return false;
  }
  
  if (!form_error) {
    f.submit();
  }
  
}
// -->
</script>
</head>

<body>
<!-- Script for Google Analytics Beginning-->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-16737819-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<!-- Script for Google Analytics Ending-->
<div id="header">

  <style type="text/css" media="screen">
<!--
#header #global h1 { display:block; }
#header #global #alumni a { display:block; color:#fff; text-decoration:none; }
-->
</style>
  <div id="global">
    <div class="container"> <a id="logo" href="http://www.uoguelph.ca/"><strong>University of Guelph</strong></a>
      <div id="alumni">
	  <h1><a href="http://www.alumni.uoguelph.ca">Alumni &amp; Friends</a></h1>
	  </div>
<!--[if IE]>
  <form id="searchbox_011117603928904778939:tp3ks5ha2dw" action="https://www.uoguelph.ca/search/">
    <input type="hidden" name="cx" value="011117603928904778939:tp3ks5ha2dw" />
    <input type="hidden" name="cof" value="FORID:11" />
    <input name="q" type="text"  size="20" maxlength="256" class="search1" id="searchtext" />
	<input type="hidden" name="commonname" value="" />
	<span id="searchtype">search:</span>
	<b><span>Web</span></b> <a href="https://www.uoguelph.ca/directory/">Directory</a> <a href="https://www.lib.uoguelph.ca/">Library</a>
    <label for="searchtext"><input type="image" src="https://www.uoguelph.ca/img/search.gif" alt="search" id="searchbutton" /></label>
  </form>
<![endif]-->
<![if !IE]>

<script type="text/javascript">
document.writeln('  <form id="searchbox_011117603928904778939:tp3ks5ha2dw" action="https://www.uoguelph.ca/search/" name="searchform" onsubmit="return dosearch();">    <input type="hidden" name="cx" value="011117603928904778939:tp3ks5ha2dw" />    <input type="hidden" name="cof" value="FORID:11" />    <input name="q" type="text"  size="20" maxlength="256" class="search1" id="searchtext" />    <input type="hidden" name="commonname" value="" />	<span id="searchtype">search:</span>	<input name="rsearch" type="radio" value="cse" checked="checked" id="rsearcha" onclick="webSet();" />	<label for="rsearcha"><span><a href="#" onclick="document.searchform.rsearch[0].click(); webSet(); return false;">Web</a></span></label>	<input name="rsearch" type="radio" value="directory" id="rsearchb" onclick="dirSet();" />	<label for="rsearchb"><span><a href="#" onclick="document.searchform.rsearch[1].click(); dirSet(); return false;">Directory</a></span></label>	 <input name="rsearch" type="radio" value="library" id="rsearchc" onclick="libSet();" />	 <label for="rsearchc"><span><a href="#" onclick="document.searchform.rsearch[2].click(); libSet(); return false;">Library</a></span></label>	<label for="searchtext"><input type="image" src="https://www.uoguelph.ca/img/search.gif" alt="search" id="searchbutton" /></label>	</form>  ');
</script>
<noscript>
  <form id="searchbox_011117603928904778939:tp3ks5ha2dw" action="https://google.com/cse">
    <input type="hidden" name="cx" value="011117603928904778939:tp3ks5ha2dw" />
    <input type="hidden" name="cof" value="FORID:0" />
    <input name="q" type="text"  size="20" maxlength="256" class="search1" id="searchtext" />
	<input type="hidden" name="commonname" value="" />
	<span id="searchtype">search:</span>
	<b><span>Web</span></b> <a href="https://www.uoguelph.ca/directory/">Directory</a> <a href="https://www.lib.uoguelph.ca/">Library</a>
    <label for="searchtext"><input type="image" src="https://www.uoguelph.ca/img/search.gif" alt="search" id="searchbutton" /></label>
  </form>
</noscript>
<![endif]>



      <div id="globalnav">
        <ul>
          <li><a href="http://www.uoguelph.ca/academics/" id="menu-academics"><span>Academics</span></a></li>
          <li><a href="http://www.uoguelph.ca/campus/" id="menu-campus"><span>Campus</span></a></li>
          <li><a href="http://www.uoguelph.ca/library/" id="menu-library"><span>Libraries</span></a></li>
          <li><a href="http://www.uoguelph.ca/research.php" id="menu-research"><span>Research</span></a></li>
          <li><a href="http://www.uoguelph.ca/services/" id="menu-services"><span>Services</span></a></li>
        </ul>
      </div>
    </div>
  </div>



  <div id="local">

    <div class="container">

<ul>
    <li><a href="http://www.alumni.uoguelph.ca/stay/stay_update.shtml">Stay<br />Connected</a></li>
    <li><a href="http://www.alumni.uoguelph.ca/involved/involved_events.shtml">Get<br />Involved</a></li>
    <li><a href="http://www.alumni.uoguelph.ca/give/give.shtml">Give To<br />Guelph</a></li>
    <li><a href="http://www.alumni.uoguelph.ca/services/services_benefits_start.shtml">Services<br />&amp; Benefits</a></li>
    <li><a href="http://www.alumni.uoguelph.ca/about/aboutus.shtml">Alumni Affairs <br /> &amp; Development</a></li>		
</ul>


    </div>

  </div>

</div>

<div id="main">

  <div class="container">

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
	<tr>
		<td width="100%"><img src="https://www.alumni.uoguelph.ca/involved/images/UofG_AlumniWeekend_2014_Banner.jpg" /></td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
	<tr>
		<td width="100%">
			 <div id="tabsH">
                <ul>
                  <!-- CSS Tabs -->
                  <!--<li id="current"><a href="https://www.uoguelph.ca/alumni/primary.shtml"><span>Home</span></a></li>-->
                  <li><a href="http://www.alumni.uoguelph.ca/involved/involved_events.shtml"><span>Events</span></a></li>
                  <li><a href="http://www.alumni.uoguelph.ca/involved/involved_volunteer.shtml"><span>Volunteer</span></a></li>
                  <li><a href="http://www.alumni.uoguelph.ca/involved/involved_chapters.shtml"><span>Chapters</span></a></li>
                  <li><a href="http://www.alumni.uoguelph.ca/involved/involved_association.shtml"><span>Associations</span></a></li>
                  <li><a href="http://www.alumni.uoguelph.ca/involved/involved_ugaa_message.shtml"><span>UGAA</span></a></li>
                </ul>
              </div>
		</td>
	</tr>
</table>

  <table width="100%" border="0" cellspacing="2" cellpadding="0">
    <tr>
      <td valign="top" colspan="2"><table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
            <td valign="top" colspan="2" width="800"><h1>Alumni Weekend Registration</h1>
			<br/>
			<p><strong>Date: </strong>June 20 - 22, 2014</p>
			<p><strong>University of Guelph</strong></p><br/>
			
					
					
                    
					
					<p class="bodytext"><p style="font-family:Arial, Helvetica, sans-serif;" size="1"><b>Note: Only Visa and Mastercard are accepted online.  No refunds.</b>
					</p>
                    <br>
                      <i>
                        <p style="font-family:Arial, Helvetica, sans-serif;"" size="2"><b>Fields marked with an <font face="verdana" size="2" color="#990000">*</font> designate the required information necessary for us to process your registration. After submitting this form, you will have ten minutes to complete the credit card transaction. Our SSL security is provided by &nbsp;<a href="https://www.thawte.com/">Thawte</a>&nbsp;&nbsp;a division of &nbsp;<a href="http://www.verisign.com">VeriSign</a>.</b></font>
                      </i>
                    </p>
					
								
								<form action="https://www.uoguelph.ca/alumni/cgi-bin/aw2014_relay.pl" method="post" name="online_registration_form">
__END__

unless ( open(FILE, "+<mtid") ) {
	open( OUT, ">mtid" ) || die( "couldn't make new file: count" );
 	flock( OUT, LOCK_EX );
	print OUT "0000000000";
	close OUT;
	open(FILE, "+<mtid");
}
flock( FILE, LOCK_EX ) or print " flock ack $!";
my $mtid = <FILE> or print " read ack $!";
seek( FILE, 0, 0 ); 
truncate( FILE, 0 );

print "<input name=\"MTID\" type=\"hidden\" value=\"", ++($mtid), "\">"; 
print FILE $mtid or print " output ack $!";

flock( FILE, LOCK_UN );
close FILE;

print <<__END1__;

                 <table width="98%" border="0" cellspacing="0" cellpadding="2" align="left">
                        <tr>
                          <td valign="top" width="800" colspan="5">
                            <br>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
                              <tr height="10">
                                <td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
                              </tr>
                            </table>
                          </td>
                        </tr>
											
										<tr>
											<td valign="top" width="775">

												<font face="verdana" size="2"><font face="verdana" size="2"><b><font face="verdana" size="2">Guest Registration</font><br>
														</b></font></p>
												<table border="0">
													<tr valign="top">
														<td></td>
														<td>&nbsp;&nbsp;<font color="#990000">* </font><font face="verdana" size="2">First Name</font></td>
														<td>&nbsp;&nbsp;&nbsp;<font color="#990000">* </font><font face="verdana" size="2">Last Name</font></td>
														<td><font face="verdana" size="2">&nbsp;U of G Degree/Year</font></td>
														<td align="center"><font face="verdana" size="2">&nbsp;Dietary Restrictions</font><br /></td>
														<td><font face="verdana" size="2">&nbsp;City</font></td>
														<td><font face="verdana" size="2">&nbsp;Province</font></td>
													</tr>
													<tr>
														<td width="9">
															<font face="verdana" size="2"></p>
														</td>
														<td>1.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree" size="18" maxlength="40" ></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs" size="18" maxlength="40"></td>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>2.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name2" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name2" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree2" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs2" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City2" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province2" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>3.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name3" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name3" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree3" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs3" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City3" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province3" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>4.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name4" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name4" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree4" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs4" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City4" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province4" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td width="9">
															<font face="verdana" size="2"></p>
														</td>
														<td>5.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name5" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name5" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree5" size="18" maxlength="40" ></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs5" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City5" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province5" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>6.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name6" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name6" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree6" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs6" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City6" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province6" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>7.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name7" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name7" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree7" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs7" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City7" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province7" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>8.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name8" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name8" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree8" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs8" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City8" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province8" size="18" maxlength="40"></td>
													</tr>
													
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>9.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name9" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name9" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree9" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs9" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City9" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province9" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td width="11">
															<font face="verdana" size="2"></p>
														</td>
														<td>10.&nbsp;&nbsp;<input class="bodytext" type="text" name="First_name10" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Last_name10" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Degree10" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Needs10" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="City10" size="18" maxlength="40"></td>
														<td>&nbsp;<input class="bodytext" type="text" name="Province10" size="18" maxlength="40"></td>
													</tr>
													<tr>
														<td valign="top" width="800" colspan="5"><br>
														</table>
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
                              <tr height="10">
                                <td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
                              </tr>
                            </table>
			<table width="100%" cellspacing="2">
														</td>
													</tr>
													<tr>
														<td>
															<font face="verdana" size="2"><font color="#990000">* </font></p>
														</td>
														<td>
															<font face="verdana" size="2">Your Street Address:</font>
														</td>
														<td><input type="text" name="street_address" size="25" maxlength="60"></td>

														<td></td>
														<td>
															<font face="verdana" size="2">Apartment or Unit Number:</font>
														</td>
														<td><input type="text" name="apartment_number" size="25" maxlength="60"></td>
													</tr>

													<tr>
														<td>
															<font face="verdana" size="2"><font color="#990000">* </font></p>
														</td>
														<td>
															<font face="verdana" size="2">City:</font>
														</td>
														<td><input type="text" name="city" size="25" maxlength="60"></td>

													
														<td>
															<font face="verdana" size="2"><font color="#990000">* </font></p>
														</td>
														<td>
															<font face="verdana" size="2">Province/ State:</font>
														</td>

														<td><select name="select_province">
																<option selected value="0">Province/State</option>
																<option value="Alberta">Alberta</option>
																<option value="British Columbia">British Columbia</option>
																<option value="Manitoba">Manitoba</option>
																<option value="New Brunswick">New Brunswick</option>

																<option value="Newfoundland">Newfoundland</option>
																<option value="Nova Scotia">Nova Scotia</option>
																<option value="Ontario">Ontario</option>
																<option value="PEI">Prince Edward Island</option>
																<option value="Quebec">Quebec</option>
																<option value="Saskatchewan">Saskatchewan</option>

																<option value="Northwest Territories">Northwest Territories</option>
																<option value="Nunavut Territory">Nunavut Territory</option>
																<option value="Yukon Territory">Yukon Territory</option>
																<option value="Ak">Alaska</option>
																<option value="Al">Alabama</option>
																<option value="Ar">Arkansas</option>

																<option value="As">American Samoa</option>
																<option value="Az">Arizona</option>
																<option value="Ca">California</option>
																<option value="Co">Colorado</option>
																<option value="Ct">Connecticut</option>
																<option value="Dc">District Of Columbia</option>

																<option value="De">Delaware</option>
																<option value="Fl">Florida</option>
																<option value="Ga">Georgia</option>
																<option value="Gj">Guam</option>
																<option value="Hi">Hawaii</option>
																<option value="Ia">Iowa</option>

																<option value="Id">Idaho</option>
																<option value="Il">Illinois</option>
																<option value="In">Indiana</option>
																<option value="Ks">Kansas</option>
																<option value="Ky">Kentucky</option>
																<option value="La">Louisiana</option>

																<option value="Ma">Massachusetts</option>
																<option value="Md">Maryland</option>
																<option value="Me">Maine</option>
																<option value="Mi">Michigan</option>
																<option value="Mn">Minnesota</option>
																<option value="Mo">Missouri</option>

																<option value="Ms">Mississippi</option>
																<option value="Mt">Montana</option>
																<option value="Nc">North Carolina</option>
																<option value="Nd">North Dakota</option>
																<option value="Ne">Nebraska</option>
																<option value="Nh">New Hampshire</option>

																<option value="Nj">New Jersey</option>
																<option value="Nm">New Mexico</option>
																<option value="Nv">Nevada</option>
																<option value="Ny">New York</option>
																<option value="Oh">Ohio</option>
																<option value="Ok">Oklahoma</option>

																<option value="Or">Oregon</option>
																<option value="Pa">Pennsylvania</option>
																<option value="Pr">Puerto Rico</option>
																<option value="Ri">Rhode Island</option>
																<option value="Sc">South Carolina</option>
																<option value="Sd">South Dakota</option>

																<option value="Tn">Tennessee</option>
																<option value="Tx">Texas</option>
																<option value="Ut">Utah</option>
																<option value="Va">Virginia</option>
																<option value="Vi">Virgin Islands</option>
																<option value="Vt">Vermont</option>

																<option value="Wa">Washington</option>
																<option value="Wi">Wisconsin</option>
																<option value="Wv">West Virginia</option>
																<option value="Wy">Wyoming</option>
																<option value="Other">Outside Canada and US</option>
															</select></td>

													</tr>
													<tr>
														<td>
															<font face="verdana" size="2"><font color="#990000">* </font></p>
														</td>
														<td>
															<font face="verdana" size="2">Country</font>
														</td>

														<td><select name="country">
																<option selected value="">Select a country</option>
																<option value="CAN">Canada</option>
																<option value="USA">United States</option>
																<option value="AFG">Afghanistan</option>
																<option value="AJM">Ajman</option>

																<option value="ALB">Albania</option>
																<option value="ALG">Algeria</option>
																<option value="AND">Andorra</option>
																<option value="ANG">Angola</option>
																<option value="AGU">Anguilla</option>
																<option value="ATG">Antigua</option>

																<option value="ARG">Argentina</option>
																<option value="ARM">Armenia</option>
																<option value="ARU">Aruba</option>
																<option value="AST">Australia</option>
																<option value="AUS">Austria</option>
																<option value="AZB">Azerbaijan</option>

																<option value="BAH">Bahamas</option>
																<option value="BAI">Bahrain</option>
																<option value="BAN">Bangladesh</option>
																<option value="BAR">Barbados</option>
																<option value="BLR">Belarus</option>
																<option value="BEL">Belgium</option>

																<option value="BRH">Belize</option>
																<option value="BEN">Benin</option>
																<option value="BER">Bermuda</option>
																<option value="BHU">Bhutan</option>
																<option value="BOL">Bolivia</option>
																<option value="BOS">Bosnia and Herzegovina</option>

																<option value="BOT">Botswana</option>
																<option value="BRA">Brazil</option>
																<option value="BIO">British Indian Ocean Terr</option>
																<option value="BVI">British Virgin Islands</option>
																<option value="BRU">Brunei</option>
																<option value="BUL">Bulgaria</option>

																<option value="BUR">Burkina Faso</option>
																<option value="BUN">Burundi</option>
																<option value="CAM">Cameroon</option>
																<option value="CIS">Canary Islands</option>
																<option value="CAP">Cape Verde</option>
																<option value="CAY">Cayman Islands</option>

																<option value="CAR">Central African Republic</option>
																<option value="CHA">Chad</option>
																<option value="CHL">Chile</option>
																<option value="PRC">China</option>
																<option value="COC">Cocos Islands</option>
																<option value="COL">Colombia</option>

																<option value="COM">Comoro Islands</option>
																<option value="CON">Congo Republic</option>
																<option value="NEZ">Cook Islands</option>
																<option value="COS">Costa Rica</option>
																<option value="CRO">Croatia</option>
																<option value="CUB">Cuba</option>

																<option value="CYP">Cyprus</option>
																<option value="CZR">Czech Republic</option>
																<option value="CZC">Czechoslovakia</option>
																<option value="DRK">Democratic Republic of Korea</option>
																<option value="DEN">Denmark</option>
																<option value="FRS">Djibouti</option>

																<option value="DMN">Dominica</option>
																<option value="DOM">Dominican Republic</option>
																<option value="DUB">Dubai</option>
																<option value="DUT">Dutch Carribean</option>
																<option value="ECU">Ecuador</option>
																<option value="EGY">Egypt</option>

																<option value="ELS">El Salvador</option>
																<option value="ENG">England</option>
																<option value="EQG">Equatorial Guinea</option>
																<option value="EST">Estonia</option>
																<option value="ETH">Ethiopia</option>
																<option value="FAL">Falkland Islands</option>

																<option value="FAR">Faroe Islands</option>
																<option value="FIJ">Fiji</option>
																<option value="FIN">Finland</option>
																<option value="FRA">France</option>
																<option value="FRG">French Guiana</option>
																<option value="SOP">French Polynesia</option>

																<option value="FUJ">Fujaira</option>
																<option value="FRE">Gabon</option>
																<option value="GAM">Gambia</option>
																<option value="GEO">Georgia</option>
																<option value="GER">Germany</option>
																<option value="GER">Germany</option>

																<option value="GHN">Ghana</option>
																<option value="GIB">Gibraltar</option>
																<option value="GEI">Gilbert &amp; Ellice Islands</option>
																<option value="GRC">Greece</option>
																<option value="GRN">Greenland</option>

																<option value="GRE">Grenada</option>
																<option value="GUD">Guadeloupe</option>
																<option value="GUT">Guatemala</option>
																<option value="GUN">Guinea</option>
																<option value="PRG">Guinea Bissau</option>
																<option value="GUY">Guyana</option>

																<option value="HAI">Haiti</option>
																<option value="HMI">Heard &amp; McDonald Islands</option>
																<option value="HND">Honduras</option>
																<option value="HNG">Hong Kong</option>
																<option value="HUN">Hungary</option>

																<option value="ICE">Iceland</option>
																<option value="IND">India</option>
																<option value="INS">Indonesia</option>
																<option value="IR ">Iran</option>
																<option value="IRA">Iraq</option>
																<option value="IRE">Ireland</option>

																<option value="IOM">Isle of Man</option>
																<option value="ISR">Israel</option>
																<option value="ITL">Italy</option>
																<option value="IVC">Ivory Coast</option>
																<option value="JAM">Jamaica</option>
																<option value="JPN">Japan</option>

																<option value="JOR">Jordan</option>
																<option value="CAB">Kampuchea</option>
																<option value="KAZ">Kazakhstan</option>
																<option value="KEN">Kenya</option>
																<option value="KUW">Kuwait</option>
																<option value="KYR">Kyrgyzstan</option>

																<option value="LAO">Laos</option>
																<option value="LAT">Latvia</option>
																<option value="LEB">Lebanon</option>
																<option value="BAS">Lesotho</option>
																<option value="LIA">Liberia</option>
																<option value="LIB">Libya</option>

																<option value="LIE">Liechtenstein</option>
																<option value="LIT">Lithuania</option>
																<option value="LUX">Luxembourg</option>
																<option value="MAC">Macao</option>
																<option value="MCD">Macedonia</option>
																<option value="MAD">Madagascar</option>

																<option value="MAH">Malawi</option>
																<option value="MAL">Malaysia</option>
																<option value="MAV">Maldives</option>
																<option value="MAM">Mali</option>
																<option value="MAN">Malta</option>
																<option value="FWI">Martinique</option>

																<option value="MAR">Mauritania</option>
																<option value="MAU">Mauritius</option>
																<option value="MEX">Mexico</option>
																<option value="MOL">Moldova</option>
																<option value="MON">Monaco</option>
																<option value="MOG">Mongolia</option>

																<option value="MOS">Montserrat</option>
																<option value="MOR">Morocco</option>
																<option value="MOZ">Mozambique</option>
																<option value="MYA">Myanmar</option>
																<option value="SOW">Namibia</option>
																<option value="NAU">Nauru</option>

																<option value="NEP">Nepal</option>
																<option value="NEB">Netherlands</option>
																<option value="CUR">Netherlands Antilles</option>
																<option value="NSK">Nevis - St Kitts</option>
																<option value="NED">New Caledonia</option>
																<option value="NEZ">New Zealand</option>

																<option value="NIC">Nicaragua</option>
																<option value="NGR">Niger</option>
																<option value="NIG">Nigeria</option>
																<option value="NEZ">Niue</option>
																<option value="NOR">Norfolk Islands</option>
																<option value="NRI">Northern Ireland</option>

																<option value="NRW">Norway</option>
																<option value="MAT">Oman</option>
																<option value="PAK">Pakistan</option>
																<option value="PAL">Palestine</option>
																<option value="PAN">Panama</option>
																<option value="NEG">Papua New Guinea</option>

																<option value="PAR">Paraguay</option>
																<option value="PER">Peru</option>
																<option value="PHL">Philippines</option>
																<option value="PIT">Pitcairn</option>
																<option value="POL">Poland</option>
																<option value="POR">Portugal</option>

																<option value="QAT">Qatar</option>
																<option value="RAK">Ras al Khaimah</option>
																<option value="KOR">Republic of Korea</option>
																<option value="REU">Reunion</option>
																<option value="RUM">Romania</option>
																<option value="RUS">Russia</option>

																<option value="RWA">Rwanda</option>
																<option value="SAN">San Marino</option>
																<option value="SAO">Sao Tome &amp; Principe</option>
																<option value="SAR">Sarjah</option>
																<option value="SAU">Saudi Arabia</option>

																<option value="SCT">Scotland</option>
																<option value="SEN">Senegal</option>
																<option value="SEY">Seychelles</option>
																<option value="SIE">Sierra Leone</option>
																<option value="SIN">Singapore</option>
																<option value="SLO">Slovak Republic</option>

																<option value="SLV">Slovenia</option>
																<option value="SOL">Solomon Islands</option>
																<option value="SOM">Somalia</option>
																<option value="SON">South Africa</option>
																<option value="SPN">Spain</option>
																<option value="CEY">Sri Lanka</option>

																<option value="STH">St Helena</option>
																<option value="STL">St Lucia</option>
																<option value="STP">St Pierre &amp; Miquelon</option>
																<option value="SVG">St Vincent &amp; Grenadines</option>
																<option value="SUD">Sudan</option>

																<option value="SUR">Suriname</option>
																<option value="SWA">Swaziland</option>
																<option value="SWD">Sweden</option>
																<option value="SWT">Switzerland</option>
																<option value="SYR">Syria</option>
																<option value="ROC">Taiwan</option>

																<option value="TAJ">Tajikistan</option>
																<option value="TAZ">Tanzania</option>
																<option value="THA">Thailand</option>
																<option value="TIM">Timor</option>
																<option value="TOG">Togo</option>
																<option value="TON">Tonga</option>

																<option value="TOB">Trinidad &amp; Tobago</option>
																<option value="TUN">Tunisia</option>
																<option value="TUR">Turkey</option>
																<option value="TUK">Turkmenistan</option>
																<option value="TCI">Turks &amp; Caicos Island</option>

																<option value="GLB">Tuvalu</option>
																<option value="USS">USSR</option>
																<option value="UGA">Uganda</option>
																<option value="UKR">Ukraine</option>
																<option value="UAE">United Arab Emirates</option>
																<option value="UNK">United Kingdom</option>

																<option value="URU">Uruguay</option>
																<option value="UZB">Uzbekistan</option>
																<option value="NEH">Vanuatu</option>
																<option value="VAT">Vatican City</option>
																<option value="VEN">Venezuela</option>
																<option value="VIE">Vietnam</option>

																<option value="WAL">Wales</option>
																<option value="WAF">Wallis &amp; Futana Islands</option>
																<option value="WBK">West Bank</option>
																<option value="WSH">Western Sahara</option>
																<option value="SAM">Western Samoa</option>

																<option value="YMN">Yemen Arab Republic</option>
																<option value="ADN">Yemen, People's Republic</option>
																<option value="YUG">Yugoslavia</option>
																<option value="ZAI">Zaire</option>
																<option value="ZAM">Zambia</option>
																<option value="ZIM">Zimbabwe</option>

															</select></td>
													
														<td><font face="verdana" size="2"><font color="#990000">* </font></p></td>
														<td>
															<font face="verdana" size="2">Postal/zip code</font>
														</td>
														<td><input type="text" name="postalcode_zip" size="25" maxlength="30"></td>

													</tr>
													<tr>
														<td>
															<font face="verdana" size="2"><font color="#990000">* </font></p>
														</td>
														<td>
															<font face="verdana" size="2">Phone Number</font>

														</td>
														<td>
															<font face="verdana" size="2"><input type="text" name="phone_number" size="17" maxlength="17"></font>
														</td>
													
														<td>
															<font face="verdana" size="2"><font color="#990000">* </font></p>

														</td>
														<td>
															<font face="verdana" size="2">E-mail</font>
														</td>
														<td>
															<font face="verdana" size="2"><input type="text" name="email" size="25" maxlength="60"></font>
														</td>
													</tr>

												</table>
											</td>
										</tr>
                            </table>
											</td>
										</tr>
										
										<tr>
											<td valign="top" width="860">
												
												<table border="0" cellspacing="3" cellpadding="2">
												
												<tr>
													<td valign="top" width="800" colspan="4"><br />
														<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
														  <tr height="10">
															<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
														  </tr>
														</table>
													</td>
												</tr>
													<tr>
														<td width="200"><font face="verdana" size="2"><b>EVENT</b></font></td>
														<td align="center" width="200"><font face="verdana" size="2"><b>PRICE PER PERSON<br><font size="1">(Where applicable, all taxes are included)</font></b></font></td>
														<td align="center" width="150"><font face="verdana" size="2"><b>NUMBER OF PEOPLE</b></font></td>
														<td width="220" align="center"><font face="verdana" size="2"><b>Class/Group prefer to sit with?</b></td>
														
													</tr>
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">President's Lunch</font></td>
														<td align="center">
														 \$<input type="text" name="cost_lunch" size="5" value="28.00" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_lunch" id="lunch">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
									<option value="9">9
									<option value="10">10
														</select>

														</td>
														<td align="center"><input class="bodytext" type="text" name="lunch_class" size="25" maxlength="25"></td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">Conversat Gala Reception &amp; Dinner</font></td>
														<td align="center">
														 \$<input type="text" name="cost_ball" size="5" value="141.25" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_ball" id="ball">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center"><input class="bodytext" type="text" name="ball_class" size="25" maxlength="25"></td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">Conversat Evening Entertainment</font></td>
														<td align="center">
														 \$<input type="text" name="cost_entertainment" size="4" value="73.45" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_entertainment" id="entertainment">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
													</tr>
													
													
												
												<tr>
													<td valign="top" width="800" colspan="4"><br />
														<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
														  <tr height="10">
															<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
														  </tr>
														</table>
													</td>
												</tr>
												<tr>
														<td><font face="verdana" size="2">Alumni Family Picnic (adult)</font></td>
														<td align="center">
														 \$<input type="text" name="cost_picnic_adult" size="5" value="15.00" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_picnic_adult" id="picnic_adult">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
													<td valign="top" width="800" colspan="4"><br />
														<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
														  <tr height="10">
															<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
														  </tr>
														</table>
													</td>
												</tr>
												<tr>
														<td colspan="4"><font face="verdana" size="2"><input type="checkbox" name="legacy-family" value="Yes" id="legacy-family" />
  <label for="legacy-family">Please check if you are part of a Legacy Family. (A Legacy Family has three or more generations of U of G grads.) Legacy Families will be honoured at the Family Picnic.</label></font></td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">Alumni Family Picnic (child - 12 and under)</font></td>
														<td align="center">
														 \$<input type="text" name="cost_picnic_child" size="5" value="7.50" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_picnic_child" id="picnic_child">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">FACS 74 Class Lunch</font></td>
														<td align="center">
														 \$<input type="text" name="cost_facs74" size="5" value="23.75" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_facs74" id="facs74">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													
													<tr>
														<td><font face="verdana" size="2">FACS 79 Class Reception and Lunch with OAC 79</font></td>
														<td align="center">
														 \$<input type="text" name="cost_facs79" size="5" value="23.75" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_facs79" id="facs79">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">FACS 89 Class Lunch</font></td>
														<td align="center">
														 \$<input type="text" name="cost_facs89" size="5" value="21.50" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_facs89" id="facs89">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">MAC 64 Class Reception and Dinner</font></td>
														<td align="center">
														 \$<input type="text" name="cost_mac64" size="5" value="37.30" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_mac64" id="mac64">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">OAC 79 Class Reception and Lunch with FACS 79</font></td>
														<td align="center">
														 \$<input type="text" name="cost_oac79" size="5" value="23.75" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_oac79" id="oac79">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><font face="verdana" size="2">OAC 84 Class Lunch</font></td>
														<td align="center">
														 \$<input type="text" name="cost_oac84" size="5" value="25.90" onFocus="this.blur()" style="border:0;">
														</td>
														<td align="center">
														<select name="qty_oac84" id="oac84">
															<option value="0" selected>0
															<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
														</select>

														</td>
														<td align="center">&nbsp;</td>
													</tr>
													
													<tr>
														<td colspan="4">
															<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
															  <tr height="10">
																<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
															  </tr>
															</table>
														</td>
													</tr>
													<tr>
														<td colspan="4">
													<p>Please note that Conversat tickets will not be mailed. Your tickets will be available for pick up at Alumni House the week of June 16 during regular business hours and until 3:30 pm on Saturday, June 21. At 4 pm, tickets for the dinner will be available at the tent. For the evening entertainment portion only, tickets will be at the south end of the University Centre starting at 7 pm.</p>
			<br />
														</td>
													</tr>
								<tr>
										<td colspan="4">
											<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
											  <tr height="10">
												<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
											  </tr>
											</table>
										</td>
									</tr>
								<tr>
								<td colspan="4"><font face="verdana" size="+3"><b>FREE EVENTS</b></font></td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Alumni Group Reunion Reception (select all that apply)</font><br />
									&nbsp;&nbsp;<input name="CCStaff" type="checkbox" value="Yes" />&nbsp;&nbsp;Call Centre Staff<br />
									&nbsp;&nbsp;<input name="Chemistry" type="checkbox" value="Yes" />&nbsp;&nbsp;Chemistry<br />
									&nbsp;&nbsp;<input name="CME" type="checkbox" value="Yes" />&nbsp;&nbsp;CME<br />
									&nbsp;&nbsp;<input name="Eco-House" type="checkbox" value="Yes" />&nbsp;&nbsp;Eco-House<br />
									&nbsp;&nbsp;<input name="Engineering" type="checkbox" value="Yes" />&nbsp;&nbsp;Engineering Cluster '99<br />
									&nbsp;&nbsp;<input name="FigureSkating" type="checkbox" value="Yes" />&nbsp;&nbsp;Figure Skating '93/'94 OUA Championship Team<br />
									&nbsp;&nbsp;<input name="First-Year" type="checkbox" value="Yes" />&nbsp;&nbsp;First-Year Seminars 10<sup>th</sup> anniversary<br />
									&nbsp;&nbsp;<input name="MA" type="checkbox" value="Yes" />&nbsp;&nbsp;MA Leadership Program<br />
									&nbsp;&nbsp;<input name="PeerHelpers" type="checkbox" value="Yes" />&nbsp;&nbsp;Peer Helper Program 30<sup>th</sup> Anniversary<br />
									&nbsp;&nbsp;<input name="ResidenceLifeStaff" type="checkbox" value="Yes" />&nbsp;&nbsp;Residence Life Staff
								</td>
								<td align="center" valign="top">
								<select name="group_reunion" id="group_reunion">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Athletic Facilities Tour</font></td>
								<td align="center">
								<select name="athletic_tour" id="athletic_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Biodiversity Institute of Ontario Tour</font></td>
								<td align="center">
								<select name="biodiversity_tour" id="biodiversity_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Bioproducts Discovery and Development Centre Tour</font></td>
								<td align="center">
								<select name="bio_tour" id="bio_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Campus Bus Tour <strong>2:30 pm</strong></font></td>
								<td align="center">
								<select name="bus_tour_230" id="bus_tour_230">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Campus Bus Tour <strong>3:30 pm</strong></font></td>
								<td align="center">
								<select name="bus_tour_430" id="bus_tour_430">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">CBSAA Breakfast and Annual General Meeting</font></td>
								<td align="center">
								<select name="CBSAA_AGM" id="CBSAA_AGM">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Chemistry Reunion Open House for Chemistry Alumni</font></td>
								<td align="center">
								<select name="chemistry_open" id="chemisty_open">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Class Photo</font></td>
								<td align="center">
								<select name="Class_Photo" id="Class_Photo">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">CSAHS AA Annual General Meeting <br />(Formerly known as Mac FACS FRAN AA)</font></td>
								<td align="center">
								<select name="CSAHS_AGM" id="CSAHS_AGM">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">CSAHS Open House and Wine &amp; Cheese</font></td>
								<td align="center">
								<select name="csahs_open" id="csahs_open">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Engineering AA Annual General Meeting</font></td>
								<td align="center">
								<select name="eng_agm" id="eng_agm">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Engineering Cluster '99 Lunch</font></td>
								<td align="center">
								<select name="eng_cluster" id="eng_cluster">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Engineering Cluster '99 Thornbrough Building Tour</font></td>
								<td align="center">
								<select name="eng_cluster_tour" id="eng_cluster_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">First-Year Seminar Event</font></td>
								<td align="center">
								<select name="fyse" id="fyse">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Gryphon Statue Unveiling</font></td>
								<td align="center">
								<select name="gryphon" id="gryphon">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Hill's Primary Healthcare Centre Tour</font></td>
								<td align="center">
								<select name="hills_tour" id="hills_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>								
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>						
								<td colspan="2"><font face="verdana" size="2">Human Anatomy Open House</font></td>
								<td align="center">
								<select name="Anatomy" id="Anatomy">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>	
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Ice Cream Technology Tour <strong>10 am</strong></font></td>
								<td align="center">
								<select name="icecream_10" id="icecream_10">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Ice Cream Technology Tour <strong>10:30 am</strong></font></td>
								<td align="center">
								<select name="icecream_1030" id="icecream_1030">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Mac 54 Meet and Greet, Renew Friendships</font></td>
								<td align="center">
								<select name="mac54" id="mac54">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>								
								<td colspan="2"><font face="verdana" size="2">Mac 64 Class Business Meeting</font></td>
								<td align="center">
								<select name="mac64" id="mac64">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>							
								<tr>						
								<td colspan="2"><font face="verdana" size="2">Macdonald Institute Tour</font></td>
								<td align="center">
								<select name="Mac_AM_Tour" id="macamtour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>							
								<td colspan="2"><font face="verdana" size="2">Macdonald Stewart Art Centre and <br>Sculpture Garden Walking Tour</font></td>
								<td align="center">
								<select name="MSAC_Tour" id="msac_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>								
								<tr>							
								<td colspan="2"><font face="verdana" size="2">Mona Campbell Animal Cancer Centre Tour</font></td>
								<td align="center">
								<select name="mona_tour" id="mona_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>								
								<tr>							
								<td colspan="2"><font face="verdana" size="2">OAC '84 Class Tour of Bioproducts Discovery &amp; Development Centre</font></td>
								<td align="center">
								<select name="oac_bio_tour" id="oac_bio_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>								
								<tr>							
								<td colspan="2"><font face="verdana" size="2">OAC 140<sup>th</sup> Anniversary Open House</font></td>
								<td align="center">
								<select name="oac140" id="oac140">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>								
								<tr>							
								<td colspan="2"><font face="verdana" size="2">OAC 64 Class Ecumenical Service</font></td>
								<td align="center">
								<select name="oac64" id="oac64">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>								
								<tr>							
								<td colspan="2"><font face="verdana" size="2">OAC 89 Guided Class Campus Tour</font></td>
								<td align="center">
								<select name="oac89" id="oac89">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								
								<tr>							
								<td colspan="2"><font face="verdana" size="2">OVC Tours Following the AGM</font></td>
								<td align="center">
								<select name="OVC_tour" id="OVC_tour">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								
								<tr>							
								<td colspan="2"><font face="verdana" size="2">OVCAA Welcome Breakfast and AGM</font></td>
								<td align="center">
								<select name="OVCAA_AGM" id="OVCAA_AGM">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								
								<tr>								
								<td colspan="2"><font face="verdana" size="2">UGAA Annual General Meeting</font></td>
								<td align="center">
								<select name="UGAA_AGM" id="ugaa_agm">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>
								<tr>
									<td colspan="4">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
										  <tr height="10">
											<td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr>						
								<td colspan="2"><font face="verdana" size="2">U of G Retirees Coffee Reception and Tour</font></td>
								<td align="center">
								<select name="Retirees" id="Retirees">
									<option value="0" selected>0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
									<option value="7">7
									<option value="8">8
<option value="9">9
<option value="10">10
								</select>
								</td>								
								</tr>					
							</table>						


											<tr>
											<td valign="top" width="800"><br>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
                              <tr height="10">
                                <td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
                              </tr>
                            </table>


											</td>
										</tr>
										
										
										
										<tr>
											<td valign="top" width="460">
												
							<table border="0" cellspacing="5" cellpadding="2">
								<tr>
									<td width="140">&nbsp;</td>
									<td width="240"><input type="button" name="add" value="Calculate Total" 
																		onClick="document.online_registration_form.Total.value = 
(parseFloat(document.online_registration_form.cost_lunch.value).toFixed(2) * parseFloat(document.online_registration_form.qty_lunch.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_ball.value).toFixed(2) * parseFloat(document.online_registration_form.qty_ball.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_entertainment.value).toFixed(2) * parseFloat(document.online_registration_form.qty_entertainment.value).toFixed(2) +
parseFloat(document.online_registration_form.cost_picnic_adult.value).toFixed(2) * parseFloat(document.online_registration_form.qty_picnic_adult.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_picnic_child.value).toFixed(2) * parseFloat(document.online_registration_form.qty_picnic_child.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_facs74.value).toFixed(2) * parseFloat(document.online_registration_form.qty_facs74.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_facs79.value).toFixed(2) * parseFloat(document.online_registration_form.qty_facs79.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_facs89.value).toFixed(2) * parseFloat(document.online_registration_form.qty_facs89.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_mac64.value).toFixed(2) * parseFloat(document.online_registration_form.qty_mac64.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_oac79.value).toFixed(2) * parseFloat(document.online_registration_form.qty_oac79.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_oac84.value).toFixed(2) * parseFloat(document.online_registration_form.qty_oac84.value).toFixed(2)), document.getElementById('continue').disabled=false;">
														</td>
														<td width="120" align="center" valign="middle">\$<input type="text" name="Total" size="10" onFocus="this.blur()"></td>
													</tr>
													
												</table>

																									
										<tr>
											<td valign="top" width="800"><br>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" background="https://www.uoguelph.ca/alumni/about/dotted_line.gif">
                              <tr height="10">
                                <td height="10"><img SRC="https://www.uoguelph.ca/alumni/about/invis_spacer.gif" alt="spacer" height="10" width="5" border="0"></td>
                              </tr>
                            </table>
										
										
										<tr>
											<td valign="top" width="460">
												<font face="verdana" size="2"><b><br>
														<font face="verdana" size="2"><input type="button" name="Submit_button" value="Continue" onClick="document.online_registration_form.Total.value = 
(parseFloat(document.online_registration_form.cost_lunch.value).toFixed(2) * parseFloat(document.online_registration_form.qty_lunch.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_ball.value).toFixed(2) * parseFloat(document.online_registration_form.qty_ball.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_entertainment.value).toFixed(2) * parseFloat(document.online_registration_form.qty_entertainment.value).toFixed(2) +
parseFloat(document.online_registration_form.cost_picnic_adult.value).toFixed(2) * parseFloat(document.online_registration_form.qty_picnic_adult.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_picnic_child.value).toFixed(2) * parseFloat(document.online_registration_form.qty_picnic_child.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_facs74.value).toFixed(2) * parseFloat(document.online_registration_form.qty_facs74.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_facs79.value).toFixed(2) * parseFloat(document.online_registration_form.qty_facs79.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_facs89.value).toFixed(2) * parseFloat(document.online_registration_form.qty_facs89.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_mac64.value).toFixed(2) * parseFloat(document.online_registration_form.qty_mac64.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_oac79.value).toFixed(2) * parseFloat(document.online_registration_form.qty_oac79.value).toFixed(2) + 
parseFloat(document.online_registration_form.cost_oac84.value).toFixed(2) * parseFloat(document.online_registration_form.qty_oac84.value).toFixed(2)),

document.online_registration_form.qty_lunch.value = parseInt(document.online_registration_form.qty_lunch.value),
document.online_registration_form.qty_ball.value = parseInt(document.online_registration_form.qty_ball.value),
document.online_registration_form.qty_entertainment.value = parseInt(document.online_registration_form.qty_entertainment.value),
document.online_registration_form.qty_picnic_adult.value = parseInt(document.online_registration_form.qty_picnic_adult.value),
document.online_registration_form.qty_picnic_child.value = parseInt(document.online_registration_form.qty_picnic_child.value),
document.online_registration_form.qty_facs74.value = parseInt(document.online_registration_form.qty_facs74.value),
document.online_registration_form.qty_facs79.value = parseInt(document.online_registration_form.qty_facs79.value),
document.online_registration_form.qty_facs89.value = parseInt(document.online_registration_form.qty_facs89.value),
document.online_registration_form.qty_mac64.value = parseInt(document.online_registration_form.qty_mac64.value),
document.online_registration_form.qty_oac79.value = parseInt(document.online_registration_form.qty_oac79.value),
document.online_registration_form.qty_oac84.value = parseInt(document.online_registration_form.qty_oac84.value),

check_the_form(); return false;" id="continue" disabled="disabled"> </font><input type="reset" name="Cancel" value="Cancel" onClick="document.getElementById('continue').disabled=true;"></b></p>
												<div align="left">
													<font size="1" color="#336666" face="Arial, Helvetica, sans-serif"><b><font face="verdana" size="2">Thank you for registering!<br>

																<br>
															</font></b></font></div>
												<font size="1" color="#336666" face="Arial, Helvetica, sans-serif"><b><span class="charttext">
												<p style="font-family:Arial, Helvetica, sans-serif;" size="0">University of Guelph HST Registration Number: R108161829</p></span></b></font>
											</td>
										</tr>
									</table>
								</form>
			</td>
          </tr>
      </table></td>
      
    </tr>
    <tr>
      <!--#include virtual="https://www.alumni.uoguelph.ca/includes/news_box.html" -->
      <!--#include virtual="https://www.alumni.uoguelph.ca/includes/events_box.html" -->
      <!--#include virtual="https://www.alumni.uoguelph.ca/includes/support_box.html" -->
    </tr>
  </table>
  </div>
</div>
<div id="misc">
  <div class="container">
    <div id="links">
      <dl>
        <dt>Website Info</dt>
        <dd><a href="http://www.uoguelph.ca/contact/">Contact Us</a></dd>
        <dd><a href="http://www.uoguelph.ca/sitemap/">Site Map</a></dd>
        <dd><a href="http://www.uoguelph.ca/web/privacy/">Privacy Policy</a></dd>
        <dd><a href="http://www.uoguelph.ca/web/accessibility/">Accessibility</a></dd>
      </dl>
      <dl>
        <dt>Administration</dt>
        <dd><a href="http://www.uoguelph.ca/president/" title="Office of the President">President</a></dd>
        <dd><a href="http://www.uoguelph.ca/vpacademic/" title="Office of the Provost and Vice-President (Academic)">Provost</a></dd>
        <dd><a href="http://www.uoguelph.ca/hr/" title="Human Resources: Job Opportunities, Policies, Benefits">Human Resources</a></dd>
        <dd><a href="http://www.uoguelph.ca/studentaffairs/" title="Office of Student Affairs">Student Affairs</a></dd>
        <dd><a href="http://www.alumni.uoguelph.ca/supporting_guelph.htm" title="Supporting the University of Guelph">Giving to Guelph</a></dd>
      </dl>
      <dl>
        <dt>Academics</dt>
        <dd><a href="http://www.oac.uoguelph.ca/" title="Ontario Agricultural College">Agricultural Science </a></dd>
        <dd><a href="http://www.arts.uoguelph.ca/" title="College of Arts">Arts</a></dd>
        <dd><a href="http://www.cbs.uoguelph.ca/" title="College of Biological Science">Biological Science</a></dd>
        <dd><a href="http://www.cme.uoguelph.ca/" title="College of Management &amp; Economics">Management &amp; Economics</a></dd>
        <dd><a href="http://www.cpes.uoguelph.ca/" title="College of Physical &amp; Engineering Science">Physical &amp; Engineering Science</a></dd>
        <dd><a href="http://www.csahs.uoguelph.ca/" title="College of Social &amp; Applied Human Sciences">Social &amp; Applied Human Sciences</a></dd>
        <dd><a href="http://www.ovc.uoguelph.ca/" title="Ontario Veterinary College">Veterinary Medicine </a></dd>
      </dl>
    </div>
    <div id="address" class="vcard">
	 <div class="org fn">Alumni Affairs &amp; Development</div>
	 <div class="adr">
	  <span class="locality">Guelph</span>, 
	  <span class="region">Ontario</span>, 
	  <span class="postal-code">N1G 2W1</span><br />
	  <span class="country-name">Canada</span>
	 </div>
	 <div class="tel">519-824-4120 ext. 56934<br />
	 Fax: 519-822-2670<br />
	 <a href="mailto:alumni\@uoguelph.ca">alumni\@uoguelph.ca</a></div>
	 <div class="tel">Charitable Registration No.<br />10816 1829 RR 0001</div>	
	 <div class="tel"><a href="http://www.alumni.uoguelph.ca/about/aboutus_privacy.shtml">Privacy Statement</a></div>
	 <div class="tel"><a href="http://www.alumni.uoguelph.ca/about/aboutus_optout.shtml">Manage Subscription</a></div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<div id="footer">
  <div class="container">
    <p><a href="http://www.uoguelph.ca/alumni/web/terms/">&copy; 2012 University of Guelph</a></p>
  </div>
</div>
</body>
</html>
__END1__

1;