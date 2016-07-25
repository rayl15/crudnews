<%-- 
    Document   : manage_categories
    Created on : Jul 18, 2016, 3:37:26 PM
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



    <title>Shappire Estate</title>



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

            function confirmDelete(catId)

            {



                if (confirm("Do you want delete this category?"))

                    window.location = 'manage_categories.jsp?action=delete&id=' + catId;

                else

                    return false;

            }

			

			function Enable(catId,value)

            {



                //if (confirm("Do you want enable this package?"))

                    window.location = 'manage_categories.jsp?action=enabledisable&id=' + catId+'&value='+value;

                //else

                   // return false;

            }

			

			function Disable(catId,value)

            {



                //if (confirm("Do you want disable this package?"))

                    window.location = 'manage_categories.jsp?action=enabledisable&id=' + catId+'&value='+value;

                //else

                    //return false;

            }

			

        </script>

        

        <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>

		  <script type="text/javascript">

          $(document).ready(function () {

        

            $("#cat_name").blur(function () {

              var cat_name = $(this).val();

             

			  if (cat_name == '') {

                $("#availability").html("");

              }

              else{

                $.ajax({

                  url: "checkCatName.php?cat_name="+cat_name

                }).done(function( data ) {

                  $("#availability").html(data);

                });   

              } 

            });

          });

        </script>

        <style>

		

		.green{color: green;}

		.red{color: red;}

	    </style>

		  

</head>



<body>



    <div id="wrapper">



        <!-- Navigation -->

     



        <div id="page-wrapper">

            <div class="row">

                <div class="col-lg-12">

                    <h1 class="page-header">Manage Category</h1>

                </div>

                <!-- /.col-lg-12 -->

            </div>

            <!-- /.row -->

            <div class="row">

                <div class="col-lg-12">

                    <div class="panel panel-default">

                      

                        <!-- /.panel-heading -->

                        <?php

						

						 if(!isset($_REQUEST['add']) && !isset($_REQUEST['edit']))

							  {

						?>

                       <a href="add_category.jsp" class="btn btn-primary" style="float:right; margin:3px; margin-right:2%;"><i class="fa fa-plus-circle"></i> Add Category</a>

                        

                        <div class="panel-body">

                            <div class="dataTable_wrapper">
                                
                                <!--% String add="";
                                String edit="";
                                    if(add.equals("Add_Category")){
                                response.sendRedirect("inc/add_category.jsp");
                                }
                                    if(edit.equals("edit")){
                                    response.sendRedirect("edit_category.jsp");
                                    }
                                %-->
                                <%@include file="view_category.jsp" %>

                            <!--?php

							 if(!isset($_REQUEST['add']) && !isset($_REQUEST['edit']))

							  {

							  include('inc/view_category.php');

							  }

							  if(isset($_REQUEST['add']))

							  {

							  include('inc/add_category.php');

							  }

							  if(isset($_REQUEST['edit']))

							  {

							  include('inc/edit_category.php');

							  }

							  

							?-->

                                

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

