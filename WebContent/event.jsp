<!doctype html>
<html>
<%@ page language="java" contentType="text/html" import="java.util.*" errorPage="error.jsp" %>
<jsp:useBean id="presetevents" class="event.Event" scope="request" />
<%@ page import="event.Event" %>
<%@ page import="java.math.BigDecimal" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events - Event</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
<div id="container">

    <jsp:directive.include file="include/header.html" />

    <div id="body" class="width">

        <jsp:directive.include file="include/sidemenu.html" />

		<section id="content" class="two-column">

    	    <article>
        	  <% 
              String eventid = request.getParameter("id");
              String type = request.getParameter("type"); 
              Event event = null;

              if("preset".equals(type)) {
                event = presetevents.viewEvent(Integer.parseInt(eventid));
              } else if("custom".equals(type)) {
                event = presetevents.viewEvent(Integer.parseInt(eventid)); 
              } else {
                response.sendRedirect("error.jsp");
              }
              
              if(event == null) {
                response.sendRedirect("error.jsp");
              }
              String eventname = event.getEventName();
              String category = event.getCategory();
              String location = event.getLocation();
              int guestnum = event.getEstGuestNumber();
              BigDecimal cost = event.getEventCost();
              String desc = event.getDescription();
              
            %> 
              <h3><%=eventname%></h3>

              <div id="refinesearch">
                <button type="button" style="margin-left: 2px;" class="formbutton" id="bookevent">Book Event</button>
                <button type="button" style="margin-left: 2px;" class="formbutton" id="sendinvitation">Send Guest Invitations</button>
                <button type="button" style="margin-left: 2px;" class="formbutton" id="givediscount">Give Discount</button>
                <button type="button" style="margin-left: 2px;" class="formbutton" id="editevent" 
                      onclick="document.location.href='editevent.jsp';">Edit Event</button>
                <button type="button" style="margin-left: 2px;" class="formbutton" id="deleteevent" 
                      onclick="document.location.href='editevent.jsp';">Delete Event</button>
              </div>

              <div id="main-content" >
                <fieldset>
                  <table width="200" border="0">
                    <tr>
                      <td width="32%"><label>Category</label>&nbsp;</td>
                      <td width="68%"><%=category%></td>
                    </tr>
                        
                    <tr>
                      <td><label>Location</label></td>
                      <td><%=location%></td>
                    </tr>
                        
                    <tr>
                      <td><label>Estimate Number Of Guests</label></td>
                      <td><%=guestnum%></td>
                    </tr>
                           
                    <tr>
                      <td><label>Cost</label></td>
                      <td>GBP <%=cost%></td>
                    </tr>
                        
                    <tr>
                      <td><label>Description</label></td>
                      <td><%=desc%></td>
                    </tr>
                  
                  </table>
                </fieldset>
              </div>

              <div id="itemscontainer">
                <h4>Items</h4>

                <table width="200" border="0">
                  <tr>
                    <td width="32%"><label>Item Name</label>&nbsp;</td>
                    <td width="68%">Speakers</td>
                  </tr>
                        
                  <tr>
                    <td><label>Item Type</label></td>
                    <td>AV</td>
                  </tr>
                        
                  <tr>
                    <td><label>Description</label></td>
                    <td>Le sounds</td>
                  </tr>
                           
                  <tr>
                    <td><label>Staff Assigned</label></td>
                    <td>Staff Number 1</td>
                  </tr>  

                  <tr>
                    <td>
                      <button type="button" style="margin-left: 2px;" class="formbutton" id="edititem">Edit</button>
                      <button type="button" style="margin-left: 2px;" class="formbutton" id="deleteitem">Delete</button>
                    </td>
                  </tr>
                </table>
              </div>

              <div id="refinesearch">
                <button type="button" style="margin-left: 2px;" class="formbutton" id="additembutton">Add New Item</button>
              </div>

              <div id="additem">
                  <table width="200" border="0">
                    <tr>
                      <td width="32%"><label>Item Name</label></td>
                      <td width="68%"><input type="text" name="itemname" id="itemname"></td>
                    </tr>
                    
                    <tr>
                      <td><label>Item type</label></td>
                      <td><input type="text" name="itemtype" id="itemtype"></td>
                    </tr>
                    
                    <tr>
                      <td><label>Item Description</label></td>
                      <td><textarea name="description" id="10" maxlength="200"></textarea></td>
                    </tr>
                    
                    <tr>
                      <td><label>Staff to Assign</label></td>
                      <td>
                        <select>
                          <option value="item 1" >item1 </option>
                        </select>
                      </td>
                    </tr>
                  </table>
                </div> <!-- end of additem -->
                
            </article>
        </section>
        
    	<div class="clear"></div>
    </div> <!-- end of body -->

    <jsp:directive.include file="include/footer.html" />
</div>
</body>
</html>

<script language="javascript" type="text/javascript">
  $(function () {
        $("#additembutton").click(function () {
            $("#additem").slideToggle("fast");
        });
    });                       
</script>