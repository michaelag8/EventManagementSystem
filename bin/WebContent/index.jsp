<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XPERT Events</title>
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
	
       <jsp:directive.include file="/include/sidemenu.html" />

	   <section id="content" class="two-column">

    	   <article>
    				
                <h2>Welcome</h2>
                
                <div id="main-content" >

                    <fieldset>
                        <legend>ALL EVENTS</legend>
                    </fieldset>

                    <table id = "tablecontainer">
                        <thead>
                          <tr>
                            <th>Event Name</th>
                            <th>Category</th>
                            <th>Date</th>
                          </tr> 
                        </thead>

                        <tbody>
                            <tr>
                              <td width="50%"><a href="event.jsp">Event Name One</a></td>
                              <td width="30%">Corporate</td>
                              <td width="20%">Date here</td>
                            </tr>
                        </tbody>    
                    </table> <!--end of table-->
                </div> <!--end of main-content-->
                
        	</article>
        </section>
        
    	<div class="clear"></div>
    </div> <!--end of body -->
    
    <jsp:directive.include file="/include/footer.html" />
</div>
</body>
</html>