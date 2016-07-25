<%@page import="java.sql.ResultSet"%>


<%
String q="select * from catname";
ResultSet rs=db.DBService.selectData(q);
%>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
    <tr class="gridheader"/>
        <tr>

                                            <th>Category Name</th>

                                            <th>Status</th>

                                            <th>Action</th>
        
    </tr>
    <%
    while(rs.next())
               {
               
        String id=rs.getString(1);
        String n=rs.getString(2);
        String t=rs.getString(3);
        String rd=rs.getString(6);
        String emu="editmovie.jsp?id="+id+"&n="+n+"&t="+t+"&d="+rd;
    %>       
    
    <tr class="gridrow"/>
        <td align="center"><%=id%></td>
        <td align="center"><%=rd%></td>
        <td><b><a href="<%=emu%>">EDIT</b></a>|
        <a
            onclick="return confirm('Are you sure to delete?');"
         href="delmov?id=<%=id%>">DELETE</b></a>
    </td>
    </tr>
    
    <%
       
       }
    %>
        
</table>
