<!doctype html>
<html>
<%@ page language="java" contentType="text/html" import="java.util.*" errorPage="error.jsp" %>
<jsp:useBean id="presetevents" class="event.Event" scope="request" />
<jsp:useBean id="allitems" class="event.EventDetails" scope="request" />
<jsp:useBean id="staffname" class="user.StaffUser" scope="request" />
<%@ page import="event.Event" %>
<%@ page import="event.EventDetails" %>
<%@ page import="java.math.BigDecimal" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events - Event</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
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
                      onclick="document.location.href='editpresetevent.jsp?id=<%=eventid%>';">Edit Event</button>
                <button type="button" style="margin-left: 2px;" class="formbutton" id="deleteevent">Delete Event</button>
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
                  <% 
                    int ispreset = 0;
                    if(type.equalsIgnoreCase("preset")) {
                      ispreset = 1;
                    }

                    ArrayList<EventDetails> items = allitems.viewEventDetails(Integer.parseInt(eventid), ispreset);
                    if(!items.isEmpty()) {
                      for (EventDetails item : items) {
                        int itemid = item.getItemid();
                        String itemname = item.getItemName();
                        String itemtype = item.getItemType();
                        String itemdesc = item.getItemDescription();
                        int staffid = item.getStaffAssigned();
                        String staffassigned = staffname.getUsernameById(staffid);
                  %>

                        <tr>
                          <td width="32%"><label>Item Name</label>&nbsp;</td>
                          <td width="68%"><%=itemname%></td>
                        </tr>
                              
                        <tr>
                          <td><label>Item Type</label></td>
                          <td><%=itemtype%></td>
                        </tr>
                              
                        <tr>
                          <td><label>Description</label></td>
                          <td><%=itemdesc%></td>
                        </tr>
                                 
                        <tr>
                          <td><label>Staff Assigned</label></td>
                          <td><%=staffassigned%></td>
                        </tr>  

                        <tr>
                          <td>
                            <button type="button" style="margin-left: 2px;" class="formbutton" id="edititem" 
                                  onclick="document.location.href='edititem.jsp?id=<%=itemid%>&event=<%=eventid%>&type=<%=type%>';">Edit Item</button>
                            <button type="button" style="margin-left: 2px;" class="formbutton" id="deleteitem" 
                                  onclick="document.location.href='${pageContext.request.contextPath}/ItemController?id=<%=itemid%>&eventid=<%=eventid%>&preset=<%=ispreset%>';">Delete Item</button>
                          </td>
                        </tr>
                  <%
                      } 
                    } else {
                  %>
                        <tr> 
                          <td>No Items to Display</td>
                        </tr>
                  <%
                    }
                  %>
                </table>
              </div>

              <div id="refinesearch">
                <button type="button" style="margin-left: 2px;" class="formbutton" id="additembutton" 
                      onclick="document.location.href='additem.jsp?event=<%=eventid%>&type=<%=type%>';">Add New Item</button>
              </div>
                
            </article>
        </section>
      
    	<div class="clear"></div>
    </div> <!-- end of body -->

    <jsp:directive.include file="include/footer.html" />
</div>
<div id="deleteeventdialog" style="display: none">
  <p>Are you sure you want to delete the event?</p>
  <form style="display: hidden" action="${pageContext.request.contextPath}/PresetController" method="get" id="hiddendeleteeventform">
    <input name="id" type="hidden" value="<%=eventid%>">
  </form>
</div>
</body>
</html>

<script language="javascript" type="text/javascript">
  $(function () {
        $("#deleteeventdialog").dialog({
          modal: true,
          autoOpen: false,
          width: 300,
          resizable:false,
          title:'Delete',
          buttons: {
            "Delete": function() {
              $(this).dialog("close");
              $("#hiddendeleteeventform").submit();
            },
            "Cancel": function() {
              $(this).dialog("close");
            }
          } //End of button
        });

        $("#deleteevent").click(function () {
          $("#deleteeventdialog").dialog("open");
        });
  });                       
</script>