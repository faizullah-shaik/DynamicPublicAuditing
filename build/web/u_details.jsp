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
                        <li class="active">User Details</li>
                        
			<li><a href="f_send.jsp">File Send</a></li>
                        <li><a href="c_msg.jsp">Arbitrator's Message</a></li>
                         <li><a href="c_downloads.jsp">Cloud Downloads</a></li>
                        <li><a href="cloud_login.jsp">Log Out</a></li>
                       
		</ol>
<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title" style="color:whitesmoke">Users Details</h1>
				</header>
				<div class="jumbotron top-space">
                
		  <center>
                   <table border="1" width="700px" hieght="1200px" style="text-align: center;background-color:#07c49c">
                   
                       <tr style="color:black;">
                          <th>Name</th>
                               
                                <th>Email</th>
                                <th>Birth Day </th>
                                <th>Gender</th>
                                <th>Location</th>
                                <th>Status</th>
                                <th>Public Key</th>
                         </tr>
                         <tr>
                                <%
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from register ");
                                        while (rs.next()) {
                                            String mail=rs.getString("email");
                                            
            %>
                                <td><%=rs.getString("fname")%></td>
                              
                                <td><%=rs.getString("email")%></td>
                                <td><%=rs.getString("dob")%></td>
                                <td><%=rs.getString("gender")%></td>
                                <td><%=rs.getString("loc")%></td>
                                 <td><%=rs.getString("status")%></td>
                                
                                 <td><a href="activate.jsp?<%=mail%>" >Activate </a> </td>
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
	</div>	<!-- /container --
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>