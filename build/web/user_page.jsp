<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Dynamic_Public_Auditing</title>

	<link rel="shortcut icon" href="assets/images/gt_favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets/css/main.css">

</head>

<body class="home" style="background-color:black">
	<div class="navbar navbar-inverse navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li><a href="index.html">Home</a></li>
					<li><a href="auditor_login.jsp">AUDITOR</a></li>
					<li><a href="cloud_login.jsp">CLOUD</a></li>
                                        <li><a href="arbitrator_login.jsp">ARBITRATOR</a></li>
					
					<li class="active"><a class="btn" href="user_login.jsp">SIGN IN / SIGN UP</a></li>
				</ul>
			</div>
		</div>
	</div> 
		
    <header id="head">
		<div class="container">
			<div class="row">
                            <b><h1 class="lead">DYNAMIC AND PUBLIC AUDITING WITH <br> FAIR ARBITRATION FOR ClOUD DATA</h1>
                            <b>
                        </div>
		</div>
	</header>
<div class="container">

		<ol class="breadcrumb">
			<li class="active">User Home</li>
                        <li><a href="f_upload.jsp">File Upload</a></li>
			<li><a href="f_details.jsp">File View</a></li>
                        <li><a href="f_download.jsp">File Download</a></li>
                        <li><a href="u_msg.jsp">TPAR Message</a></li>
                        <li><a href="user_login.jsp">Log Out</a></li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
		<br>		<!-- /Article -->
 <center><h1 class="page-title" style="color:blue">USER HOME</h1></center>
    <%
HttpSession user=request.getSession();
String name=user.getAttribute("uname").toString(); 
String name1=user.getAttribute("name").toString();                                                             
%>
                                
                                <br>
                                <br>
                                <br>
                               <center>
                            <h1 style="color:whitesmoke"> Welcome! <%=name%> <%=name1%></h1>
                            <br><br><br><br><br><br><br><br>
		</div>
	</div>	<!-- /container -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>