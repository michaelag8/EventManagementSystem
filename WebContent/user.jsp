<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events - User</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--
monopoly, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
<div id="container">

    <jsp:directive.include file="include/header.html" />

    <div id="body" class="width">

        <jsp:directive.include file="include/sidemenu.html" />

		<section id="content" class="two-column">

    	    <article>
        	    <h3>Username</h3>

              <div id="refinesearch">
                <button type="button" style="margin-left: 2px;" class="formbutton" id="resetcredentials" 
                      onclick="document.location.href='resetcredentials.jsp';">Reset Credentials</button>
                <button type="button" style="margin-left: 2px;" class="formbutton" id="deleteuser" 
                      onclick="document.location.href='editevent.jsp';">Delete User</button>
                <button type="button" style="margin-left: 2px;" class="formbutton" id="editdetails" 
                      onclick="document.location.href='editevent.jsp';">Edit Details</button>
              </div>

              <div id="main-content" >
                <fieldset>
                  <table width="200" border="0">
                    <tr>
                      <td width="32%"><label>Username</label>&nbsp;</td>
                      <td width="68%">username123</td>
                    </tr>
                        
                    <tr>
                      <td><label>Email Address</label></td>
                      <td>email@email.com</td>
                    </tr>
                        
                    <tr>
                      <td><label>Name</label></td>
                      <td>Firstname + Lastname</td>
                    </tr>
                           
                    <tr>
                      <td><label>Role</label></td>
                      <td>Employee</td>
                    </tr>
                  
                  </table>
                </fieldset>
              </div>
                
            </article>
        </section>
        
    	<div class="clear"></div>
    </div> <!-- end of body -->

    <jsp:directive.include file="include/footer.html" />
</div>
</body>
</html>