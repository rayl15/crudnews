<%-- 
    Document   : edit_location
    Created on : Jul 20, 2016, 11:53:12 AM
    Author     : Rayl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<%@ include file="include/header.jsp" %>
    <%@ include file="include/left-menu.jsp" %>


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

                                            <th colspan="4">Update Locations &nbsp;  <a href="manage_locations.php" class="btn btn-primary" style="float:right; margin:3px; margin-right:2%;"><i class="fa fa-chevron-circle-left"></i> Back</a></th>

                                           

                                        </tr>

                                    <form name="frmChange" action="EditLocation" method="post">

                                    <tbody>

                                        <tr>

                                            <td><label>Name &nbsp;<span style="color:#F00">*</span><div id="availability"></div></label></td>

                                            <td><input class="form-control" placeholder="Enter location name" name="name" value="${param.id}" id="cat_name" ></td>

                                            

                                        </tr>
                                        <tr>

                                            <td><label>Meta Tag Title<span style="color:#F00">*</span></label></td>

                                            <td><input class="form-control" placeholder="Meta Tag Title" name="metatag" value="${param.t}"></td>

                                            

                                        </tr>
											<input type="hidden" name="id" value="${param.pri}">
                                            
                                           <!-- <tr>

                                            <td><label>Map</label></td>

                                            <td><input class="form-control" placeholder="Map" name="map" value="<?php echo $location['map'] ?>"></td>

                                            

                                        </tr>
                                        
                                        <tr>

                                            <td><label>Code</label></td>

                                            <td><input class="form-control" placeholder="Code" name="code" value="<?php echo $location['code'] ?>"></td>

                                            

                                        </tr>-->
                                    

										
                                       <tr>

                                            <td><label>Meta Keyword<span style="color:#F00">*</span></label></td>

                                            <td><input class="form-control" placeholder="Meta Keyword" name="metakey" value="${param.key}"></td>

                                            

                                        </tr>
                                        
                                        <tr>

                                            <td><label>Meta Description<span style="color:#F00">*</span></label></td>

                                            <td><textarea class="form-control" id="editor1" placeholder="Meta Description" name="metadesc">${param.rd}</textarea></td>

                                            

                                        </tr>
                                        

										

										<tr>

                                            <td><label>Status<span style="color:#F00">*</span></label></td>

                                            <td><select name="status" class="form-control">

											<option value="0">Enable</option>

											<option value="1">Disable</option>

											</td>

                                            

                                        </tr>

                                     

                                       <tr>

                                       <th colspan="4"><input type="submit" class="btn btn-primary" style="float:right;" name="updateLocation" value="Submit"></th>

                                           

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

									var frmvalidator  = new Validator("frmChange");

									frmvalidator.addValidation("name","req","Please enter location");
									frmvalidator.addValidation("metatag","req","Please enter meta tag title");
                                                                        frmvalidator.addValidation("metakey","req","Please enter metakeyword");
									frmvalidator.addValidation("editor1","req","Please enter meta description");
								
								

							   </script>

                               <script>

									CKEDITOR.replace( 'editor1' );

								</script>
                                                            <!-- Bootstrap Core JavaScript -->

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

    $(document).ready(function() {

        $('#dataTables-example').DataTable({

                responsive: true

        });

    });

    </script>



</body>

</html>
