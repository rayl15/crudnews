

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rayl
 */
@WebServlet(urlPatterns = {"/EditProperty"})
public class EditProperty extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
     response.setContentType("text/html;charset=UTF-8");
     String title,metaTag,transType,floor,advert,proptype,location,address,category,bedbhk,bathroom,furnished,typeofowner,buildarea,plotarea,ageofprop,totalprice,perunitprice,propfeature,propstatus,landmark,image,map,briefdesc,relatedimg,status,bunit,punit;
     title = request.getParameter("title");
     metaTag = request.getParameter("metatag");
     transType = request.getParameter("transtype");
     floor = request.getParameter("floor");
     advert =  request.getParameter("advert");
     proptype = request.getParameter("proptype");
     location = request.getParameter("location");
     address = request.getParameter("address");
     category = request.getParameter("category");
     bedbhk = request.getParameter("bedbhk");
     bathroom = request.getParameter("bathroom");
     furnished = request.getParameter("furnished");
     typeofowner = request.getParameter("typeofowner");
     buildarea = request.getParameter("buildarea");
     plotarea = request.getParameter("plotarea");
     ageofprop = request.getParameter("ageofprop");
     totalprice= request.getParameter("totalprice");
     perunitprice= request.getParameter("perunitprice");
     propfeature= request.getParameter("propfeature");
     propstatus= request.getParameter("propstatus");
     landmark= request.getParameter("landmark");
     image= request.getParameter("image");
     map= request.getParameter("map");
     briefdesc= request.getParameter("briefdesc");
     relatedimg= request.getParameter("relatedimage");
     status= request.getParameter("status");
     bunit = request.getParameter("bunit");
     punit = request.getParameter("punit");
     String id=request.getParameter("id");
     String q;
     q ="update addprop set title='"+title+"',metatag='"+metaTag+"',transtype='"+transType+"',floor='"+floor+"',advert='"+advert+"',proptype='"+proptype+"',location='"+location+"',address='"+address+"',category='"+category+"',bedbhk='"+bedbhk+"',bathroom='"+bathroom+"',furnished='"+furnished+"',typeofowner='"+typeofowner+"',buildarea='"+buildarea+"',plotarea='"+plotarea+"',ageofprop='"+ageofprop+"',totalprice='"+totalprice+"',perunitprice='"+perunitprice+"',propfeature='"+propfeature+"',propstatus='"+propstatus+"',landmark='"+landmark+"',image='"+image+"',map='"+map+"',briefdesc='"+briefdesc+"',relatedimg='"+relatedimg+"',status='"+status+"',bunit='"+bunit+"',punit='"+punit+"' where id="+id;
     int ur=db.DBService.updateData(q);
     //out.print(title+""+metaTag+""+transType+""+floor+""+advert+""+proptype+""+location+""+address+""+category+""+bedbhk+""+bathroom+""+furnished+""+typeofowner+""+buildarea+""+plotarea+""+ageofprop+""+totalprice+""+perunitprice+""+propfeature+""+propstatus+""+landmark+""+image+""+map+""+briefdesc+""+relatedimg+""+status);
     if(ur>0){
     
         
         response.sendRedirect("manage_property.jsp");
     }
     else
     {
         //out.print("No result");
         response.sendRedirect("edit_property.jsp");
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
