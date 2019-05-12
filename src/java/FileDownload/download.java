
package FileDownload;

import DatabaseConnectivity.Dbconn;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author IBN5
 */
public class download extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException
             {
        try {
             String[] filedetails = request.getQueryString().split(",");
           
            Connection con = Dbconn.getConnection();
            Statement st = con.createStatement();
            ResultSet rt = st.executeQuery("select * from files where file_name='" + filedetails[0] + "' AND file_owner='" + filedetails[1] + "'");
                if(rt.next()){
                     String data=rt.getString("file");
          
                  int i= st.executeUpdate("insert into f_download (file_name, file_owner)values('"+filedetails[0]+"','"+filedetails[1]+"')");
        if(i!=0){
              byte a[] = data.getBytes();
        response.setContentType("text/plain");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filedetails[0] + "\"");
        OutputStream os = response.getOutputStream();
        os.write(a);
        os.close();
        a = null;
        if (a == null) {
        }
 
        }
        }
                   else {
                       System.out.println("Download failed");
                   }
        }

catch(Exception e){
           System.out.println(e);
        }
      }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}


           

