<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>css3menu.com</title>
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="staff home_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->

	
</head>
<body style="background-color:#EBEBEB">
<!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="#" style="height:18px;line-height:18px;">Student Att</a>
            <ul>
                <li><a href="att up.jsp">Update Att</a></li>
                <li><a href="att view.jsp">View Att</a></li>
            </ul></li>
	<li class="topmenu"><a href="std-det.jsp" style="height:18px;line-height:18px;">Std details</a></li>
	<li class="topmenu"><a href="stf-pro.jsp" style="height:18px;line-height:18px;">Profile</a></li>
	<li class="toplast"><a href="#" style="height:18px;line-height:18px;"><span>Settings</span></a>
	<ul>
		<li><a href="chn-pas.jsp">Change Password</a></li>
		<li><a href="index.jsp">LogOut</a></li>
	</ul></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">CSS3 For Menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->
<%
String id=(String)session.getAttribute("staffid");
%>
</body>
</html>
