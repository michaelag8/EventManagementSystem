<!doctype html>
<html>
<%@ page language="java" contentType="text/html" import="java.util.*" errorPage="error.jsp" %>
<jsp:useBean id="presetevents" class="event.Event" scope="request" />
<jsp:useBean id="allitems" class="event.EventDetails" scope="request" />
<jsp:useBean id="staffname" class="user.StaffUser" scope="request" />
<%@ page import="event.Event" %>
<%@ page import="event.EventDetails" %>
<%@ page import="java.math.BigDecimal" %>
<%
  String pagesessionrole = "";
  int client = 0;
  int loggedin = 0;
  if(session.getAttribute("session_isloggedin") != null) {
    loggedin = 1;
    pagesessionrole = (String)session.getAttribute("session_userrole");  

    if(pagesessionrole.equalsIgnoreCase("client")) {
      client = 1;
    }   

  } else {
    client = 1;
  }
%>
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

    <jsp:directive.include file="include/header.jsp" />

    <div id="body" class="width">

        <jsp:directive.include file="include/sidemenu.jsp" />

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
                
                <%
                  if(client ==1  && loggedin == 1) {
                %>
                     <button type="button" style="margin-left: 2px;" class="formbutton" id="sendinvitation">Send Guest Invitations</button>
                <%             
                  } else {
                      if(pagesessionrole.equalsIgnoreCase("manager")) {
                %>
                        <button type="button" style="margin-left: 2px;" class="formbutton" id="givediscount">Give Discount</button>
                <%
                      }
                %>
                    <button type="button" style="margin-left: 2px;" class="formbutton" id="editevent" 
                          onclick="document.location.href='editpresetevent.jsp?id=<%=eventid%>';">Edit Event</button>
                    <button type="button" style="margin-left: 2px;" class="formbutton" id="deleteevent">Delete Event</button>
                <%
                  }
                %>

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

                        <%
                          if(client != 0  && loggedin == 1) { //Show edit and delete item button if not client and loggedin
                        %>
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
                        %>
                  
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
                <%
                  if(client != 0 && loggedin == 1) { //Show add new item button only if not client and loggedin
                %>
                    <button type="button" style="margin-left: 2px;" class="formbutton" id="additembutton" 
                          onclick="document.location.href='additem.jsp?event=<%=eventid%>&type=<%=type%>';">Add New Item</button>
                <%
                  }
                %>
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
<div id="bookeventdialog" style="display: none">
  <form action="${pageContext.request.contextPath}/EventController" method="get" id="hiddenbookeventform">
    <input name="id" type="hidden" value="<%=eventid%>">
    <table width="200" border="0">
      <tr>
        <td><label>New Client Name </label>&nbsp;</td>
        <td><input name="clientname" type="text" id="clientname" maxlength="80"></td>
      </tr>

      <tr>
        <td><label>Contact Number</label></td>
        <td><input type="text" name="contactnumber" id="contactnumber" pattern="^\s*\(?(020[7,8]{1}\)?[ ]?[1-9]{1}[0-9{2}[ ]?[0-9]{4})|(0[1-8]{1}[0-9]{3}\)?[ ]?[1-9]{1}[0-9]{2}[ ]?[0-9]{3})\s*$"></td>
      </tr>

      <tr>
        <td><label>Email Address</label>&nbsp;</td>
        <td><input name="emailaddress" type="email" id="emailaddress" maxlength="50"></td>
      </tr>
    </table>
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

        $("#bookeventdialog").dialog({
          modal: true,
          autoOpen: false,
          width: 500,
          resizable:false,
          title:'Book',
          buttons: {
            "Book": function() {
              $(this).dialog("close");
              $("#hiddenbookeventform").submit();
            },
            "Cancel": function() {
              $(this).dialog("close");
            }
          } //End of button
        });

        $("#deleteevent").click(function () {
          $("#deleteeventdialog").dialog("open");
        });

        $("#bookevent").click(function () {
          $("#bookeventdialog").dialog("open");
        });
  });                       
</script>