<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Connection"%>
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
					<li><a href="auditor_login.jsp">TPAU</a></li>
					<li><a href="cloud_login.jsp">CLOUD</a></li>
                                        <li><a href="arbitrator_login.jsp">TPAR</a></li>
					
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
			
                        <li><a href="f_audit.jsp">Log Out</a></li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title" style="color:whitesmoke">File Audit</h1>
				</header>
				
                            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >
                        
                                <div class="panel panel-default" style="background-color:cadetblue">
						<div class="panel-body">
							<h3 class="thin text-center" style="color:whitesmoke">Auditing the File in Cloud</h3>
							<hr>
							     <%

 String [] array = request.getQueryString().split(",");
    String fname = array[0];
    String mail = array[1];
    
                             
                    String  file=null;
                          System.out.println("owner" +mail);
                                    
                                    
                                    
                            Connection con = Dbconn.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from files where file_name='" + fname+ "' AND file_owner='" + mail + "'");
                            while(rt.next()) {
                              
                                file = rt.getString("file");
                                System.out.println("text:"+file);
                                }
                            %>
                                                                                  <center>

							<form action="" method="get" enctype="multipart/form-data">
                                                            <div class="top-margin">
                                                                    <label style="color:black">File Name </label>
									<input type="text" class="form-control" name="fname1" value="<%=fname%>" readonly="">
								</div>
                                                                <div class="top-margin">
                                                                    <label style="color:black">File Content </label>
								 <textarea name="modify1" id="message" class="form-control" rows="9" cols="25" readonly="" value="<%=file%>" ><%=file%></textarea>
                      	
                                                                </div>
								
								
								<hr>

								<br><br><br><br>
							
                                                                
                                                                
                                                                
							</form>
                                                                                  </center>
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