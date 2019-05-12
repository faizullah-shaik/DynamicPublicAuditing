
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%
    String key=request.getParameter("pkey");
    HttpSession user=request.getSession();
    String mail=user.getAttribute("email").toString();
     
     System.out.println("mail "+mail);
   
    try{
       
        Connection con=Dbconn.getConnection();
        Statement st=con.createStatement();
        
        
        ResultSet rt=st.executeQuery("select * from register where email='"+mail+"' AND status='yes' AND pkey='"+key+"' ");
        if(rt.next()){
           response.sendRedirect("user_page.jsp?msg=Public_Key_Verified");   
             
    } else{
       response.sendRedirect("user_page.jsp?msg=Enter_Correct_Public_key");   
                
    }}          
        catch(Exception ex){
        ex.printStackTrace();
    }
%>