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
     <script>
                             function validate(){
       
        var pass=document.form1.pass.value;
        var cpass=document.form1.repass.value;
       
        
                             if(pass==0){
            alert("Enter your password");
            document.form1.pass.focus();
            
            return false;
        }
                              if(cpass==0){
            alert("Enter your password cofirmation");
            document.form1.repass.focus();
            
            
            return false;
        }
        if(pass!=cpass){
            alert("Incorrect Confiorm password");
            document.form1.pass.focus();
            
            return false;
        }
                             }
        </script>


    <div class="container">

		<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li class="active">Registration</li>
                        <li><a href="user_login.jsp">Data User Access</a></li>
		
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title" style="color:whitesmoke">Registration</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                                      
               
           
                                    <div class="panel panel-default" style="background-color:#00ffff">
						<div class="panel-body">
                                                    <h3 class="thin text-center" style="color:#3366ff">Register a new account</h3>
							<hr>

							<form name="form1" action="register" onsubmit="return validate();" method="get">
								<div class="top-margin">
									<label style="color:white">First Name</label>
                                                                        <input type="text" class="form-control" name="fname" required="required">
								</div>
								<div class="top-margin">
									<label style="color:white">Last Name</label>
									<input type="text" class="form-control" name="lname" required="required">
								</div>
								<div class="top-margin">
									<label style="color:white">Email Address <span class="text-danger">*</span></label>
									<input type="email" class="form-control" name="email" required="required">
								</div>

								<div class="row top-margin">
									<div class="col-sm-6">
										<label style="color:white">Password <span class="text-danger">*</span></label>
										<input type="password" class="form-control" name="pass" required="required">
									</div>
									<div class="col-sm-6">
										<label style="color:white">Confirm Password <span class="text-danger">*</span></label>
										<input type="password" class="form-control" name="repass" required="required">
									</div>
								</div>
                                                            <div class="top-margin">
									<label style="color:white">Date of Birth <span class="text-danger">*</span></label>
									<input type="date" class="form-control" name="dob" required="required">
								</div>
                                                            <div class="top-margin">
									<label style="color:white">Gender</label>
							                <select  name="gender" class="form-control"  required="required">
                                        <option value="na" selected="" style="color:darkblue">Choose One:</option>
                                        <option value="male" style="color:darkblue">Male</option>
                                        <option value="female"style="color:darkblue">Female</option>
                                        </select>
                       		
                                                            </div>
								
                                                           <div class="top-margin">
									<label style="color:white">Location <span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="loc" required="required">
								</div>
                                                            <div class="top-margin">
									<label style="color:white">Contact <span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="con" required="required">
								</div>



								<hr>

                                                                <div class="col-lg-4 text-right">
								  <center> <button class="btn btn-action" type="submit">Register</button> </center>
									</div>
                                                                   
								</div>
							</form>
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