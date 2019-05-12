  <%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%

 String [] array = request.getQueryString().split(",");
    String fname = array[0];
    String mail = array[1];
    
                             
                    String  file=null;
                          System.out.println("owner" +mail);
                                    
                                    
                                    
                            Connection con = Dbconn.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from files where file_name='" + fname+ "' AND file_owner='" + mail + "'");
                            if(rt.next()) {
                                int i=st.executeUpdate("update files set status='yes' where file_name='" + fname+ "' AND file_owner='" + mail + "'");
                                if(i!=0){
                                    response.sendRedirect("f_send.jsp?msg=File_Send_to_TPAU_for_Audit");
                                }
                                                           else{
                                   response.sendRedirect("f_send.jsp?msg=File_Send_Failed");
                                
                                                           }
                            
                                }
                            %>
                                                           