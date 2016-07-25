
<%@page import="java.sql.ResultSet"%>
<%
String q="select * from addprop";
ResultSet rs=db.DBService.selectData(q);
%>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">





                                    <thead>

                                        <tr>

                                             <th>Image</th>

                                            <th>Title</th>

                                            <th>Status</th>

                                            <th>Action</th>

                                        </tr>

                                    </thead>
   <%
    while(rs.next())
               {             
        String title=rs.getString("title");
        String status=rs.getString("status");
        //------------//
     String id,metatag,transtype,floor,advert,proptype,location,address,category,bedbhk,bathroom,furnished,typeofowner,buildarea,plotarea,ageofprop,totalprice,perunitprice,propfeature,propstatus,landmark,image,map,briefdesc,relatedimage,bunit,punit;
     metatag = rs.getString("metatag");
     transtype = rs.getString("transtype");
     floor = rs.getString("floor");
     advert =  rs.getString("advert");
     proptype = rs.getString("proptype");
     location = rs.getString("location");
     address = rs.getString("address");
     category = rs.getString("category");
     bedbhk = rs.getString("bedbhk");
     bathroom = rs.getString("bathroom");
     furnished = rs.getString("furnished");
     typeofowner = rs.getString("typeofowner");
     buildarea = rs.getString("buildarea");
     plotarea = rs.getString("plotarea");
     ageofprop = rs.getString("ageofprop");
     totalprice= rs.getString("totalprice");
     perunitprice= rs.getString("perunitprice");
     propfeature= rs.getString("propfeature");
     propstatus= rs.getString("propstatus");
     landmark= rs.getString("landmark");
     image= rs.getString("image");
     map= rs.getString("map");
     briefdesc= rs.getString("briefdesc");
     relatedimage= rs.getString("relatedimg");
     id=rs.getString("id");
     bunit = rs.getString("bunit");
     punit = rs.getString("punit");
        //String rd=rs.getString("metadesc");
        //String key = rs.getString("metakeyword");
        //String pri = rs.getString("id");
        String emu="edit_property.jsp?title="+title+"&metatag="+metatag+"&transtype="+transtype+"&floor="+floor+"&advert="+advert+"&proptype="+proptype+"&location="+location+"&address="+address+"&category="+category+"&bedbhk="+bedbhk+"&bathroom="+bathroom+"&furnished="+furnished+"+&typeofowner="+typeofowner+"&buildarea="+buildarea+"&plotarea="+plotarea+"&ageofprop="+ageofprop+"&totalprice="+totalprice+"&perunitprice="+perunitprice+"&propfeature="+propfeature+"&propstatus="+propstatus+"&landmark="+landmark+"&image="+image+"&map="+map+"&briefdesc="+briefdesc+"&relatedimage="+relatedimage+"&status="+status+"&id="+id+"&bunit="+bunit+"&punit="+punit;
    %>       
    
    <tr class="gridrow"/>
     <td><img src="<?php echo $value['tbl_property']['image']; ?>" width="40" height="40" /></td>
        <td><%=title%></td>
        <td class="center"><% if(status.equals("1"))%><a href="#">Disable</a><%if(status.equals("0"))%><a href="#">Enable</a></td>
        <td class="center"><a href="<%=emu%>"><img src="images/icn_edit.png" alt="edit" title="edit"></a>
            &nbsp;&nbsp;<a href="DelProperty?id=<%=id%>" onClick="return confirm('Are you sure You want to delete?');"><img src="images/icn_delete.png" alt="delete" title="delete"></a>
                                            

                                            </td>
    
    </tr>
    
    <%}%>
    
</table>