<%-- 
    Document   : addlocation
    Created on : Jul 18, 2016, 9:59:56 PM
    Author     : DJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">



<head>
<%@ include file="include/header.jsp" %>
    <%@ include file="include/left-menu.jsp" %>


    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">



    <title>ADD LOCATION</title>



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

                    <h1 class="page-header">Add Location</h1>

                </div>

                <!-- /.col-lg-12 -->

            </div>
        <div class="row">

                <div class="col-lg-12">

                    <div class="panel panel-default">
    <div class="panel-body">
        

        <div class="dataTable_wrapper">

<table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                   <thead>

                                        <tr>

                                            <th colspan="4">Add Location <a href="manage_locations.jsp" class="btn btn-primary" style="float:right; margin:3px; margin-right:2%;"><i class="fa fa-chevron-circle-left"></i> Back </a></th>

                                           

                                        </tr>

                                    <form name="frmChange" action="addloc" method="post">

                                    <tbody>

                                        <tr>

                                            <td><label>Name &nbsp;<span style="color:#F00">*</span><div id="availability"></div></label></td>

                                            <td><input class="form-control" placeholder="Enter location" name="name" id="cat_name"></td>

                                            

                                        </tr>
                                        
                                        <!--<tr>

                                            <td><label>Map</label></td>

                                            <td><input class="form-control" placeholder="Map" name="map" value=""></td>

                                            

                                        </tr>
                                        
                                        <tr>

                                            <td><label>Code</label></td>

                                            <td><input class="form-control" placeholder="Code" name="code" value=""></td>

                                            

                                        </tr>-->
                                        
                                        

                                   

										<tr>

                                            <td><label>Meta Tag<span style="color:#F00">*</span></label></td>

                                            <td><input class="form-control" placeholder="Meta Tag Title" name="metaTag"></td>

                                            

                                        </tr>
                                        
                                        <tr>

                                            <td><label>Meta Keyword</label></td>

                                            <td><input class="form-control" placeholder="Meta Keyword" name="metaKeyword" value=""></td>

                                            

                                        </tr>
                                        
                                        
                                        
                                        <tr>

                                            <td><label>Meta Description<span style="color:#F00">*</span></label></td>

                                            <td><textarea class="form-control" id="editor1" placeholder="Meta Description" name="metaDesc"></textarea></td>

                                            

                                        </tr>

									

										<tr>

                                            <td><label>Status</label></td>

                                            <td><select name="status" class="form-control">

											<option value="0">Enable</option>

											<option value="1">Disable</option>

											</td>

                                            

                                        </tr>

                                     

                                       <tr>

                                       <th colspan="4"><input type="submit" class="btn btn-primary" style="float:right;" name="addLocation" value="Submit"></th>

                                           

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
									frmvalidator.addValidation("meta_tag","req","Please enter meta tag title");

								

							   </script>

                               <script>

									CKEDITOR.replace( 'editor1' );

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

    $(document).ready(function() {

        $('#dataTables-example').DataTable({

                responsive: true

        });

    });

    </script>



</body>



</html>
