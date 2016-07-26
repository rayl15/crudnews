
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Rayl
 */
@WebServlet(urlPatterns = {"/addprop"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)

public class AddProperty extends HttpServlet {
     List list = Collections.synchronizedList(new ArrayList());

    private final String UPLOAD_DIRECTORY = "C:/uploads";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titles = "";
        if (ServletFileUpload.isMultipartContent(request)) {
            try {

                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
                    
                    if(item.isFormField())
                            {
                                list.add(item.getString());
                                //list.add(item.getName());
                            }
                    
                   else if (!item.isFormField()) {
                        String name = new File(item.getName()).getName();
                        item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
                        //titles = item.getFieldName();
                    }
                    
                }

                //File uploaded successfully
                //request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
                //request.setAttribute("message", "File Upload Failed due to " + ex);
            }

        } else {
            // request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        String title, metaTag, transType, floor, advert, proptype, location, address, category, bedbhk, bathroom, furnished, typeofowner, buildarea, plotarea, ageofprop, totalprice, perunitprice, propfeature, propstatus, landmark, image, map, briefdesc, relatedimg, status, bunit, punit;
        title = request.getParameter("title");
        metaTag = request.getParameter("metatag");
        transType = request.getParameter("transtype");
        floor = request.getParameter("floor");
        advert = request.getParameter("advert");
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
        totalprice = request.getParameter("totalprice");
        perunitprice = request.getParameter("perunitprice");
        propfeature = request.getParameter("propfeature");
        propstatus = request.getParameter("propstatus");
        landmark = request.getParameter("landmark");
        image = request.getParameter("image");
        map = request.getParameter("map");
        briefdesc = request.getParameter("briefdesc");
        relatedimg = request.getParameter("relatedimage");
        status = request.getParameter("status");
        bunit = request.getParameter("bunit");
        punit = request.getParameter("punit");
        String id = request.getParameter("id");
        String q;
        //--------------------------------------------------------//
/*String fname = request.getParameter("image");
final String dirname = "C:\\Users\\Rayl\\Documents\\ShappireEstate\\web\\images"; 
 image = dirname + File.separator+fname;
MultipartRequest m=new MultipartRequest(request,dirname,5*1024*1024 );*/
        //-----------------------------------------------------------//  

        q = "insert into addprop(title,metatag,transtype,floor,advert,proptype,location,address,category,bedbhk,bathroom,furnished,typeofowner,buildarea,plotarea,ageofprop,totalprice,perunitprice,propfeature,propstatus,landmark,map,briefdesc,relatedimg,status,bunit,punit)values('" + title + "','" + metaTag + "','" + transType + "','" + floor + "','" + advert + "','" + proptype + "','" + location + "','" + address + "','" + category + "','" + bedbhk + "','" + bathroom + "','" + furnished + "','" + typeofowner + "','" + buildarea + "','" + plotarea + "','" + ageofprop + "','" + totalprice + "','" + perunitprice + "','" + propfeature + "','" + propstatus + "','" + landmark + "','" + map + "','" + briefdesc + "','" + relatedimg + "','" + status + "','" + bunit + "','" + punit + "')";

        int ur = db.DBService.updateData(q);
        //out.print(title+""+metaTag+""+transType+""+floor+""+advert+""+proptype+""+location+""+address+""+category+""+bedbhk+""+bathroom+""+furnished+""+typeofowner+""+buildarea+""+plotarea+""+ageofprop+""+totalprice+""+perunitprice+""+propfeature+""+propstatus+""+landmark+""+image+""+map+""+briefdesc+""+relatedimg+""+status);
        if (ur > 0) {
            //out.print(title+""+metaTag+""+transType+""+floor+""+advert+""+proptype+""+location+""+address+""+category+""+bedbhk+""+bathroom+""+furnished+""+typeofowner+""+buildarea+""+plotarea+""+ageofprop+""+totalprice+""+perunitprice+""+propfeature+""+propstatus+""+landmark+""+image+""+map+""+briefdesc+""+relatedimg+""+status);
            for(int i=0;i<list.size();i++)
            {
                out.print("<br>");
            out.print(list.get(i));
            }
            list.clear();
            //response.sendRedirect("manage_property.jsp");
        } else {
            response.sendRedirect("add_property.jsp");
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

//out.print("successfully uploaded");  
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
