<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events - Edit Event</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
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
        <h2>Reset User Credentials</h2>

        <div id="main-content" >
          <fieldset>
            <form action="#" method="post">
              <table width="200" border="0">
                <tr>
                  <td width="32%"><label>Username</label>&nbsp;</td>
                  <td width="68%"><input name="resetusername" type="text" id="resetusername" maxlength="20"></td>
                </tr>
                
                <tr>
                  <td><label>New Password</label></td>
                  <td><input name="resetpassword" id="resetpassword" type="password" maxlength="20" />
                </tr>
                
                <tr>
                  <td><label>Confirm New Password</label></td>
                  <td><input name="confpassword" type="password" id="confpassword" maxlength="20"></td>
                </tr>
                
                <tr>
                  <td><input type="submit" style="margin-left: 2px;" class="formbutton" id="login-button" value="Save" />&nbsp;</td>
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