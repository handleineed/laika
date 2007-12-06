<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  
  <script src="./javascripts/prototype.js" type="text/javascript"></script>
  <script src="./javascripts/scriptaculous.js" type="text/javascript"></script>
  
  <script src="./javascripts/CalendarPopup.js" type="text/javascript"></script>
  <script src="./javascripts/common.js" type="text/javascript"></script>
  <script language="JavaScript">document.write(getCalendarStyles());</script>
  
  <link rel="stylesheet" href="./css/laika.css" type="text/css" media="screen">
  <link rel="stylesheet" href="./css/laika.css" type="text/css" media="print">

  <title><c:out value="${testscript.name}"/></title>  

  <script language="JavaScript" type="text/JavaScript">
  <!--

  var hitsp_32_person_info_edited = false;

  function switch_hitsp_module(id, linkId)
  {
    Effect.toggle(id,'slide'); 
    var existingLink = document.getElementById(linkId).innerHTML;
    if (existingLink == 'Show')
    {
      document.getElementById(linkId).innerHTML = 'Hide';
    }
    else
    {
      document.getElementById(linkId).innerHTML = 'Show';
    }
  }

  function scroll_to_module_and_highlight(id, time)
  {
    scroll_to_module(id,time);
    new Effect.Highlight(id,{duration:3.0});
  }

  function scroll_to_module(id, time)
  {
    new Effect.ScrollTo(id,{duration:time});
  }

  function toggle_editable(id)
  {                  
    if (id == 'person')
    {
      if (hitsp_32_person_info_edited == false) 
      {
        hitsp_32_person_info_edited = true;          
        document.getElementById('first_name_read_only').style.display = 'none';
        document.getElementById('first_name_editable').style.display = '';
        document.getElementById('middle_name_read_only').style.display = 'none';
        document.getElementById('middle_name_editable').style.display = '';
        document.getElementById('last_name_read_only').style.display = 'none';
        document.getElementById('last_name_editable').style.display = '';
        document.getElementById('gender_read_only').style.display = 'none';
        document.getElementById('gender_editable').style.display = '';
        document.getElementById('state_read_only').style.display = 'none';
        document.getElementById('state_editable').style.display = '';
        document.getElementById('dob_read_only').style.display = 'none';
        document.getElementById('dob_editable').style.display = '';
        document.getElementById('marital_status_read_only').style.display = 'none';
        document.getElementById('marital_status_editable').style.display = '';
        
      }
      else 
      {
        hitsp_32_person_info_edited = false;
        document.getElementById('first_name_editable').style.display = 'none';
        document.getElementById('first_name_read_only').style.display = '';
        document.getElementById('middle_name_editable').style.display = 'none';
        document.getElementById('middle_name_read_only').style.display = '';
        document.getElementById('last_name_editable').style.display = 'none';
        document.getElementById('last_name_read_only').style.display = '';
        document.getElementById('gender_editable').style.display = 'none';
        document.getElementById('gender_read_only').style.display = '';
        document.getElementById('state_editable').style.display = 'none';
        document.getElementById('state_read_only').style.display = '';
        document.getElementById('dob_editable').style.display = 'none';
        document.getElementById('dob_read_only').style.display = '';
        document.getElementById('marital_status_editable').style.display = 'none';
        document.getElementById('marital_status_read_only').style.display = '';
      }
    }
    else
    {
        
    }
    new Effect.Highlight(id,{duration:3.0});
  }

  </script>

  <script language="JavaScript" id="jscal1xx">
    var cal1xx = new CalendarPopup("testdiv1");
    cal1xx.showNavigationDropdowns();
  </script>
  
  <style type="text/css">
  
    /* DYNAMIC NUMBERS: THIS IS WHERE WE NEED A SCRIPT TO CALCULATE THE CORRECT VALUE BASED UPON EHR VENDOR COMPLIANCE. */
    /* DONE IS CURRENTLY 118px */    
    .requiredAttributeCompliance div span.portion {
        width:112px;
    }  
    .provisionalAttributeCompliance div span.portion {
        width:71px;
    }  
   
   </style>
  
</head>

<body>

  <div id="page">
  
    <!-- Start Menu -->
    <div id="header">
      <ul>
        <li><img src="./images/laika_logo.jpeg" alt="Laika Logo"/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;
        </li>
        <li><a href="#">Manage Tests</a></li>
        <li><a href="#">XDS Config</a></li>
        <li><a href="laika_report.xml">Interop Report</a></li>
        <li><a href="#">FAQ</a> </li>
        <li><a href="mailto:talk@projectlaika.org">Feedback</a></li>
        <li><a href="#">Logout</a></li>
      </ul>
    </div>
    <!-- End Menu -->
    
    <!-- Start Content -->
    <div id="content">
      
      <!-- Start Personal Information Module -->
      <div id="person">
      <form method="post" action="mailto:rmccready@mitre.org">
      <table class="hitsp_c32_module_header">
        <tbody>
          <tr>
            <td class="hitsp_c32_module_name">Person Information</td>
            <td class="hitsp_c32_attribute_collapse">
              <a href="javascript:switch_hitsp_module('hitsp_32_person_info', 'person_info_hide_show_link');" id="person_info_hide_show_link">Hide</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:toggle_editable('person');">Edit</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:scroll_to_module('page', 1.5);">Top</a>
            </td>
          </tr>
        </tbody>
      </table>
      <div id="hitsp_32_person_info">
        <table class="hitsp_c32_module">
          <tbody>
            <tr>
              <td class="hitsp_c32_attribute_name">Person ID:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">78A150ED-B890-49dc-B716-5EC0027B3983</td>
            </tr>
            </tr>
            <tr>
              <c:set var="firstName" value=""/>
              <c:forEach items="${testscript.rules}" var="rule">
                <c:if test='${rule.documentLocation.id == 301}'>
                  <c:set var="firstName" value="${rule.expectedValue}"/>
                </c:if>
              </c:forEach>
              <td class="hitsp_c32_attribute_name">First Name:</td>
              <td class="hitsp_c32_attribute_value">
                <div class="person_read_only" id="first_name_read_only">
                  <c:out value='${firstName}' />
                </div>
                <div class="person_editable" id="first_name_editable" style="display:none">
                  <input type="text"name="first_name_field" value="<c:out value='${firstName}' />" maxlength="64" size="25" />
                </div>
              </td>
              <td class="hitsp_c32_attribute_name">Prefix:</td>
              <td class="hitsp_c32_attribute_value">Mr.</td>
            </tr>
            <tr>
              <c:set var="lastName" value=""/>
              <c:forEach items="${testscript.rules}" var="rule">
                <c:if test='${rule.documentLocation.id == 302}'>
                  <c:set var="lastName" value="${rule.expectedValue}"/>
                </c:if>
              </c:forEach>
              <td class="hitsp_c32_attribute_name">Last Name:</td>
              <td class="hitsp_c32_attribute_value">
                <div class="person_read_only" id="last_name_read_only">
                  <c:out value='${lastName}' />
                </div>
                <div class="person_editable" id="last_name_editable" style="display:none">
                  <input type="text"name="last_name_field" value="<c:out value='${lastName}' />" maxlength="64" size="25" />
                </div>
              </td>
              <td class="hitsp_c32_attribute_name">Middle Name:</td>
              <td class="hitsp_c32_attribute_value">
                <div class="person_read_only" id="middle_name_read_only">
                  Jay
                </div>
                <div class="person_editable" id="middle_name_editable" style="display:none">
                  <input type="text"name="middle_name_field" value="Jay" maxlength="64" size="25" />
                </div>
              </td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Date of Birth:</td>
              <td class="hitsp_c32_attribute_value">
                <div class="person_read_only" id="dob_read_only">
                  06/24/1970
                </div>
                <div class="person_editable" id="dob_editable" style="display:none">
                  <input name="person_dob" value="06/24/1970" size="25" type="text">
                  <a href="#" onclick="cal1xx.select(document.forms[0].person_dob,'anchor1xx','MM/dd/yyyy'); return false;" name="anchor1xx" id="anchor1xx">select</a>
                  <div id="testdiv1" style="position: absolute; visibility: hidden; background-color: white;"></div>
                </div>
              </td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Gender:</td>
              <td class="hitsp_c32_attribute_value">
                <div class="person_read_only" id="gender_read_only">
                  Male
                </div>
                <div class="person2_editable" id="gender_editable" style="display:none">
                  <select>
                    <option>Select Gender</option>
                    <option selected="selected">Male</option>
                    <option>Female</option>
                  </select>
                </div>
              </td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            <tr>
              <td class="hitsp_c32_attribute_name">Marital Status:</td>
              <td class="hitsp_c32_attribute_value">
                <div class="person_read_only" id="marital_status_read_only">
                  Married
                </div>
                <div class="person2_editable" id="marital_status_editable" style="display:none">
                  <select>
                    <option>Select Marital Status</option>
                    <option>Single</option>
                    <option selected="selected">Married</option>
                    <option>Divorced</option>
                  </select>
                </div>
              </td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Race:</td>
              <td class="hitsp_c32_attribute_value">Caucasian</td>
              <td class="hitsp_c32_attribute_name">Ethnicity:</td>
              <td class="hitsp_c32_attribute_value">Scottish</td>
            </tr><tr>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">742 Evergreen Terrace</td>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">2nd Floor</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">City:</td>
              <td class="hitsp_c32_attribute_value">Springfield</td>
              <td class="hitsp_c32_attribute_name">State:</td>
              <td class="hitsp_c32_attribute_value">
                <div class="person_read_only"  id="state_read_only">
                  MA
                </div>
                <div class="person_editable" id="state_editable" style="display:none">
                  <select>
                    <option>Select State</option>
                    <option>AK</option><option>AL</option><option>AR</option><option>AS</option><option>AZ</option>
                    <option>CA</option><option>CO</option><option>CT</option><option>DC</option><option>DE</option>
                    <option>FL</option><option>FM</option><option>GA</option><option>GU</option><option>HI</option>
                    <option>IA</option><option>ID</option><option>IL</option><option>IN</option><option>KS</option>
                    <option>KY</option><option>LA</option><option selected="selected">MA</option><option>MD</option><option>ME</option>
                    <option>MH</option><option>MI</option><option>MN</option><option>MO</option><option>MS</option>
                    <option>MT</option><option>NC</option><option>ND</option><option>NE</option><option>NH</option>
                    <option>NJ</option><option>NM</option><option>NV</option><option>NY</option><option>MP</option>
                    <option>OH</option><option>OK</option><option>OR</option><option>PA</option><option>PR</option>
                    <option>PW</option><option>RI</option><option>SC</option><option>SD</option><option>TN</option>
                    <option>TX</option><option>UT</option><option>VI</option><option>VT</option><option>VA</option>
                    <option>WA</option><option>WI</option><option>WV</option><option>WY</option>
                  </select>
                </div>
              </td>
             </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Postal Code:</td>
              <td class="hitsp_c32_attribute_value">01440</td>
              <td class="hitsp_c32_attribute_name">Country:</td>
              <td class="hitsp_c32_attribute_value">US</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Home Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-561-775-7936</td>
              <td class="hitsp_c32_attribute_name">Mobile Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-781-271-7102</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Work Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-781-676-7102</td>
              <td class="hitsp_c32_attribute_name">Vacation Home Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-781-269-2062</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Email:</td>
              <td class="hitsp_c32_attribute_value">homer@simpson.com</td>
              <td class="hitsp_c32_attribute_name">URL:</td>
              <td class="hitsp_c32_attribute_value">www.homersimpson.com</td>
            </tr>
          </tbody>
        </table>
      </div>
      </form>
      </div>
      <!-- End Personal Information Module -->
      
      <!-- Start Language Spoken Module -->
      <div id="language">
      <table class="hitsp_c32_module_header">
        <tbody>
          <tr>
            <td class="hitsp_c32_module_name">Languages</td>
            <td class="hitsp_c32_attribute_collapse">
              <a href="javascript:switch_hitsp_module('hitsp_32_language_info', 'languages_info_hide_show_link');" id="languages_info_hide_show_link">Hide</a>
              &nbsp;&nbsp;&nbsp;<a href="#">Edit</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:scroll_to_module('page', 1.5);">Top</a>
            </td>
          </tr>
        </tbody>
      </table>
      <div id="hitsp_32_language_info">
        <table class="hitsp_c32_module">
          <tbody>
            <tr>
              <td class="hitsp_c32_attribute_name">Language(s)</td>
              <td class="hitsp_c32_attribute_name">Modes</td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_value">English</td>
              <td class="hitsp_c32_attribute_value">Spoken, Receive, Written</td>
              <td colspan="2"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_value">Mandarin</td>
              <td class="hitsp_c32_attribute_value">Spoken</td>
              <td colspan="2"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_value">German</td>
              <td class="hitsp_c32_attribute_value">Written</td>
              <td colspan="2"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_value">American Sign Language</td>
              <td class="hitsp_c32_attribute_value">N/A</td>
              <td colspan="2"></td>
            </tr>
          </tbody>
        </table>
      </div>
      </div>
      <!-- End Language Spoken Module -->
     
      <!-- Start Support Module -->
      <div id="support">
      <table class="hitsp_c32_module_header">
        <tbody>  
          <tr>
            <td class="hitsp_c32_module_name">Support</td>
            <td class="hitsp_c32_attribute_collapse">
              <a href="javascript:switch_hitsp_module('hitsp_32_support_info', 'support_info_hide_show_link');" id="support_info_hide_show_link">Hide</a>
              &nbsp;&nbsp;&nbsp;<a href="#">Edit</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:scroll_to_module('page', 1.5);">Top</a>
            </td>
          </tr>
        </tbody>
      </table>
      <div id="hitsp_32_support_info">
        <table class="hitsp_c32_module">
          <tbody>
            <tr>
              <td class="hitsp_c32_attribute_name">Start Support:</td>
              <td class="hitsp_c32_attribute_value">October 15, 2005</td>
              <td class="hitsp_c32_attribute_name">End Support:</td>
              <td class="hitsp_c32_attribute_value">N/A</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">First Name:</td>
              <td class="hitsp_c32_attribute_value">Marge</td>
              <td class="hitsp_c32_attribute_name">Prefix:</td>
              <td class="hitsp_c32_attribute_value">Mrs.</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Last Name:</td>
              <td class="hitsp_c32_attribute_value">Simpson</td>
              <td class="hitsp_c32_attribute_name">Middle Name:</td>
              <td class="hitsp_c32_attribute_value">Denyse</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Contact:</td>
              <td class="hitsp_c32_attribute_value">Wife</td>
              <td class="hitsp_c32_attribute_name">Type:</td>
              <td class="hitsp_c32_attribute_value">AGNT (Agent)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">83 Foster Court</td>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">2nd Floor</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">City:</td>
              <td class="hitsp_c32_attribute_value">Winchester</td>
              <td class="hitsp_c32_attribute_name">State:</td>
              <td class="hitsp_c32_attribute_value">MA</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Postal Code:</td>
              <td class="hitsp_c32_attribute_value">01440</td>
              <td class="hitsp_c32_attribute_name">Country:</td>
              <td class="hitsp_c32_attribute_value">US</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Home Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-483-578-7936</td>
              <td class="hitsp_c32_attribute_name">Mobile Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-989-266-7904</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Work Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-762-729-2130</td>
              <td class="hitsp_c32_attribute_name">Vacation Home Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-781-675-2062</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Email:</td>
              <td class="hitsp_c32_attribute_value">marge@simpson.com</td>
              <td class="hitsp_c32_attribute_name">URL:</td>
              <td class="hitsp_c32_attribute_value">www.simpson.com</td>
            </tr>
          </tbody>
        </table>
      </div>
      </div>
      <!-- End Support Module -->
      
      <!-- Start Healthcare Provider Module -->
      <div id="healthcare_provider">
      <table class="hitsp_c32_module_header">
        <tbody>
          <tr>
            <td class="hitsp_c32_module_name">Healthcare Provider</td>
            <td class="hitsp_c32_attribute_collapse">
              <a href="javascript:switch_hitsp_module('hitsp_32_healthcare_provider_info', 'healthcare_provider_info_hide_show_link');" id="healthcare_provider_info_hide_show_link">Hide</a>
              &nbsp;&nbsp;&nbsp;<a href="#">Edit</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:scroll_to_module('page', 1.5);">Top</a>
            </td>
          </tr>
        </tbody>
      </table>
      <div id="hitsp_32_healthcare_provider_info">
        <table class="hitsp_c32_module">
          <tbody>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider First Name:</td>
              <td class="hitsp_c32_attribute_value">Aisling</td>
              <td class="hitsp_c32_attribute_name">Prefix:</td>
              <td class="hitsp_c32_attribute_value">Dr.</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider Last Name:</td>
              <td class="hitsp_c32_attribute_value">Gaughan</td>
              <td class="hitsp_c32_attribute_name">Middle Name:</td>
              <td class="hitsp_c32_attribute_value">N/A</td>
            </tr>
            <tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider Role Code:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">CP (Consulting Provider)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider Role Description:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">Rob's consulting provider identified after his last operation.</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider Type:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">260000000X (Ambulatory Health Care Facilities)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Start Service:</td>
              <td class="hitsp_c32_attribute_value">October 25, 2007</td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">End Service:</td>
              <td class="hitsp_c32_attribute_value">November 9, 2007</td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">202 Burlington Road</td>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">4th Floor</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">City:</td>
              <td class="hitsp_c32_attribute_value">Bedford</td>
              <td class="hitsp_c32_attribute_name">State:</td>
              <td class="hitsp_c32_attribute_value">MA</td>
             </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Postal Code:</td>
              <td class="hitsp_c32_attribute_value">01730</td>
              <td class="hitsp_c32_attribute_name">Country:</td>
              <td class="hitsp_c32_attribute_value">US</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Work Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-555-555-5555</td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Email:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">someone@insurancecompany.com</td>
            </tr>        
            <tr>
              <td class="hitsp_c32_attribute_name">Medical Record Number:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">78A150ED-B890-49dc-B716-5EC0027B3983</td>
            </tr>      
          </tbody>
        </table>
      </div>
      </div>
      <!-- End Healthcare Provider Module -->
    
      <!-- Start Insurance Provider Module -->
      <div id="insurance_provider">
      <table class="hitsp_c32_module_header">
        <tbody>
          <tr>
            <td class="hitsp_c32_module_name">Insurance Provider</td>
            <td class="hitsp_c32_attribute_collapse">
              <a href="javascript:switch_hitsp_module('hitsp_32_insurance_provider_info', 'insurance_provider_info_hide_show_link');" id="insurance_provider_info_hide_show_link">Hide</a>
              &nbsp;&nbsp;&nbsp;<a href="#">Edit</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:scroll_to_module('page', 1.5);">Top</a>
            </td>
          </tr>
        </tbody>
      </table>
      <div id="hitsp_32_insurance_provider_info">
        <table class="hitsp_c32_module">
          <tbody>
            <tr>
              <td class="hitsp_c32_attribute_name">Group Number:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">2844AF96-37D5-42a8-9FE3-3995C110B4F8</td>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider's Organization:</td>
              <td class="hitsp_c32_attribute_value">Blue Cross Blue Shield</td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Health Insurance Type</td>
              <td class="hitsp_c32_attribute_value">IP (Individual Policy)</td>
              <td class="hitsp_c32_attribute_name">Source ID:</td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>            
            <tr>
              <td class="hitsp_c32_attribute_name">Start Coverage:</td>
              <td class="hitsp_c32_attribute_value">March 25, 2004</td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">End Coverage:</td>
              <td class="hitsp_c32_attribute_value">November 9, 2008</td>
              <td class="hitsp_c32_attribute_name"></td>
              <td class="hitsp_c32_attribute_value"></td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider Address:</td>
              <td class="hitsp_c32_attribute_value">202 Burlington Road</td>
              <td class="hitsp_c32_attribute_name">Provider Address:</td>
              <td class="hitsp_c32_attribute_value">4th Floor</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider City:</td>
              <td class="hitsp_c32_attribute_value">Bedford</td>
              <td class="hitsp_c32_attribute_name">Provider State:</td>
              <td class="hitsp_c32_attribute_value">MA</td>
             </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider Postal Code:</td>
              <td class="hitsp_c32_attribute_value">01730</td>
              <td class="hitsp_c32_attribute_name">Provider Country:</td>
              <td class="hitsp_c32_attribute_value">US</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Provider Work Phone:</td>
              <td class="hitsp_c32_attribute_value">+1-555-555-5555</td>
              <td class="hitsp_c32_attribute_name">Provider URL:</td>
              <td class="hitsp_c32_attribute_value">http://www.bluecrossma.com</td>
            </tr>   
            <tr>
              <td class="hitsp_c32_attribute_name">Member ID:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">78A150ED-B890-49dc-B716-5EC0027B3983</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">First Name:</td>
              <td class="hitsp_c32_attribute_value">Robert</td>
              <td class="hitsp_c32_attribute_name">Prefix:</td>
              <td class="hitsp_c32_attribute_value">Mr.</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Last Name:</td>
              <td class="hitsp_c32_attribute_value">McCready</td>
              <td class="hitsp_c32_attribute_name">Middle Name:</td>
              <td class="hitsp_c32_attribute_value">Jeremiah</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">83 Foster Court</td>
              <td class="hitsp_c32_attribute_name">Street Address:</td>
              <td class="hitsp_c32_attribute_value">2nd Floor</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">City:</td>
              <td class="hitsp_c32_attribute_value">Gardner</td>
              <td class="hitsp_c32_attribute_name">State:</td>
              <td class="hitsp_c32_attribute_value">MA</td>
             </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Postal Code:</td>
              <td class="hitsp_c32_attribute_value">01440</td>
              <td class="hitsp_c32_attribute_name">Country:</td>
              <td class="hitsp_c32_attribute_value">US</td>
            </tr>
          </tbody>
        </table>
      </div>
      </div>
      <!-- End Insurance Provider Module -->
      
      <!-- Start Allergies and Drugs Module -->
      <div id="allergies_and_drug">
      <table class="hitsp_c32_module_header">
        <tbody>
          <tr>
            <td class="hitsp_c32_module_name">Allergies and Drug Sensitivities</td>
            <td class="hitsp_c32_attribute_collapse">
              <a href="javascript:switch_hitsp_module('hitsp_32_allergies_and_drug_info', 'allergies_and_drug_info_hide_show_link');" id="allergies_and_drug_info_hide_show_link">Hide</a>
              &nbsp;&nbsp;&nbsp;<a href="#">Edit</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:scroll_to_module('page', 1.5);">Top</a>
            </td>
          </tr>
        </tbody>
      </table>
      <div id="hitsp_32_allergies_and_drug_info">
        <table class="hitsp_c32_module">
          <tbody>
            <tr> 
              <td class="hitsp_c32_attribute_name">Adverse Event Date:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">June 24th, 1977</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Product:</td>
              <td class="hitsp_c32_attribute_value">Penicillin</td>
              <td class="hitsp_c32_attribute_name">Product Code:</td>
              <td class="hitsp_c32_attribute_value">70618 (RxNorm)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Adverse Event Type:</td>
              <td class="hitsp_c32_attribute_value">Allergy to a drug</td>
              <td class="hitsp_c32_attribute_name">Adverse Event Code:</td>
              <td class="hitsp_c32_attribute_value">416098002 (SNOMED CT)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Reaction:</td>
              <td class="hitsp_c32_attribute_value">Hives</td>
              <td class="hitsp_c32_attribute_name">Reaction Code:</td>
              <td class="hitsp_c32_attribute_value">247472004 (SNOMED CT)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Severity:</td>
              <td class="hitsp_c32_attribute_value">Severe</td>
              <td class="hitsp_c32_attribute_name">Severity Code:</td>
              <td class="hitsp_c32_attribute_value">24484000 (SNOMED CT)</td>
            </tr>
             <tr>
              <td colspan="4" class="hitsp_c32_attribute_value">&nbsp;</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Adverse Event Date:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">August 5th, 1989</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Product:</td>
              <td class="hitsp_c32_attribute_value">Peanuts</td>
              <td class="hitsp_c32_attribute_name">Product Code:</td>
              <td class="hitsp_c32_attribute_value">70638 (RxNorm)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Adverse Event Type:</td>
              <td class="hitsp_c32_attribute_value">Allergy to a food</td>
              <td class="hitsp_c32_attribute_name">Adverse Event Code:</td>
              <td class="hitsp_c32_attribute_value">416098102 (SNOMED CT)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Reaction:</td>
              <td class="hitsp_c32_attribute_value">Hives</td>
              <td class="hitsp_c32_attribute_name">Reaction Code:</td>
              <td class="hitsp_c32_attribute_value">247472004</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Severity:</td>
              <td class="hitsp_c32_attribute_value">Mild</td>
              <td class="hitsp_c32_attribute_name">Severity Code:</td>
              <td class="hitsp_c32_attribute_value">255604002 (SNOMED CT)</td>
            </tr>
          </tbody>
        </table>
      </div>
      </div>
      <!-- End Allergies and Drugs Module -->
      
      <!-- Conditions Module -->
      <div id="condition">
      <table class="hitsp_c32_module_header">
        <tbody>
          <tr>
            <td class="hitsp_c32_module_name">Conditions</td>
            <td class="hitsp_c32_attribute_collapse">
              <a href="javascript:switch_hitsp_module('hitsp_32_condition_info', 'condition_info_hide_show_link');" id="condition_info_hide_show_link">Hide</a>
              &nbsp;&nbsp;&nbsp;<a href="#">Edit</a>
              &nbsp;&nbsp;&nbsp;<a href="javascript:scroll_to_module('page', 1.5);">Top</a>
            </td>
          </tr>
        </tbody>
      </table>
      <div id="hitsp_32_condition_info">
        <table class="hitsp_c32_module">
          <tbody> 
            <tr>
              <td class="hitsp_c32_attribute_name">Problem Date:</td>
              <td colspan="3" class="hitsp_c32_attribute_value">Dec 30th, 1986</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Problem Name:</td>
              <td class="hitsp_c32_attribute_value">Migraine</td>
              <td class="hitsp_c32_attribute_name">Problem Code:</td>
              <td class="hitsp_c32_attribute_value">37796009 (SNOMED CT)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Problem Type:</td>
              <td class="hitsp_c32_attribute_value">Symptom</td>
              <td class="hitsp_c32_attribute_name">Problem Code:</td>
              <td class="hitsp_c32_attribute_value">418799008 (SNOMED CT)</td>
            </tr>
            <tr>
              <td class="hitsp_c32_attribute_name">Treatment Provider Start:</td>
              <td class="hitsp_c32_attribute_value">December 31st, 1986</td>
              <td class="hitsp_c32_attribute_name">Treatment Provider End:</td>
              <td class="hitsp_c32_attribute_value">January 3rd, 1987</td>
            </tr>
          </tbody>
        </table>
      </div>
      </div>
      <!-- End Allergies and Drugs Module -->
      
    </div>
    <!-- End Content -->
     
    <!-- Start Sidebar and Menus -->
    <div id="sidebar">    
    
      <div class="hitsp_c32_module_name">Required Attributes</div>
       
      <!-- Compliance -->
      <div class="progressBarComponent2">
        <div class="progress"> 
          <div class="requiredAttributeCompliance">
            <div>
              <span class="portion"></span>
              <span class="metric">Compliant <em><span class="datapoint">95</span>%</em></span>
              <span class="metric violation">Violations <em><span class="datapoint">3</span></em></span>
            </div>
          </div>
        </div>
      </div>
        
      <div class="hitsp_c32_module_name">Provisional Attributes</div>
       
      <!-- Compliance -->
      <div class="progressBarComponent2">
        <div class="progress"> 
          <div class="provisionalAttributeCompliance">
            <div>
              <span class="portion"></span>
              <span class="metric">Compliant <em><span class="datapoint">61</span>%</em></span>
              <span class="metric violation">Violations <em><span class="datapoint">26</span></em></span>
            </div>
          </div>
        </div>
      </div>
      
      <table class="hitsp_module_list">
        <caption>CCD/C32 Modules</caption>
        <!-- there is a known bug in IE 6 regarding sibling selectors
             since we want the second column to look different than the first
             we are going to work aroudn this bug by inserting a class on every other td
        -->
        <tbody>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('person', 1.0);">Person Information</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('language', 1.0);">Language Spoken</a></td>
            <td class="hitsp_required">Required&#134;</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('support', 1.0);">Support</a></td>
            <td class="hitsp_required">Required&#134;</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('healthcare_provider', 1.0);">Healthcare Provider</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('insurance_provider', 1.0);">Insurance Provider</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('allergies_and_drug', 1.0);">Allergies and Drugs</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('condition', 1.0);">Condition</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight'medications', 1.0);">Medications</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('pregnancy', 1.0);">Pregnancy</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('information_source', 1.0);">Information Source</a></td>
            <td class="hitsp_required">Required</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('comments', 1.0);">Comments</a></td>
            <td class="hitsp_op">Optional</td>
          </tr>
          <tr>
            <td class="hitsp_mod"><a href="#" onclick="javascript:scroll_to_module_and_highlight('advance_directive', 1.0);">Advance Directive</a></td>
            <td class="hitsp_op">Optional</td>
          </tr>
        </tbody>
      </table>
      <div id="menu_key">
        &#134; If Known
      </div>
    </div>
    <!-- End Sidebar and menus -->
    
    <!-- Start Footer -->
    <div id="footer">
    </div>
    <!-- End Footer -->
    
  </div>
</body>
</html>