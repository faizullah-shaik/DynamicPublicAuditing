<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
					<li ><a href="auditor_login.jsp">AUDITOR</a></li>
					<li class="active"><a href="cloud_login.jsp">CLOUD</a></li>
                                        <li><a href="arbitrator_login.jsp">ARBITRATOR</a></li>
					
					<li ><a class="btn" href="user_login.jsp">SIGN IN / SIGN UP</a></li>
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
			<li><a href="cloud_page.jsp">Cloud Home</a></li>
                        
			<li><a href="u_details.jsp">User Details</a></li>
                        
                        <li><a href="f_send.jsp">File Send</a></li>
                        
                         <li><a href="c_msg.jsp">Arbitrator's Message</a></li>
                          <li class="active">Cloud Downloads</li>
                       
                        <li><a href="cloud_login.jsp">Log Out</a></li>
                       
		</ol>
    <div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title" style="color:whitesmoke">Cloud Downloads</h1>
				</header>
				<div class="jumbotron top-space">
                                             <center>
                   <table border="1" width="700px" hieght="1200px" style="text-align: center;background-color:#07c49c">
                   
                       <tr style="color:black;text-align:center;">
                               
                           <th style="text-align:center">File Name</th>
                                <th style="text-align:center">File Owner</th>
                                <th style="text-align:center">Downloaded On</th>
                                </tr>
                         <tr>
                                <%
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from f_download ");
                                        while (rs.next()) {
                                            
            %>
                                <td><%=rs.getString("file_name")%></td>
                              
                                <td><%=rs.getString("file_owner")%></td>
                                <td><%=rs.getString("date")%></td>
                               </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table>
               </center>
            
               <br><br><br><br><br><br>				
		
                   	</div>
                                     
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->
	
</body>
</html>