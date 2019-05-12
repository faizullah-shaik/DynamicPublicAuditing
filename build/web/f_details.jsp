<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
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
			<li><a href="f_upload.jsp">File Upload</a></li>
                       <li class="active">File View</li>
                       <li><a href="u_msg.jsp">TPAR Message</a></li>
                       <li><a href="f_download.jsp">File Download</a></li>
			<li><a href="user_login.jsp">Log Out</a></li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title" style="color:whitesmoke">File View</h1>
				</header>
				<div class="jumbotron top-space">
                                    <table border="1" width="700px" hieght="1200px" style="text-align: center;background-color:#cccccc">
                   
                       <tr style="color:black;">
                               
                                <th>File Name</th>
                                <th>File Owner</th>
                                <th>Uploaded On</th>
                                <th>Size</th>
                                <th>Insert File</th>
                                <th>Modify File</th>
                                <th>Delete File</th>
                         </tr>
                         <tr>
                                <%
                                 HttpSession user=request.getSession();
            String mail=user.getAttribute("email").toString();
            System.out.println("mail: " + mail);
           
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from files where file_owner='"+mail+"'");
                                        while (rs.next()) {
                                           // String mail1=rs.getString("file_owner");
             String i="Inserted";
             String m="Modified";
              String d="Delelted";                                                   
            %>
            
                                <td><%=rs.getString("file_name")%></td>
                              
                                <td><%=rs.getString("file_owner")%></td>
                                <td><%=rs.getString("date")%></td>
                                <td><%=rs.getString("size")%></td>
                                <td><a href="insert_page.jsp?<%=rs.getString("file_name")%>,<%=rs.getString("file_owner")%>,<%=i%>" >Insert</a> </td>
                                 <td><a href="update_page.jsp?<%=rs.getString("file_name")%>,<%=rs.getString("file_owner")%>,<%=m%>" >Update</a> </td>
                                 <td><a href="delete.jsp?<%=rs.getString("file_name")%>,<%=rs.getString("file_owner")%>,<%=d%>" >Delete</a> </td>
                                     
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>