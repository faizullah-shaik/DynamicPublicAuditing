<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    HttpSession user=request.getSession();
    String mail=user.getAttribute("email").toString();
    System.out.println("mail: " + mail);
    String status1 = request.getParameter("status1");
    System.out.println("status: " + status1);
    String fname1 = request.getParameter("fname1");
    System.out.println("filename: " + fname1);
    String modify1 = request.getParameter("modify1");
    System.out.println("modify: " + modify1);
    
    try {
        con = Dbconn.getConnection();
        st = con.createStatement();
         System.out.println(" before updated");
        int i = st.executeUpdate("update files set file='"+modify1+"' where file_name='"+fname1+"' AND file_owner='"+mail+"'");
        System.out.println("updated");
        if(i != 0) {
        int j = st.executeUpdate("insert into arbitrator(file_name,file_owner,file,status) values('"+fname1+"','"+mail+"','"+modify1+"','"+status1+"')" );
           if(j!=0){
            response.sendRedirect("f_details.jsp?msg=file_status_will_be_intimated_to_TPAR");
        }}
        else
        {
            response.sendRedirect("f_details.jsp?msg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
