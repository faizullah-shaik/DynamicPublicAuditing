	     <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Connection"%>
<%
try{
 String [] array = request.getQueryString().split(",");
    String fname = array[0];
    String mail = array[1];
     String date = array[2];
    String status = array[3];
   
            String d=date.substring(13,21);                 
                          System.out.println("owner" +d);
                                    
                               System.out.println("status" +status);
                                System.out.println("date" +date);
                              
                                    
                            Connection con = Dbconn.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from arbitrator where file_name='" + fname+ "' AND file_owner='" + mail + "' AND  date like '%"+d+"%'   AND  status='" + status + "' ");
                            if(rt.next()) {
                                System.out.println("hellooooo");
                              int i=st.executeUpdate("update arbitrator set status1='yes' ,t_msgs='Message send to Cloud' where file_name='" + fname+ "' AND file_owner='" + mail + "' AND  date like '%"+d+"%'  AND  status='" + status + "' ");
                                if(i!=0){
                                   int j=st.executeUpdate("update files set status='No' where file_name='" + fname+ "' AND file_owner='" + mail + "' ");
                           
                                if(j!=0){
                                    response.sendRedirect("arbit_user_cloud.jsp?msg=Message_Send");
                                }}
                                                           else{
                                   response.sendRedirect("arbit_user_cloud.jsp?msg=Message_Failed");
                                
                                                           }
                                }
                                                       }
catch(Exception e){
    System.out.println(e);
}

                            %>
                                                