<?php
/*include("../CAS.php");
phpCAS::client(CAS_VERSION_2_0,"login.iiit.ac.in",443,"../cas");
phpCAS::setNoCasServerValidation();
phpCAS::setExtraCurlOption(CURLOPT_SSLVERSION,1);
phpCAS::forceAuthentication();
*/

include('menu.php');
           	     $con=mysql_connect();
                        if(!$con)
                                die("Could not connect to the database ".mysql_error());
                        mysql_select_db("test",$con);
			//$var=$_SESSION['admin_id'];
			$var=$_SESSION['complete_user'];
			$var="'".$var."'";	
                        $result=mysql_query("select * from students where email_id=".$var);
                        $row=mysql_fetch_array($result);
echo "<br /><br />";
echo "<br />";
?>
<!DOCTYPE html>

<html>
<head>

<title>
Address Book
</title>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="generator" content="Wufoo">
<meta name="robots" content="index, follow">

<!-- CSS -->
<link href="menu.css" rel="stylesheet">
<link href="css/structure.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="scripts/wufoo.js"></script>

<!--[if lt IE 10]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>

<body id="public">
<div id="container" class="ltr">

<!--<h1 id="logo">
<a href="http://wufoo.com" title="Powered by Wufoo">Wufoo</a>
</h1>
-->
<form id="form16" name="form16" class="wufoo  page" autocomplete="off" enctype="multipart/form-data" method="post" novalidate
action="user_profile.php">
<header id="header" class="info">
<h2>User's Profile</h2>
<div></div>
</header>

<ul>


<li id="foli0" class="name notranslate      ">
<label class="desc" id="title0" for="Field0">
Name
</label>

<!--span>
<input id="Field0" name="Field0" type="text" class="field text" value="" size="2" tabindex="1" />
<label for="Field0">Title</label>
</span-->
<span>
<input id="Field1" name="name" type="text" class="field text fn" value="<?echo $row['name']?>" size="8" tabindex="1" />
<label for="Field1">First</label>
</span>

<span class="right state">
<input id="Field7" name="guardian_name" type="text" class="field text fn" value="<?echo $row['guardian_name']?>" tabindex="2" />
<label for="Field7">Guardian name</label>
</span>
</li>

<li id="foli0" class="name notranslate      ">
<span class="left state">
<input id="Field7" name="roll_no" type="text" class="field text fn" value="<? echo $row['roll_no']?>" tabindex="3" />
<label for="Field7">Roll no.</label>
</span>
<span class="right state">
<center>
<!--<input id="Field8" name="sex" type="text" class="field text fn" value="" maxlength="1" tabindex="4" />-->
<label for="Field8">Sex</label>
<?
if($row['sex']=='m')
{
?>
<input type="radio" name="sex" value="male" tabindex="4" checked="yes">Male
<input type="radio" name="sex" value="female" tabindex="4">Female
<?
}
else
{
?>
<input type="radio" name="sex" value="male" tabindex="4">Male
<input type="radio" name="sex" value="female" tabindex="4" checked="yes">Female
<?
}
?>
</center>
</span>
</li>

<!---------------------------------------------------------------------------->
<!--
<li id="foli0" class="name notranslate      ">
<span class="left state">
<input id="Field7" name="roll_no" type="text" class="field text addr" value="" tabindex="10" />
<label for="Field7"></label>
</span>
</li-->

<!---------------------------------------------------------------------------->

<li id="foli0" class="name notranslate      ">
<label class="desc" id="title0" for="Field0">
Medical Info
</label>

<span class="left state">
<input id="Field7" name="allergy" type="text" class="field text ln" value="<?echo $row['allergy']?>" tabindex="5" />
<label for="Field7">Allergy</label>
</span>

<span class="right state">
<input id="Field7" name="bloodgroup" type="text" class="field text ln" maxlength="30" value="<?echo $row['bloodgroup']?>" tabindex="6" />
<label for="Field7">Blood Group</label>
</span>
<!--span>
<input id="Field3" name="Field3" type="text" class="field text" value="" size="3" tabindex="4" />
<label for="Field3">Suffix</label>
</span-->
<!--/li>
<li id="foli20" class="notranslate       "  >
<label class="desc" id="title20" for="Field20">
Photo
</label>
<div>
<input id="Field20" name="Field20" type="file" class="field file" size="12" tabindex="5" />
</div-->
</li>
<li id="foli4" class="complex notranslate      ">
<label class="desc" id="title4" for="Field4">
Address
</label>
<div>
<span class="full addr1">
<input id="Field4" name="address" type="text" class="field text addr" value="<?echo $row['address']?>" tabindex="7" />
</span>
<!--span class="full addr2">
<input id="Field5" name="Field5" type="text" class="field text addr" value="" tabindex="7" />
<label for="Field5">Address Line 2</label>
</span-->
<!--span class="left city">
<input id="Field6" name="Field6" type="text" class="field text addr" value="" tabindex="8" />
<label for="Field6">City</label>
</span-->
<!--span class="left zip">
<input id="Field8" name="zip" type="text" class="field text addr" value="" maxlength="15" tabindex="9" />
<label for="Field8">Postal / Zip Code</label>
</span>
<span class="right state">
<input id="Field7" name="state" type="text" class="field text addr" value="" tabindex="10" />
<label for="Field7">State / Province / Region</label>
</span>
<span class="left country">
<select id="Field9" name="country" class="field select addr" tabindex="11">
<option value="" selected="selected"></option>
<option value="United States" >United States</option>
<option value="United Kingdom" >United Kingdom</option>
<option value="Australia" >Australia</option>
<option value="Canada" >Canada</option>
<option value="France" >France</option>
<option value="New Zealand" >New Zealand</option>
<option value="India" >India</option>
<option value="Brazil" >Brazil</option>
<option value="----" >----</option>
<option value="Afghanistan" >Afghanistan</option>
<option value="Åland Islands" >Åland Islands</option>
<option value="Albania" >Albania</option>
<option value="Algeria" >Algeria</option>
<option value="American Samoa" >American Samoa</option>
<option value="Andorra" >Andorra</option>
<option value="Angola" >Angola</option>
<option value="Anguilla" >Anguilla</option>
<option value="Antarctica" >Antarctica</option>
<option value="Antigua and Barbuda" >Antigua and Barbuda</option>
<option value="Argentina" >Argentina</option>
<option value="Armenia" >Armenia</option>
<option value="Aruba" >Aruba</option>
<option value="Austria" >Austria</option>
<option value="Azerbaijan" >Azerbaijan</option>
<option value="Bahamas" >Bahamas</option>
<option value="Bahrain" >Bahrain</option>
<option value="Bangladesh" >Bangladesh</option>
<option value="Barbados" >Barbados</option>
<option value="Belarus" >Belarus</option>
<option value="Belgium" >Belgium</option>
<option value="Belize" >Belize</option>
<option value="Benin" >Benin</option>
<option value="Bermuda" >Bermuda</option>
<option value="Bhutan" >Bhutan</option>
<option value="Bolivia" >Bolivia</option>
<option value="Bosnia and Herzegovina" >Bosnia and Herzegovina</option>
<option value="Botswana" >Botswana</option>
<option value="British Indian Ocean Territory" >British Indian Ocean Territory</option>
<option value="Brunei Darussalam" >Brunei Darussalam</option>
<option value="Bulgaria" >Bulgaria</option>
<option value="Burkina Faso" >Burkina Faso</option>
<option value="Burundi" >Burundi</option>
<option value="Cambodia" >Cambodia</option>
<option value="Cameroon" >Cameroon</option>
<option value="Cape Verde" >Cape Verde</option>
<option value="Cayman Islands" >Cayman Islands</option>
<option value="Central African Republic" >Central African Republic</option>
<option value="Chad" >Chad</option>
<option value="Chile" >Chile</option>
<option value="China" >China</option>
<option value="Colombia" >Colombia</option>
<option value="Comoros" >Comoros</option>
<option value="Democratic Republic of the Congo" >Democratic Republic of the Congo</option>
<option value="Republic of the Congo" >Republic of the Congo</option>
<option value="Cook Islands" >Cook Islands</option>
<option value="Costa Rica" >Costa Rica</option>
<option value="C&ocirc;te d'Ivoire" >C&ocirc;te d'Ivoire</option>
<option value="Croatia" >Croatia</option>
<option value="Cuba" >Cuba</option>
<option value="Cyprus" >Cyprus</option>
<option value="Czech Republic" >Czech Republic</option>
<option value="Denmark" >Denmark</option>
<option value="Djibouti" >Djibouti</option>
<option value="Dominica" >Dominica</option>
<option value="Dominican Republic" >Dominican Republic</option>
<option value="East Timor" >East Timor</option>
<option value="Ecuador" >Ecuador</option>
<option value="Egypt" >Egypt</option>
<option value="El Salvador" >El Salvador</option>
<option value="Equatorial Guinea" >Equatorial Guinea</option>
<option value="Eritrea" >Eritrea</option>
<option value="Estonia" >Estonia</option>
<option value="Ethiopia" >Ethiopia</option>
<option value="Faroe Islands" >Faroe Islands</option>
<option value="Fiji" >Fiji</option>
<option value="Finland" >Finland</option>
<option value="Gabon" >Gabon</option>
<option value="Gambia" >Gambia</option>
<option value="Georgia" >Georgia</option>
<option value="Germany" >Germany</option>
<option value="Ghana" >Ghana</option>
<option value="Gibraltar" >Gibraltar</option>
<option value="Greece" >Greece</option>
<option value="Grenada" >Grenada</option>
<option value="Guatemala" >Guatemala</option>
<option value="Guinea" >Guinea</option>
<option value="Guinea-Bissau" >Guinea-Bissau</option>
<option value="Guyana" >Guyana</option>
<option value="Haiti" >Haiti</option>
<option value="Honduras" >Honduras</option>
<option value="Hong Kong" >Hong Kong</option>
<option value="Hungary" >Hungary</option>
<option value="Iceland" >Iceland</option>
<option value="Indonesia" >Indonesia</option>
<option value="Iran" >Iran</option>
<option value="Iraq" >Iraq</option>
<option value="Ireland" >Ireland</option>
<option value="Israel" >Israel</option>
<option value="Italy" >Italy</option>
<option value="Jamaica" >Jamaica</option>
<option value="Japan" >Japan</option>
<option value="Jordan" >Jordan</option>
<option value="Kazakhstan" >Kazakhstan</option>
<option value="Kenya" >Kenya</option>
<option value="Kiribati" >Kiribati</option>
<option value="North Korea" >North Korea</option>
<option value="South Korea" >South Korea</option>
<option value="Kuwait" >Kuwait</option>
<option value="Kyrgyzstan" >Kyrgyzstan</option>
<option value="Laos" >Laos</option>
<option value="Latvia" >Latvia</option>
<option value="Lebanon" >Lebanon</option>
<option value="Lesotho" >Lesotho</option>
<option value="Liberia" >Liberia</option>
<option value="Libya" >Libya</option>
<option value="Liechtenstein" >Liechtenstein</option>
<option value="Lithuania" >Lithuania</option>
<option value="Luxembourg" >Luxembourg</option>
<option value="Macedonia" >Macedonia</option>
<option value="Madagascar" >Madagascar</option>
<option value="Malawi" >Malawi</option>
<option value="Malaysia" >Malaysia</option>
<option value="Maldives" >Maldives</option>
<option value="Mali" >Mali</option>
<option value="Malta" >Malta</option>
<option value="Marshall Islands" >Marshall Islands</option>
<option value="Mauritania" >Mauritania</option>
<option value="Mauritius" >Mauritius</option>
<option value="Mexico" >Mexico</option>
<option value="Micronesia" >Micronesia</option>
<option value="Moldova" >Moldova</option>
<option value="Monaco" >Monaco</option>
<option value="Mongolia" >Mongolia</option>
<option value="Montenegro" >Montenegro</option>
<option value="Morocco" >Morocco</option>
<option value="Mozambique" >Mozambique</option>
<option value="Myanmar" >Myanmar</option>
<option value="Namibia" >Namibia</option>
<option value="Nauru" >Nauru</option>
<option value="Nepal" >Nepal</option>
<option value="Netherlands" >Netherlands</option>
<option value="Netherlands Antilles" >Netherlands Antilles</option>
<option value="Nicaragua" >Nicaragua</option>
<option value="Niger" >Niger</option>
<option value="Nigeria" >Nigeria</option>
<option value="Norway" >Norway</option>
<option value="Oman" >Oman</option>
<option value="Pakistan" >Pakistan</option>
<option value="Palau" >Palau</option>
<option value="Palestine" >Palestine</option>
<option value="Panama" >Panama</option>
<option value="Papua New Guinea" >Papua New Guinea</option>
<option value="Paraguay" >Paraguay</option>
<option value="Peru" >Peru</option>
<option value="Philippines" >Philippines</option>
<option value="Poland" >Poland</option>
<option value="Portugal" >Portugal</option>
<option value="Puerto Rico" >Puerto Rico</option>
<option value="Qatar" >Qatar</option>
<option value="Romania" >Romania</option>
<option value="Russia" >Russia</option>
<option value="Rwanda" >Rwanda</option>
<option value="Saint Kitts and Nevis" >Saint Kitts and Nevis</option>
<option value="Saint Lucia" >Saint Lucia</option>
<option value="Saint Vincent and the Grenadines" >Saint Vincent and the Grenadines</option>
<option value="Samoa" >Samoa</option>
<option value="San Marino" >San Marino</option>
<option value="Sao Tome and Principe" >Sao Tome and Principe</option>
<option value="Saudi Arabia" >Saudi Arabia</option>
<option value="Senegal" >Senegal</option>
<option value="Serbia and Montenegro" >Serbia and Montenegro</option>
<option value="Seychelles" >Seychelles</option>
<option value="Sierra Leone" >Sierra Leone</option>
<option value="Singapore" >Singapore</option>
<option value="Slovakia" >Slovakia</option>
<option value="Slovenia" >Slovenia</option>
<option value="Solomon Islands" >Solomon Islands</option>
<option value="Somalia" >Somalia</option>
<option value="South Africa" >South Africa</option>
<option value="Spain" >Spain</option>
<option value="Sri Lanka" >Sri Lanka</option>
<option value="Sudan" >Sudan</option>
<option value="Suriname" >Suriname</option>
<option value="Swaziland" >Swaziland</option>
<option value="Sweden" >Sweden</option>
<option value="Switzerland" >Switzerland</option>
<option value="Syria" >Syria</option>
<option value="Taiwan" >Taiwan</option>
<option value="Tajikistan" >Tajikistan</option>
<option value="Tanzania" >Tanzania</option>
<option value="Thailand" >Thailand</option>
<option value="Togo" >Togo</option>
<option value="Tonga" >Tonga</option>
<option value="Trinidad and Tobago" >Trinidad and Tobago</option>
<option value="Tunisia" >Tunisia</option>
<option value="Turkey" >Turkey</option>
<option value="Turkmenistan" >Turkmenistan</option>
<option value="Tuvalu" >Tuvalu</option>
<option value="Uganda" >Uganda</option>
<option value="Ukraine" >Ukraine</option>
<option value="United Arab Emirates" >United Arab Emirates</option>
<option value="United States Minor Outlying Islands" >United States Minor Outlying Islands</option>
<option value="Uruguay" >Uruguay</option>
<option value="Uzbekistan" >Uzbekistan</option>
<option value="Vanuatu" >Vanuatu</option>
<option value="Vatican City" >Vatican City</option>
<option value="Venezuela" >Venezuela</option>
<option value="Vietnam" >Vietnam</option>
<option value="Virgin Islands, British" >Virgin Islands, British</option>
<option value="Virgin Islands, U.S." >Virgin Islands, U.S.</option>
<option value="Yemen" >Yemen</option>
<option value="Zambia" >Zambia</option>
<option value="Zimbabwe" >Zimbabwe</option>
</select>
<label for="Field9">Country</label>
</span>
</div>
</li-->
<!--li id="foli12" class="notranslate      ">
<label class="desc" id="title12" for="Field12">
Email Address
</label>
<div>
<input id="Field12" name="email_id" type="email" spellcheck="false" class="field text medium" value="" maxlength="255" tabindex="9" /> 
</div>
</li-->

<li id="foli35" class="phone notranslate      ">
<label class="desc" id="title35" for="Field35">
Guardian's no.
</label>

<span>
<input id="Field35" name="guardian_contact_no" type="tel" class="field text" value="<?echo $row['guardian_contact_no']?>" size="10" maxlength="10" tabindex="10" />
</span>
<!--label for="Field35">###</label>

<span class="symbol">-</span>

<span>
<input id="Field35-1" name="Field35-1" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="15" />
<label for="Field35-1">###</label>
</span>

<span class="symbol">-</span>

<span>
 <input id="Field35-2" name="Field35-2" type="tel" class="field text" value="" size="4" maxlength="4" tabindex="16" />
<label for="Field35-2">####</label>
</span-->
</li>

<li id="foli36" class="phone notranslate      ">
<label class="desc" id="title36" for="Field36">
Cell Phone
</label>
<span>
<input id="Field36" name="contact_no" type="tel" class="field text" value="<?echo $row['contact_no']?>" size="10" maxlength="10" tabindex="11" />
<!--label for="Field36">###</label-->
</span>
<!--span class="symbol">-</span>
<span>
<input id="Field36-1" name="Field36-1" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="18" />
<label for="Field36-1">###</label>
</span>
<span class="symbol">-</span>
<span>
 <input id="Field36-2" name="Field36-2" type="tel" class="field text" value="" size="4" maxlength="4" tabindex="19" />
<label for="Field36-2">####</label>
</span>
</li-->

<!--li id="foli21" class="date notranslate      ">
<label class="desc" id="title21" for="Field21">
Birthday
</label>
<span>
<input id="Field21-1" name="Field21-1" type="text" class="field text" value="" size="2" maxlength="2" tabindex="20" />
<label for="Field21-1">MM</label>
</span> 
<span class="symbol">/</span>
<span>
<input id="Field21-2" name="Field21-2" type="text" class="field text" value="" size="2" maxlength="2" tabindex="21" />
<label for="Field21-2">DD</label>
</span>
<span class="symbol">/</span>
<span>
 <input id="Field21" name="Field21" type="text" class="field text" value="" size="4" maxlength="4" tabindex="22" />
<label for="Field21">YYYY</label>
</span>
<span id="cal21">
<img id="pick21" class="datepicker" src="images/calendar.png" alt="Pick a date." />
</span>
</li-->
<!--li id="foli22" 
class="notranslate      "><label class="desc" id="title22" for="Field22">
Notes
</label>

<div>
<textarea id="Field22" 
name="Field22" 
class="field textarea medium" 
spellcheck="true" 
rows="10" cols="50" 
tabindex="23" 
onkeyup=""
 ></textarea>

</div>
</li--> 
<li class="buttons ">
<div>
	<input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Update" />
</div>
</li>

</ul>
</form> 

</div>
<!--container-->

<a class="powertiny" href="#"
style="display:block !important;visibility:visible !important;text-indent:0 !important;position:relative !important;height:auto !important;width:95px !important;overflow:visible !important;text-decoration:none;cursor:pointer !important;margin:0 auto !important">
<span style="no-repeat center 7px; margin:0 auto;display:inline-block !important;visibility:visible !important;text-indent:-9000px !important;position:static !important;overflow: auto !important;width:62px !important;height:30px !important">SSAD_group-20</span>
<b style="display:block !important;visibility:visible !important;text-indent:0 !important;position:static !important;height:auto !important;width:auto !important;overflow: auto !important;font-weight:normal;font-size:12px;color:#777;padding:0 0 0 3px;">SSAD_group-20</b>
</a>
</body>
</html>
