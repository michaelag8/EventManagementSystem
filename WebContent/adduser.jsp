<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events - Add User</title>
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
        <h2>Add User</h2>

        <div id="main-content" >
          <fieldset>
            <form action="#" method="get">
              <table width="200" border="0">
                <tr>
                  <td width="32%"><label>Username</label>&nbsp;</td>
                  <td width="68%"><input name="username" type="text" id="username" maxlength="20"></td>
                </tr>
          
                <tr>
                  <td width="32%"><label>Password</label>&nbsp;</td>
                  <td width="68%"><input name="password" type="password" id="password" maxlength="20"></td>
                </tr>
          
                <tr>
                  <td width="32%"><label>Confirm Password</label>&nbsp;</td>
                  <td width="68%"><input name="confpassword" type="password" id="confpassword" maxlength="20"></td>
                </tr>
          
                <tr>
                  <td width="32%"><label>Email Adress</label>&nbsp;</td>
                  <td width="68%"><input name="emailaddress" type="email" id="emailaddress" maxlength="50"></td>
                </tr>
          
                <tr>
                  <td width="32%"><label>First Name</label>&nbsp;</td>
                  <td width="68%"><input name="firstname" type="text" id="firstname" maxlength="30"></td>
                </tr>
                
                <tr>
                  <td width="32%"><label>Last Name</label>&nbsp;</td>
                  <td width="68%"><input name="lastname" type="text" id="lastname" maxlength="30"></td>
                </tr>
          
                <tr>
                  <td><label>User Role</label>&nbsp;</td>
                  <td>
                    <p>
                      <label><input type="radio" name="userrole" value="Employee" id="category_0"> Employee</label>
                      <label><input type="radio" name="userrole" value="Manager" id="category_1"> Manager</label>
                      <label><input type="radio" name="userrole" value="Admin" id="category_2"> Admin</label>
                      <label><input type="radio" name="userrole" value="Client" id="category_3"> Client</label>
                    </p>
                  </td>
                </tr>
          
                <tr>
                  <td><input type="submit" style="margin-left: 2px;" class="formbutton" id="login-button" value="Add User" />&nbsp;</td>
                </tr>
              </table>
              <p>&nbsp;</p>
            </form>
          </fieldset>          
        </div>
            
        </article>
      </section>
        
    <div class="clear"></div>
  </div> <!-- end of body-->
  
  <jsp:directive.include file="include/footer.html" />
</div>
</body>
</html>