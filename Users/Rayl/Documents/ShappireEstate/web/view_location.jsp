
<%@page import="java.sql.ResultSet"%>
<%
String q="select * from location";
ResultSet rs=db.DBService.selectData(q);
%>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">





                                    <thead>

                                        <tr>

                                            <th>Name</th>

                                            <th>Status</th>

                                            <th>Action</th>

                                        </tr>

                                    </thead>
   <%
    while(rs.next())
               {
               
        String id=rs.getString("Name");
        String n=rs.getString("status");
        String t=rs.getString("metatag");
        String rd=rs.getString("metadesc");
        String key = rs.getString("metakeyword");
        String pri = rs.getString("id");
        String emu="edit_location.jsp?id="+id+"&t="+t+"&key="+key+"&rd="+rd+"&n="+n+"&pri="+pri;
    %>       
    
    <tr class="gridrow"/>
        <td><%=id%></td>
        <td class="center"><% if(n.equals("1"))%><a href="#">Disable</a><%if(n.equals("0"))%><a href="#">Enable</a></td>
        <td class="center"><a href="<%=emu%>"><img src="images/icn_edit.png" alt="edit" title="edit"></a>
&nbsp;&nbsp;<a href="DelLocation?pri=<%=pri%>" onClick="return confirm('Are you sure You want to delete?');"><img src="images/icn_delete.png" alt="delete" title="delete"></a>

                                            

                                            </td>
    
    </tr>
    
    <%
       
       }
    %>
    
</table>