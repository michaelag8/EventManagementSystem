<!doctype html>
<html>
<%@ page language="java" contentType="text/html" import="java.util.*" errorPage="error.jsp" %>
<jsp:useBean id="presetevents" class="event.Event" scope="request" />
<%@ page import="event.Event" %>
<%@ page import="java.math.BigDecimal" %>
<%
  String pagesessionrole = "";
  if(session.getAttribute("session_isloggedin") != null) {
    pagesessionrole = (String)session.getAttribute("session_userrole");  

    if(pagesessionrole.equalsIgnoreCase("client")) {
      response.sendRedirect("presetevents.jsp");
    } 
                  
  } else {
    response.sendRedirect("presetevents.jsp");
  }
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events - Edit Event</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
<div id="container">

  <jsp:directive.include file="include/header.jsp" />

  <div id="body" class="width">

    <jsp:directive.include file="include/sidemenu.jsp" />

		<section id="content" class="two-column">

		  <article>
        <h2>Edit Event</h2>

        <div id="main-content" >
          <fieldset>
            <form action="#" method="post">
              <table width="200" border="0">
                <tr>
                  <td width="32%"><label>Name*</label>&nbsp;</td>
                  <td width="68%"><input name="eventname" type="text" id="eventname" maxlength="80"></td>
                </tr>
                
                <tr>
                  <td><label>Category*</label>&nbsp;</td>
                  <td>
                    <p>
                      <label><input type="radio" name="category" value="Corporate" id="category_0"checked = "checked"> Corporate</label>
                      <label><input type="radio" name="category" value="Social" id="category_1"> Social</label>
                      <label><input type="radio" name="category" value="Private" id="category_2"> Private</label>
                    </p>
                  </td>
                </tr>
                
                <tr>
                  <td><label>Location*</label></td>
                  <td><input name="location" type="text" id="location" maxlength="100"></td>
                </tr>
                
                <tr>
                  <td><label>Estimate Number Of Guests*</label></td>
                  <td><input type="number" name="estnumguests" id="estnumguests"></td>
                </tr>
                    
                <tr>
                  <td><label>Cost*</label></td>
                  <td><input type="number" name="cost" id="cost"></td>
                </tr>
                
                <tr>
                  <td><label>Description*</label></td>
                  <td><textarea name="description" id="description" maxlength="200" ></textarea></td>
                </tr>
                
                <tr>
                  <td><input type="submit" style="margin-left: 2px;" class="formbutton" id="login-button" value="Submit" />&nbsp;</td>
                </tr>
          
              </table>
              <p>&nbsp;</p>
            </form>
          </fieldset>
        </div>
            
      </article>
    </section> <!-- end of section -->
        
    	<div class="clear"></div>
    </div> <!-- end of body -->

   <jsp:directive.include file="include/footer.html" />
</div>
</body>
</html>