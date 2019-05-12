 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Connection"%>
<%
try{
 String [] array = request.getQueryString().split(",");
    String fname = array[0];
    String mail = array[1];
     String status = array[2];
     String d="Deleted";
   
                             
                    String  file=null,keyword=null;
                          System.out.println("owner" +mail);
                                    
                                    
                                    
                            Connection con = Dbconn.getConnection();
                            Statement st = con.createStatement();
 int i = st.executeUpdate("delete from files where file_name='"+fname+"' AND file_owner='"+mail+"'");
        if(i != 0) {
        int j = st.executeUpdate("insert into arbitrator(file_name,file_owner,file,status) values('"+fname+"','"+mail+"','"+d+"','"+status+"')" );
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
                                                          