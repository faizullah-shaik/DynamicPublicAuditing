<%@page import="Mail.MailSender"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%
    
    String mail = request.getQueryString();
    
 System.out.println(mail);
    Random s = new Random();
    int a = s.nextInt(90000000 - 5000) +25000 ;
    System.out.print(a);
    String key = String.valueOf(a);
   String msg = "\nPublic  Key:" +key;
    try {
        
        Connection con = Dbconn.getConnection();
        Statement st = con.createStatement();
        int i = st.executeUpdate("update register set pkey = '" + key + "' where email ='" + mail + "'");
        con.close();
        if (i != 0) {
            
              new MailSender().sendMail(mail, "Public Key", msg);
            response.sendRedirect("pkey_page.jsp?msg=Key_Sent");
        }

    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>