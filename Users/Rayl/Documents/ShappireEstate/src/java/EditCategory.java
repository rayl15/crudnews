

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditCategory extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
       PrintWriter out = response.getWriter();
       String catName = request.getParameter("catName");
       String metaTag = request.getParameter("metaTag");
       String metaKeyword = request.getParameter("metaKeyword");
       String metaDesc = request.getParameter("metaDesc");
       String className = request.getParameter("className");
       String status = request.getParameter("status");
       String pri = request.getParameter("pri");
       String q;
        q="update addcat set catname='"+catName+"',metatag='"+metaTag+"',metakeyword='"+metaKeyword+"',metadesc='"+metaDesc+"',classname='"+className+"',status='"+status+"' where id=" +pri; 
       int ur=db.DBService.updateData(q);
       if(ur>0)
       {
          response.sendRedirect("manage_categories.jsp");
           
       }
       else
       {
         response.sendRedirect("edit_category.jsp");
       }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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