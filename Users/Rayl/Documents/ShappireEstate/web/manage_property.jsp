<%-- 
    Document   : manage_property
    Created on : Jul 19, 2016, 10:12:06 AM
    Author     : DJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html lang="en">



<head>



    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">



    <title>MANAGE PROPERTY</title>



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

	<script type="text/javascript" language="javascript">

            function confirmDelete(Property_id)

            {



                if (confirm("Do you want delete this Property?"))

                    window.location = 'manage_property.jsp?action=delete&id=' + Property_id;

                else

                    return false;

            }

			

			function Enable(Property_id,value)

            {



                //if (confirm("Do you want enable this package?"))

                    window.location = 'manage_property.jsp?action=enabledisable&id=' + Property_id+'&value='+value;

                //else

                   // return false;

            }

			

			function Disable(Property_id,value)

            {



               

                    window.location = 'manage_property.jsp?action=enabledisable&id=' + Property_id+'&value='+value;

               

            }

			function confirmDeleteImage(imageId,PropertyId)

            {



               /* if (confirm("Do you want delete this Property image?"))*/

                    window.location = 'manage_property.jsp?deleteImage=delete&id=' + imageId+'&edit='+PropertyId;

              /*  else

                    return false;*/

            } confirmDeleteReleatedProperty

			

        </script>

        <script>

        function confirmDeleteReleatedProperty(releated_Property_id,Property_id)

            {



                

                    window.location = 'manage_property.jsp?rpID=delete&id=' + releated_Property_id+'&edit='+Property_id;

               

            }

        </script>

        <style>

			.extable{

					 width:100%;

					 float:left;

				 }

			.extable img{

					 width:100%;

					 margin-bottom:4px;

				 }

			.extable .smallbox{

					 width:170px;

					 float:left;

					 text-align:center;

					 margin-right:12px;

				 }

			.extable .smallbox label{

					  display:inline-block;

				 }

		</style>

        <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>

       

		  

</head>



<body>



    <div id="wrapper">



        <!-- Navigation -->

          <%@ include file="include/header.jsp" %>
    <%@ include file="include/left-menu.jsp" %>



        <div id="page-wrapper">

            <div class="row">

                <div class="col-lg-12">

                    <h1 class="page-header">Property</h1>

                </div>

                <!-- /.col-lg-12 -->

            </div>

            <!-- /.row -->

            <div class="row">

                <div class="col-lg-12">

                    <div class="panel panel-default">

                      

                        <!-- /.panel-heading -->

                        <?php

						

						 if(!isset($_REQUEST['add']) && !isset($_REQUEST['edit']) && !isset($_REQUEST['editImage']) )

							  {

						?>

                       <a href="add_property.jsp" class="btn btn-primary" style="float:right; margin:3px; margin-right:2%;"><i class="fa fa-plus-circle"></i> Add Property</a>

                        <?php } ?>

                        <div class="panel-body">

                            <div class="dataTable_wrapper">

                                <%@include file="view_property.jsp"%>
                            <?php

							 if(!isset($_REQUEST['add']) && !isset($_REQUEST['edit']) && !isset($_REQUEST['editImage']))

							  {

							  include('inc/view_property.php');

							  }

							  if(isset($_REQUEST['add']))

							  {

							  include('inc/add_property.php');

							  }

							  if(isset($_REQUEST['edit']) || isset($_REQUEST['editImage']))

							  {

							  include('inc/edit_property.php');

							  }

							  

							?>

                                

                            </div>

                            <!-- /.tabliie-responsive -->

                            

                        </div>

                        <!-- /.panel-body -->

                    </div>

                    <!-- /.panel -->

                </div>

                <!-- /.col-lg-12 -->

            </div>

           

        </div>

        <!-- /#page-wrapper -->



    </div>

    <!-- /#wrapper -->



    <!-- jQuery -->

    <script src="bower_components/jquery/dist/jquery.min.js"></script>



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
