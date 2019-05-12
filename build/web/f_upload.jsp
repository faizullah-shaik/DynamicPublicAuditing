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
                         <li><a href="user_page.jsp">User Home</a></li>
			<li class="active">File Upload</li>
                        <li><a href="f_details.jsp">File View</a></li>
                        <li><a href="f_download.jsp">File Download</a></li>
                        <li><a href="u_msg.jsp">TPAR Message</a></li>
                       
			<li><a href="user_login.jsp">Log Out</a></li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title" style="color:whitesmoke">File Upload</h1>
				</header>
				
                            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >
                                 <div  style="height: 300px; width: 1000px; margin-left: -250px;margin-bottom: -10px;">
                         <div style="width:500px;height: 300px;border-top-left-radius: 19px;border-bottom-left-radius: 19px;float: left;">

                             <div class="panel panel-default" style="background-color:blue">
						<div class="panel-body">
							<h3 class="thin text-center" style="color:whitesmoke">Upload the File in Cloud</h3>
							<hr>
							
							<form action="Upload" method="post" enctype="multipart/form-data">
								<div class="top-margin">
                                                                    <label style="color:black">Upload <span class="text-danger">*</span></label>
									<input type="file" class="form-control" name="upload">
								</div>
								
								<hr>

								<div class="row">
									<div class="col-lg-4 text-right">
										<button class="btn btn-action" type="submit">Upload</button>
									</div>
                                                                    <div class="">
										<button class="btn btn-action" type="reset">Reset</button>
									</div>
							
								</div>
                                                                <br><br><br><br>
							
                                                                
                                                                
                                                                
							</form>
						</div>
					</div>
                             </div>
                                       <div style="height: 337px; width: 500px;margin-left: 550px; background-image: url('assets/images/upload.jpg')">
                                       </div>
                                 </div>

				</div>
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>