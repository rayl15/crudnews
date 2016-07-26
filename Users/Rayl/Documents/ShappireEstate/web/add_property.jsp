

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <%@page import="java.sql.ResultSet"%>
    <%@page import ="javax.servlet.http.*"%>

    <head>
        <%
            String q="select distinct name from location";
            ResultSet rs;
            ResultSet rs1;
            rs=db.DBService.selectData(q);
            String cat = "select distinct catname from addcat";
            rs1 = db.DBService.selectData(cat);
        %>
         

        <%@ include file="include/header.jsp" %>
        <%@ include file="include/left-menu.jsp" %>


        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">

        <meta name="author" content="">






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

                    <h1 class="page-header">Add Property</h1>

                </div>

                <!-- /.col-lg-12 -->

            </div>
            <div class="row">

                <div class="col-lg-12">

                    <div class="panel panel-default">
                        <div class="panel-body">


                            <div class="dataTable_wrapper">

                                <!--?php $location = $terastate->select(array('table' => 'tbl_location', 'fields' => '*','condition'=>'status = 0'));?>
                                                                
                        <?php $categoryExits = $terastate->select(array('table' => 'tbl_category', 'fields' => '*','condition'=>'status = 0'));?>
                        
                        <?php $bhk = $terastate->select(array('table' => 'tbl_bhk', 'fields' => '*','condition'=>'status = 0'));?-->

                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                    <thead>

                                        <tr>

                                            <th colspan="4">Add Property &nbsp; <!--?php echo '<span style="color:green">'.$msg.'</span>';?-->  <a href="manage_property.jsp" class="btn btn-primary" style="float:right; margin:3px; margin-right:2%;"><i class="fa fa-chevron-circle-left"></i> Back</a></th>



                                        </tr>

                                    <form name="frmChange" action="addprop" method="post" enctype="multipart/form-data">

                                        <tbody>

                                            <tr>

                                                <td><label>Title &nbsp;<span style="color:#F00">*</span></label></td>

                                                <td><input class="form-control" placeholder="Enter property title" name="title"></td>
                                                <td><label>Meta Tag Title<span style="color:#F00">*</span></label></td>

                                                <td><input class="form-control" placeholder="Meta Tag Title" name="metatag"></td>



                                            </tr>
                                            <tr>

                                                <td><label>Transaction Type<span style="color:#F00">*</span></label></td>

                                                <td><input  type="radio" value="sale" name="transtype">Sell &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="radio" value="buy" name="transtype">Buy &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="radio" value="rent" name="transtype">Lease/Rent <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="radio" value="lease" name="transaction_type">Lease--></td>

                                                <td><label>Floor</label></td>
                                                <td><input class="form-control" placeholder="floor" name="floor"></td>

                                            </tr>

                                            <tr>

                                                <td><label>Advertise<span style="color:#F00">*</span></label></td> 

                                                <td colspan="3"><input  type="radio" value="Residential" name="advert">Residential&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="radio" value="Commercial" name="advertise">Commercial &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="radio" value="Agricultural" name="advertise">Agricultural &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="radio" value="Industrial" name="advertise">Industrial</td>


                                            </tr>

                                            <tr>

                                                <td><label>Property Type<span style="color:#F00">*</span></label></td>
                                                <td>

                                                    <select name="proptype" class="form-control">
                                                        <option value="select">Select Properties</option>
                                                        <option value="1">Residential Flats Apartments</option>
                                                        <option value="2">Independent House Bungalow Villa</option>
                                                        <option value="3">Residential Land/Plot</option>
                                                        <option value="4">New Projects</option>
                                                        <option value="5">Independent/Builder Floor</option>
                                                        <option value="6">Farm House</option>
                                                        <option value="7">Service Apartment</option>
                                                        <option value="8">Studio Apartment</option>
                                                        <option value="9">Commercial Shops Showrooms</option>
                                                        <option value="10">Commercial Land/Inst. Land</option>
                                                        <option value="11">Space in Shopping Mall Complex</option>
                                                        <option value="12">Warehouse / Godown / Basement</option>
                                                        <option value="13">Commercial Office/Space</option>
                                                        <option value="14">Hotel/Resorts</option>
                                                        <option value="15">Guest-House/Banquet-Halls</option>
                                                        <option value="16">Institutional Land Plot</option>
                                                        <option value="17">Time Share</option>
                                                        <option value="18">Space in Retail Mall</option>
                                                        <option value="19">Office space in Business Park</option>
                                                        <option value="20">Office space in IT Park</option>
                                                        <option value="21">Ware House</option>
                                                        <option value="22">Industrial Lands/Plots</option>
                                                        <option value="23">Cold Storage</option>
                                                        <option value="24">Factory</option>
                                                        <option value="25">Manufacturing</option>
                                                        <option value="26">Agricultural Land/Farm Land</option>
                                                        <option value="27">Business center</option>

                                                        <option value="28">Farm House Land Plot</option>
                                                        <option value="29">Agricultural Farm Land Plot</option>

                                                        <option value="30">Factory / Shed /Manufacturing Site</option>
                                                        <option value="31">Industrial Land Plot</option>

                                                    </select>
                                                </td>

                                                <td><label>Location<span style="color:#F00">*</span></label></td> 

                                                <td>
                                                    <select name="location" class="form-control">

                                                        <%//if(rs.next()) { %>
                                                        <option>--Select Location--</option>
                                                        <%  while(rs.next()){ %>
                                                        <option><%= rs.getString("Name")%></option>
                                                        <% } %>
                                                        <%//}%>



                                                        <!--option>Yet's no location avaiable</option-->

                                                    </select>

                                                </td>


                                            </tr>

                                            <tr>

                                                <td><label>Address</label></td>
                                                <td colspan="3">
                                                    <textarea name="address" class="form-control" id="editor2"></textarea>
                                                </td>


                                            </tr>
                                            <tr>
                                                <td><label>Category<span style="color:#F00">*</span></label></td> 
                                                <td><select name="category" class="form-control">


                                                        <option>--Select Category--</option>

                                                        <%while(rs1.next()){ %>
                                                        <option><%= rs1.getString("catname")%></option>
                                                        <% }%>




                                                        

                                                    </select>

                                                </td>
                                                <td><label>Bed/BHK<span style="color:#F00">*</span></label></td> 

                                                <td>
                                                    <select name="bedbhk" class="form-control">

                                                        <?php if(!empty($bhk)) { ?>
                                                        <option value="select">Select</option>
                                                        <?php foreach($bhk as $key=> $value) {  ?>

                                                        <option value="<?php echo $value['tbl_bhk']['id'] ?>"><?php echo $value['tbl_bhk']['bhk'] ?></option>

                                                        <?php } ?> 

                                                        <?php } ?>
                                                    </select>

                                                </td>


                                            </tr>

                                            <tr>

                                                <td><label>Bathrooms<span style="color:#F00">*</span></label></td>

                                                <td><select class="form-control" name="bathroom">
                                                        <option value="select">--Bathrooms--</option>

                                                        <?php for($i=1;$i<56;$i++) { ?>
                                                        <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                                                        <?php } ?>
                                                        <option value="56+">56+</option>
                                                    </select>
                                                </td>
                                                <td><label>Furnished</label></td>

                                                <td><select class="form-control" name="furnished">
                                                        <option value="select">---Furnish---</option>
                                                        <option value="Furnished"> Furnished </option>
                                                        <option value="Unfurnished"> Unfurnished </option>
                                                        <option value="Semi-Furnished"> Semi-Furnished </option>
                                                    </select>
                                                </td>

                                            </tr>

                                            <tr>

                                                <td><label>Type of Ownership <span style="color:#F00">*</span></label></td>

                                                <td><select class="form-control" name="typeofowner">
                                                        <option value="select">---Type of Ownership---</option>
                                                        <option value="Freehold"> Freehold </option>
                                                        <option value="Leasehold"> Leasehold </option>
                                                        <option value="POA"> POA </option>
                                                        <option value="ReLease">ReLease</option>
                                                        <option value="Co-operative Society"> Co-operative Society </option>
                                                    </select>
                                                </td>
                                                <td><label>Built-up Area <span style="color:#F00">*</span></label></td>

                                                <td><input type="text" name="buildarea"  class="form-control">
                                                    <select name="bunit" >
                                                        <option value="select">Unit</option>
                                                        <option value="Sq-ft">Sq-ft</option>
                                                        <option value="Sq-m">Sq-m</option>
                                                        <option value="Sq-yrd">Sq-yrd</option>
                                                        <option value="Acre">Acre</option>
                                                    </select>
                                                </td>

                                            </tr>
                                            <tr>

                                                <td><label>Plot Area <span style="color:#F00">*</span></label></td>

                                                <td><input type="text" name="plotarea"  class="form-control">
                                                    <select name="punit">
                                                        <option value="select">Unit</option>
                                                        <option value="Sq-ft">Sq-ft</option>
                                                        <option value="Sq-m">Sq-m</option>
                                                        <option value="Sq-yrd">Sq-yrd</option>
                                                        <option value="Acre">Acre</option>
                                                    </select>
                                                </td>
                                                <td><label>Age of property <span style="color:#F00">*</span></label></td>

                                                <td><input type="text" name="ageofprop"  class="form-control" placeholder="4 - 10 Years">

                                                </td>

                                            </tr>

                                            <tr>

                                                <td><label>Total Price(Rs)<span style="color:#F00">*</span></label></td>

                                                <td><input type="text" name="totalprice" placeholder="30-40 LACS" class="form-control"></td>

                                                <td><label>Per Unit Price(Rs)<span style="color:#F00">*</span></label></td>

                                                <td><input type="text" name="perunitprice" class="form-control"></td>



                                            </tr>

                                            <tr>

                                                <td><label>Property Features</label></td>

                                                <td><input type="text" name="propfeature" value="" class="form-control"></td>

                                                <td><label>Property Status<span style="color:#F00">*</span></label></td>

                                                <td>
                                                    <select name="propstatus" class="form-control">

                                                        <option value="select">Select</option>
                                                        <option value="1">Under Construction</option>
                                                        <option value="2">Ready to Move</option>   
                                                        <option value="3">Brand New</option>
                                                        <option value="4">Resale</option>

                                                    </select>

                                                </td>

                                            </tr>
                                            <tr>
                                                <td><label>Landmarks & Neighborhood<span style="color:#F00">*</span></label></td>

                                                <td><input type="text" name="landmark" value="" class="form-control"></td>
                                                <td><label>Image<span style="color:#F00">*</span></label></td>

                                                <td><input type="file" name="image"></td>

                                            </tr>
                                            <tr>
                                                <td><label>Map<span style="color:#F00">*</span></label></td>

                                                <td colspan="3"><input type="text" name="map" placeholder="http:\\www.google.com/g?noida" class="form-control"></td>


                                            </tr>

                                            <tr>


                                                <td><label>Brief Description<span style="color:#F00">*</span></label></td>

                                                <td colspan="3"><textarea name="briefdesc" class="form-control" id="editor1"></textarea></td>

                                            </tr>
                                            <tr>


                                                <td><label>Releated Image</label></td>

                                                <td colspan="3"><input type="file" name="relatedimage" multiple="multiple"></td>

                                            </tr>
                                            <tr>


                                                <td><label>Check to show home page</label></td>

                                                <td><input type="checkbox" name="show_on_home">

                                                </td>

                                                </td>
                                                <td><label>Status</label></td>

                                                <td><select name="status" class="form-control">

                                                        <option value="0">Enable</option>

                                                        <option value="1">Disable</option>

                                                </td>

                                            </tr>
                                            <tr>

                                                <th colspan="4"><input type="submit" class="btn btn-primary" style="float:right;" name="addProperty" value="Submit"></th>



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

    </body>
</html>
