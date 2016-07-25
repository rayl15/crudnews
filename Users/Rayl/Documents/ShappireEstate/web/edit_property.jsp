<%-- 
    Document   : edit_property
    Created on : Jul 22, 2016, 1:01:25 AM
    Author     : Rayl
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <%@page import="java.sql.ResultSet"%>
        <%
            String q = "select distinct name from location";
            ResultSet rs = db.DBService.selectData(q);
            String cat = "select distinct catname from addcat";
            ResultSet rs1 = db.DBService.selectData(cat);
        %>
        <%@ include file="include/header.jsp" %>
        <%@ include file="include/left-menu.jsp" %>
        <%@ page import ="javax.servlet.http.*"%> 
        <% String transtype = request.getParameter("transtype");%>
        <% String proptype = request.getParameter("proptype"); %>
        <%PrintWriter p = response.getWriter();%>


        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">

        <meta name="author" content="">



        <title>Add Category</title>



        <!-- Bootstrap Core CSS -->

        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">



        <!-- MetisMenu CSS -->

        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">



        <!-- DataTables CSS -->

        <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">



        <!-- DataTables Responsive CSS -->

        <link href="bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">



        <!-- Custom CSS -->

        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <script src="ckeditor/ckeditor.js"></script>

        <!-- Custom Fonts -->

        <!--<script src="//tinymce.cachefly.net/4.2/tinymce.min.js"></script>
    
            <script>tinymce.init({selector:'textarea'});</script>-->

        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <script src="js/jquery-latest.js" type="text/javascript"></script>

        <script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>

        <script src="js/gen_validatorv4.js" type="text/javascript"></script>

        <script src="bower_components/jquery/dist/jquery.min.js"></script>

    </head>
    <body>
        <div id="page-wrapper">

            <div class="row">

                <div class="col-lg-12">

                    <h1 class="page-header">Manage Category</h1>

                </div>

                <!-- /.col-lg-12 -->

            </div>
            <div class="row">

                <div class="col-lg-12">

                    <div class="panel panel-default">
                        <div class="panel-body">


                            <div class="dataTable_wrapper">

                                <body>






                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                        <thead>

                                            <tr>

                                            <th colspan="4">Update Property &nbsp;  <a href="manage_property.php" class="btn btn-primary" style="float:right; margin:3px; margin-right:2%;"><i class="fa fa-chevron-circle-left"></i> Back</a></th>



                                            </tr>

                                            <form name="frmChange" action="EditProperty" method="post" >

                                                <tbody>

                                                    <input type="hidden" value="${param.id}" name="id">
                                                    <tr>

                                                    <td><label>Title &nbsp;<span style="color:#F00">*</span></label></td>

                                                    <td><input class="form-control" placeholder="Enter property title" name="title" value="<%= request.getParameter("title")%>"></td>
                                                    <td><label>Meta Tag Title<span style="color:#F00">*</span></label></td>

                                                    <td><input class="form-control" placeholder="Meta Tag Title" name="metatag" value="${param.metatag}"></td>



                                                    </tr>
                                                    <tr>

                                                    <td><label>Transaction Type<span style="color:#F00">*</span></label></td>
                                                    <% PrintWriter ou = response.getWriter();%>

                                                    <td><input  type="radio" value="sale" name="transtype" <%= (request.getParameter("transtype").equals("sale") ? "checked='checked'" : "")%>>Sell &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="radio" value="buy" name="transtype"<%= (request.getParameter("transtype").equals("buy") ? "checked='checked'" : "")%>>Buy &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="radio" value="rent" name="transtype" <%= (request.getParameter("transtype").equals("rent") ? "checked='checked'" : "")%>>Lease/Rent <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="radio" value="lease" name="transaction_type" <?php //if($propertyDetails['transaction_type']=="lease") echo 'checked="checked"'; ?>>Lease--></td>  <td><label>Floor</label></td>
                                                    <td><input class="form-control" placeholder="Floor" value="${param.floor}" name="floor"></td>
                                                    </tr>


                                                    <tr>

                                                    <td><label>Advertise<span style="color:#F00">*</span></label></td> 

                                                    <td colspan="3"><input  type="radio" value="Residential" name="advert" <%= (request.getParameter("advert").equals("Residential") ? "checked='checked'" : "")%>>Residential&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="radio" value="Commercial" name="advert" <%= (request.getParameter("advert").equals("Commercial") ? "checked='checked'" : "")%>>Commercial &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="radio" value="Agricultural" name="advert" <%= (request.getParameter("advert").equals("Agricultural") ? "checked='checked'" : "")%>>Agricultural &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="radio" value="Industrial" name="advert" <%= (request.getParameter("advert").equals("Industrial") ? "checked='checked'" : "")%>>Industrial</td>


                                                    </tr>

                                                    <tr>

                                                    <td><label>Property Type<span style="color:#F00">*</span></label></td>
                                                    <td>


                                                        <select name="proptype" class="form-control">

                                                            <option value="select">Select Properties</option>

                                                            <option value="1" <%= (request.getParameter("proptype").equals("1") ? "selected='selected'" : "")%>>Residential Flats Apartments</option>
                                                            <option value="2"<%= (request.getParameter("proptype").equals("2") ? "selected='selected'" : "")%>>Independent House Bungalow Villa</option>
                                                            <option value="3"<%= (request.getParameter("proptype").equals("3") ? "selected='selected'" : "")%>>Residential Land/Plot</option>
                                                            <option value="4" <%= (request.getParameter("proptype").equals("4") ? "selected='selected'" : "")%>>New Projects</option>
                                                            <option value="5" <%= (request.getParameter("proptype").equals("5") ? "selected='selected'" : "")%>>Independent/Builder Floor</option>
                                                            <option value="6" <%= (request.getParameter("proptype").equals("6") ? "selected='selected'" : "")%>>Farm House</option>
                                                            <option value="7" <%= (request.getParameter("proptype").equals("7") ? "selected='selected'" : "")%>>Service Apartment</option>
                                                            <option value="8" <%= (request.getParameter("proptype").equals("8") ? "selected='selected'" : "")%>>Studio Apartment</option>
                                                            <option value="9" <%= (request.getParameter("proptype").equals("9") ? "selected='selected'" : "")%>>Commercial Shops Showrooms</option>
                                                            <option value="10" <%= (request.getParameter("proptype").equals("10") ? "selected='selected'" : "")%>>Commercial Land/Inst. Land</option>
                                                            <option value="11" <%= (request.getParameter("proptype").equals("11") ? "selected='selected'" : "")%>>Space in Shopping Mall Complex</option>
                                                            <option value="12" <%= (request.getParameter("proptype").equals("12") ? "selected='selected'" : "")%>>Warehouse / Godown / Basement</option>
                                                            <option value="13" <%= (request.getParameter("proptype").equals("13") ? "selected='selected'" : "")%>>Commercial Office/Space</option>
                                                            <option value="14" <%= (request.getParameter("proptype").equals("14") ? "selected='selected'" : "")%>>Hotel/Resorts</option>
                                                            <option value="15" <%= (request.getParameter("proptype").equals("15") ? "selected='selected'" : "")%>>Guest-House/Banquet-Halls</option>
                                                            <option value="16" <%= (request.getParameter("proptype").equals("16") ? "selected='selected'" : "")%>>Institutional Land Plot</option>
                                                            <option value="17" <%= (request.getParameter("proptype").equals("17") ? "selected='selected'" : "")%>>Time Share</option>
                                                            <option value="18" <%= (request.getParameter("proptype").equals("18") ? "selected='selected'" : "")%>>Space in Retail Mall</option>
                                                            <option value="19" <%= (request.getParameter("proptype").equals("19") ? "selected='selected'" : "")%>>Office space in Business Park</option>
                                                            <option value="20" <%= (request.getParameter("proptype").equals("20") ? "selected='selected'" : "")%>>Office space in IT Park</option>
                                                            <option value="21" <%= (request.getParameter("proptype").equals("21") ? "selected='selected'" : "")%>>Ware House</option>
                                                            <option value="22" <%= (request.getParameter("proptype").equals("22") ? "selected='selected'" : "")%>>Industrial Lands/Plots</option>
                                                            <option value="23" <%= (request.getParameter("proptype").equals("23") ? "selected='selected'" : "")%>>Cold Storage</option>
                                                            <option value="24" <%= (request.getParameter("proptype").equals("24") ? "selected='selected'" : "")%>>Factory</option>
                                                            <option value="25" <%= (request.getParameter("proptype").equals("25") ? "selected='selected'" : "")%>>Manufacturing</option>
                                                            <option value="26" <%= (request.getParameter("proptype").equals("26") ? "selected='selected'" : "")%>>Agricultural Land/Farm Land</option>
                                                            <option value="27" <%= (request.getParameter("proptype").equals("27") ? "selected='selected'" : "")%>>Business center</option>

                                                            <option value="28" <%= (request.getParameter("proptype").equals("28") ? "selected='selected'" : "")%>>Farm House Land Plot</option>
                                                            <option value="29" <%= (request.getParameter("proptype").equals("29") ? "selected='selected'" : "")%>>Agricultural Farm Land Plot</option>

                                                            <option value="30" <%= (request.getParameter("proptype").equals("30") ? "selected='selected'" : "")%>>Factory / Shed /Manufacturing Site</option>
                                                            <option value="31" <%= (request.getParameter("proptype").equals("31") ? "selected='selected'" : "")%>>Industrial Land Plot</option>


                                                        </select>
                                                    </td>

                                                    <td><label>Location<span style="color:#F00">*</span></label></td> 

                                                    <td>
                                                        <select name="location" class="form-control">


                                                            <option value="${param.location}">${param.location}</option>
                                                            <%  while (rs.next()) { %>
                                                            <%
                                                                if (rs.getString("Name").equals(request.getParameter("location"))) {
                                                                    continue;
                                                                }%>


                                                            <option><%= rs.getString("Name")%></option>

                                                            <% } %>
                                                            <%//}%>
                                                        </select>

                                                    </td>


                                                    </tr>

                                                    <tr>

                                                    <td><label>Address</label></td>
                                                    <td colspan="3">
                                                        <textarea name="address" class="form-control" id="editor2">"${param.address}"</textarea>
                                                    </td>


                                                    </tr>
                                                    <tr>
                                                    <td><label>Category<span style="color:#F00">*</span></label></td> 
                                                    <td><select name="category" class="form-control">
                                                            <option value="${param.category}">${param.category}</option>
                                                            <%  while (rs1.next()) { %>
                                                            <%
                                                                if (rs1.getString("catname").equals(request.getParameter("catname"))) {
                                                                    continue;
                                                                }%>



                                                            <option><%= rs1.getString("catname")%></option>

                                                            <% } %>
                                                            <%//}%>
                                                        </select>


                                                    </td>
                                                    <td><label>Bed/BHK<span style="color:#F00">*</span></label></td> 

                                                    <td>
                                                        <select name="bhk_id" class="form-control">

                                                            <?php if(!empty($bhk)) { ?>
                                                            <option value="BHK">Select</option>
                                                            <?php foreach($bhk as $key=> $value) {  ?>

                                                            <option value="<?php echo $value['tbl_bhk']['id'] ?>" <?php if($propertyDetails['bhk_id']==$value['tbl_bhk']['id']) echo 'selected="selected"'; ?>><?php echo $value['tbl_bhk']['bhk'] ?></option>

                                                            <?php } ?> 

                                                            <?php } ?>
                                                        </select>

                                                    </td>


                                                    </tr>

                                                    <tr>

                                                    <td><label>Bathrooms<span style="color:#F00">*</span></label></td>

                                                    <td><select class="form-control" name="bathrooms">
                                                            <option value="">--Bathrooms--</option>

                                                            <?php for($i=1;$i<56;$i++) { ?>
                                                            <option value="<?php echo $i; ?>" <?php if($propertyDetails['bathrooms']==$i) echo 'selected="selected"'; ?>><?php echo $i; ?></option>
                                                            <?php } ?>
                                                            <option value="56+" <?php if($propertyDetails['bathrooms']=="56+") echo 'selected="selected"'; ?>><?php echo $i; ?> >56+</option>
                                                        </select>
                                                    </td>
                                                    <td><label>Furnished</label></td>

                                                    <td><select class="form-control" name="furnished">
                                                            <option value="select">${param.furnished}</option>
                                                            <option value="Furnished" <%= (request.getParameter("furnished").equals("Furnished") ? "selected='selected'" : "")%>> Furnished </option>
                                                            <option value="Unfurnished" <%= (request.getParameter("furnished").equals("Unfurnished") ? "selected='selected'" : "")%>> Unfurnished </option>
                                                            <option value="Semi-Furnished" <%= (request.getParameter("furnished").equals("Semi-Furnished") ? "selected='selected'" : "")%>> Semi-Furnished </option>
                                                        </select>
                                                    </td>

                                                    </tr>

                                                    <tr>

                                                    <td><label>Type of Ownership <span style="color:#F00">*</span></label></td>

                                                    <td><select class="form-control" name="typeofowner">
                                                            <option value="select">${param.typeofowner}</option>
                                                            <option value="Freehold" <%= (request.getParameter("typeofowner").equals("Freehold") ? "selected='selected'" : "")%>> Freehold </option>
                                                            <option value="Leasehold" <%= (request.getParameter("typeofowner").equals("Leasehold") ? "selected='selected'" : "")%>> Leasehold </option>
                                                            <option value="POA" <%= (request.getParameter("typeofowner").equals("POA") ? "selected='selected'" : "")%>> POA </option>
                                                            <option value="ReLease" <%= (request.getParameter("typeofowner").equals("ReLease") ? "selected='selected'" : "")%>>ReLease</option>
                                                            <option value="Co-operative Society" <%= (request.getParameter("typeofowner").equals("Co-operative Society") ? "selected='selected'" : "")%>> Co-operative Society </option>
                                                        </select>
                                                    </td>
                                                    <td><label>Built-up Area <span style="color:#F00">*</span></label></td>

                                                    <td><input type="text" name="buildarea"  class="form-control" value="${param.buildarea}">
                                                        <select name="bunit" >
                                                     
                                                            <option value="select">${param.bunit}</option>
                                                    
                                                            <option value="Sq-ft"<%= (request.getParameter("buildarea").equals("Sq-ft") ? "selected='selected'" : "")%> >Sq-ft</option>
                                                            <option value="Sq-m" <%= (request.getParameter("buildarea").equals("Sq-m") ? "selected='selected'" : "")%>>Sq-m</option>
                                                            <option value="Sq-yrd" <%= (request.getParameter("buildarea").equals("Sq-yrd") ? "selected='selected'" : "")%>>Sq-yrd</option>
                                                            <option value="Acre" <%= (request.getParameter("buildarea").equals("Acre") ? "selected='selected'" : "")%>>Acre</option>
                                                        </select>
                                                    </td>

                                                    </tr>
                                                    <tr>

                                                    <td><label>Plot Area <span style="color:#F00">*</span></label></td>

                                                    <td><input type="text" name="plotarea"  class="form-control" value="${param.plotarea}">
                                                        <select name="punit">
                                                            <option value="select">Unit</option>
                                                             <option value="Sq-ft"<%= (request.getParameter("plotarea").equals("Sq-ft") ? "selected='selected'" : "")%> >Sq-ft</option>
                                                            <option value="Sq-m" <%= (request.getParameter("plotarea").equals("Sq-m") ? "selected='selected'" : "")%>>Sq-m</option>
                                                            <option value="Sq-yrd" <%= (request.getParameter("plotarea").equals("Sq-yrd") ? "selected='selected'" : "")%>>Sq-yrd</option>
                                                            <option value="Acre" <%= (request.getParameter("plotarea").equals("Acre") ? "selected='selected'" : "")%>>Acre</option>
                                                        </select>
                                                    </td>
                                                    <td><label>Age of property <span style="color:#F00">*</span></label></td>

                                                    <td><input type="text" name="ageofprop"  class="form-control" value="${param.ageofprop}" placeholder="4 - 10 Years">

                                                    </td>

                                                    </tr>

                                                    <tr>

                                                    <td><label>Total Price(Rs)<span style="color:#F00">*</span></label></td>

                                                    <td><input type="text" name="totalprice" placeholder="30-40 LACS" class="form-control" value="${param.totalprice}"></td>

                                                    <td><label>Per Unit Price(Rs)<span style="color:#F00">*</span></label></td>

                                                    <td><input type="text" name="perunitprice" class="form-control" value="${param.perunitprice}"></td>



                                                    </tr>

                                                    <tr>

                                                    <td><label>Property Features</label></td>

                                                    <td><input type="text" name="propfeature" value="${param.propfeature}" class="form-control" ></td>

                                                    <td><label>Property Status<span style="color:#F00">*</span></label></td>

                                                    <td>
                                                        <select name="propstatus" class="form-control">

                                                            <option value="select">Select</option>
                                                            <option value="1" <%= (request.getParameter("propstatus").equals("1") ? "selected='selected'" : "")%>>Under Construction</option>
                                                            <option value="2" <%= (request.getParameter("propstatus").equals("2") ? "selected='selected'" : "")%>>Ready to Move</option>
                                                            <option value="3" <%= (request.getParameter("propstatus").equals("3") ? "selected='selected'" : "")%>>Brand New</option>
                                                            <option value="4" <%= (request.getParameter("propstatus").equals("4") ? "selected='selected'" : "")%>>Resale</option>
                                                        </select>

                                                    </td>

                                                    </tr>
                                                    <tr>
                                                    <td><label>Landmarks & Neighborhood<span style="color:#F00">*</span></label></td>

                                                    <td><input type="text" name="landmark" value="${param.landmark}" class="form-control" ></td>
                                                    <td><label>Image</label></td>

                                                    <td><input type="file" name="image"><img src="<?php echo $propertyDetails['image']; ?>" width="100" height="100" /></td>

                                                    </tr>
                                                    <tr>
                                                    <td><label>Map<span style="color:#F00">*</span></label></td>

                                                    <td colspan="3"><input type="text" name="map" value="${param.map}" class="form-control"></td>


                                                    </tr>

                                                    <tr>


                                                    <td><label>Brief Description<span style="color:#F00">*</span></label></td>

                                                    <td colspan="3"><textarea name="briefdesc" class="form-control" id="editor1">"${param.briefdesc}"</textarea></td>

                                                    </tr>
                                                    <tr>
                                                    <td><label>Releated Images</label></td>
                                                    <td colspan="3"><input type="file" name="images[]" multiple="multiple"></br>
                                                        <div class="extable" style="width:75%;float: left;">

                                                           
                                                            </div><?php } }?> 

                                                        </div>
                                                    </td>	

                                                    </tr>
                                                    <tr>


                                                    <td><label>Check to show home page</label></td>

                                                    <td><input type="checkbox" name="show_on_home" value="1" <?php if($propertyDetails['show_on_home']==1) echo 'checked="checked"'; ?>

                                                    </td>

                                                    </td>
                                                    <td><label>Status</label></td>

                                                    <td><select name="status" class="form-control">

                                                            <option value="0" <%= (request.getParameter("status").equals("0") ? "selected='selected'" : "")%>>Enable</option>

                                                            <option value="1" <%= (request.getParameter("status").equals("1") ? "selected='selected'" : "")%>>Disable</option>

                                                    </td>

                                                    </tr>
                                                    <tr>

                                                    <th colspan="4"><input type="submit" class="btn btn-primary" style="float:right;" name="updateProperty" value="Submit"></th>



                                                    </tr>

                                                </tbody>

                                            </form>

                                    </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script language="javascript" type="text/javascript">

                var frmvalidator = new Validator("frmChange");

                frmvalidator.addValidation("title", "req", "Please enter property title");
                frmvalidator.addValidation("meta_tag", "req", "Please enter meta tag title");
                frmvalidator.addValidation("property_type", "dontselect=select", "Please select property type");
                frmvalidator.addValidation("location_id", "dontselect=select", "Please select property location.");
                frmvalidator.addValidation("cat_id", "dontselect=select", "Please select category");
                frmvalidator.addValidation("bhk_id", "dontselect=select", "Please select bedroom/bhk");
                frmvalidator.addValidation("bathrooms", "dontselect=select", "Please select bathroom");
                frmvalidator.addValidation("furnished", "dontselect=select", "Please select furnished");
                frmvalidator.addValidation("property_ownership", "dontselect=select", "Please select property owner");
                frmvalidator.addValidation("built_area", "dontselect=select", "Please select built area");
                frmvalidator.addValidation("plot_area", "dontselect=select", "Please select plot area");
                frmvalidator.addValidation("age_of_property", "req", "Please enter age of property");
                frmvalidator.addValidation("price", "req", "Please enter price of property");
                frmvalidator.addValidation("unit_price", "req", "Please enter unit price of property");
                frmvalidator.addValidation("property_status", "dontselect=select", "Please select property status");
                frmvalidator.addValidation("landmark", "req", "Please enter landmark of property");

                frmvalidator.addValidation("map", "req", "Please enter map url of  property");
                frmvalidator.addValidation("pro_desc", "req", "Please enter description of  property");
            </script>

            <script>

                CKEDITOR.replace('editor1');

                CKEDITOR.replace('editor2');

            </script>
            <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>



            <!-- Metis Menu Plugin JavaScript -->

            <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>



            <!-- DataTables JavaScript -->

            <script src="bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

            <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>



            <!-- Custom Theme JavaScript -->

            <script src="dist/js/sb-admin-2.js"></script>



            <!-- Page-Level Demo Scripts - Tables - Use for reference -->

            <script>

                $(document).ready(function () {

                    $('#dataTables-example').DataTable({
                        responsive: true

                    });

                });

            </script>


    </body>
</html>
