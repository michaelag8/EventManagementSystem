<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events - Login</title>
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

  <jsp:directive.include file="/include/header.html" />

  <div id="body" class="width">

    <section id="content" class="two-column">

         <article>
            
            <h2 style="margin-left: 500px;" class="formbutton">Login</h2>

            <div id="main-content">
              <fieldset style="margin-left: 400px;" class="formbutton">
                <form action="#" method="post">
                  
                  <p>
                    <label for="name">Username</label><input name="name" id="name" type="text" maxlength="20" required autofocus pattern="^[a-zA-Z0-9_ ]*$" />
                    <label for="Password">Password</label><input name="password" id="password" type="password" maxlength="20" required autofocus 
                        pattern="(?=^.{8,20}$)^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"/>
                  </p>
                  <p>
                    <input name="loginbutton" style="margin-left: 2px;" class="formbutton" value="Login" type="submit" />
                  </p>

                </form>
              </fieldset>
            </div>
                
          </article>
    </section>
          
    <div class="clear"></div>
  </div> <!--end of body -->

  <jsp:directive.include file="/include/footer.html" />
</div>
</body>
</html>