<%-- 
    Document   : index
    Created on : Jul 18, 2016, 3:22:38 PM
    Author     : DJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>




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



    <title>Dashboard</title>



    <!-- Bootstrap Core CSS -->

    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">



    <!-- MetisMenu CSS -->

    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">



    <!-- Timeline CSS -->

    <link href="dist/css/timeline.css" rel="stylesheet">



    <!-- Custom CSS -->

    <link href="dist/css/sb-admin-2.css" rel="stylesheet">



    <!-- Morris Charts CSS -->

    <link href="bower_components/morrisjs/morris.css" rel="stylesheet">



    <!-- Custom Fonts -->

    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	

</head>



<body>



    <div id="wrapper">



       

      <!--?php //$TotalMember = $terastate->countRows(array('table' => 'users','condition' => 'status=0 AND member_type = 0')); ?>

       

        <!-- Navigation -->

        <!--?php include('include/header.php'); ?-->

        <!--?php $buyProperty = $terastate->countRows(array('table' => 'tbl_property','condition'=>'cat_id = 1')); ?-->

        <!--?php $sellProperty = $terastate->countRows(array('table' => 'tbl_property','condition'=>'cat_id = 2'));?-->

        <!--?php $collaboration = $terastate->countRows(array('table' => 'tbl_property','condition'=>'cat_id = 3')); ?-->

		<!--?php $leaseRent = $terastate->countRows(array('table' => 'tbl_property','condition' => 'cat_id = 4')); ?-->
        
        <!--?php $bungalows = $terastate->countRows(array('table' => 'tbl_property','condition' => 'cat_id = 5')); ?-->

       
        <div id="page-wrapper">

            <div class="row">

                <div class="col-lg-12">

                    <h1 class="page-header">Dashboard</h1>

                </div>

                <!-- /.col-lg-12 -->

            </div>

            <!-- /.row -->

            <div class="row">

                <div class="col-lg-3 col-md-6">

                    <div class="panel panel-primary">

                        <div class="panel-heading">

                            <div class="row">

                                <div class="col-xs-3">

                                    <i class="fa"></i>

                                </div>

                                <div class="col-xs-9 text-right">

                                    <div class="huge"><!--?php if(empty($buyProperty)) echo "0"; else echo $buyProperty;?--></div>

                                    <div>Buy</div>

                                </div>

                            </div>

                        </div>

                        <a href="#">

                            <div class="panel-footer">

                                <span class="pull-left">View Details</span>

                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                <div class="clearfix"></div>

                            </div>

                        </a>

                    </div>

                </div>

                <div class="col-lg-3 col-md-6">

                    <div class="panel panel-green">

                        <div class="panel-heading">

                            <div class="row">

                                <div class="col-xs-3">

                                    <i class="fa"></i>

                                </div>

                                <div class="col-xs-9 text-right">

                                    <div class="huge"><!--?php if(empty($sellProperty)) echo "0"; else echo $sellProperty;?--></div>

                                    <div>Sell</div>

                                </div>

                            </div>

                        </div>

                        <a href="#">

                            <div class="panel-footer">

                                <span class="pull-left">View Details</span>

                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                <div class="clearfix"></div>

                            </div>

                        </a>

                    </div>

                </div>

                <div class="col-lg-3 col-md-6">

                    <div class="panel panel-yellow">

                        <div class="panel-heading">

                            <div class="row">

                                <div class="col-xs-3">

                                    <i class="fa fa  fa-5x"></i>

                                </div>

                                <div class="col-xs-9 text-right">

                                    <div class="huge"><!--?php if(empty($collaboration)) echo "0"; else echo $collaboration;?--></div>

                                    <div>Collaboration</div>

                                </div>

                            </div>

                        </div>

                        <a href="#">

                            <div class="panel-footer">

                                <span class="pull-left">View Details</span>

                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                <div class="clearfix"></div>

                            </div>

                        </a>

                    </div>

                </div>

                <div class="col-lg-3 col-md-6">

                    <div class="panel panel-red">

                        <div class="panel-heading">

                            <div class="row">

                                <div class="col-xs-3">

                                    <i class="fa"></i>

                                </div>

                                <div class="col-xs-9 text-right">

                                    <div class="huge"><!--?php if(empty($leaseRent)) echo "0"; else echo $leaseRent;?--></div>

                                    <div>Lease / Rent</div>

                                </div>

                            </div>

                        </div>

                        <a href="#">

                            <div class="panel-footer">

                                <span class="pull-left">View Details</span>

                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                <div class="clearfix"></div>

                            </div>

                        </a>

                    </div>

                </div>
                
                <div class="col-lg-3 col-md-6">

                    <div class="panel panel-red">

                        <div class="panel-heading">

                            <div class="row">

                                <div class="col-xs-3">

                                    <i class="fa"></i>

                                </div>

                                <div class="col-xs-9 text-right">

                                    <div class="huge"><!--?php if(empty($bungalows)) echo "0"; else echo $bungalows;?--></div>

                                    <div>Bungalows</div>

                                </div>

                            </div>

                        </div>

                        <a href="#">

                            <div class="panel-footer">

                                <span class="pull-left">View Details</span>

                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                <div class="clearfix"></div>

                            </div>

                        </a>

                    </div>

                </div>
                
                

            </div>
<!--?php $allEnquiery = $terastate->select(array('table' => 'tbl_enquiery', 'fields' => '*','condition'=>'status=0','order'=>'id DESC','limit'=>'10')); ?-->
           <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-credit-card  fa-fw"></i> Top 10 Enquiery 
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div id="morris-area-chart">
                           
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                   <thead>

                                        <tr>

										<th>Name</th><th>Email</th><th>Contact</th><th>Subject</th>
                                        
                                        </tr>

                                    <tbody>

                              <!--?php if(!empty($allEnquiery)) { ?-->
                              
                              
                                   <!--?php foreach($allEnquiery as $key=> $value) { ?-->
                                        <tr>

                                            <td><!--?php echo  $value['tbl_enquiery']['name']; ?--></td><td><!--?php echo  $value['tbl_enquiery']['email']; ?--></td>
                                            <td><!--?php echo  $value['tbl_enquiery']['contact']; ?--></td><td><!--?php echo  $value['tbl_enquiery']['subject']; ?--></td>
                                        </tr-->
                                  <!--?php } } else {?-->     
                                  
                                  <tr><td colspan="4">Yet's till now no enquiery.</td></tr> 
                                  <!--?php } ?-->
                                 
                                 </tbody>

                                </table>
                              
                              
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-credit-card  fa-fw"></i> Top 10 Report
                           
                        </div>
                        <!-- /.panel-heading -->
   <!--?php $allReport = $terastate->select(array('table' => 'tbl_report', 'fields' => '*','condition'=>'status=0','order'=>'id DESC','limit'=>'10')); ?-->

                        <div class="panel-body">
                            
                                    <div id="morris-bar-chart"> 
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                   <thead>

                                        <tr>

										<th>Property</th><th>Name</th><th>Email</th><th>Contact</th><th>Subject</th>
                                        
                                        </tr>

                                    <tbody>

                              <!--?php if(!empty($allReport)) { ?-->
                              
                              
                                   <!--?php foreach($allReport as $key=> $value) { ?-->
                                        <tr>

                                            <td><!--?php echo  $value['tbl_report']['property_name']; ?--></td>
                                            <td><!--?php echo  $value['tbl_report']['name']; ?--></td><td><!--?php echo  $value['tbl_report']['email']; ?--></td>
                                            <td><!--?php echo  $value['tbl_report']['contact']; ?--></td><td><!--?php echo  $value['tbl_report']['subject']; ?--></td>
																			
                                        </tr>
                                  <!--?php } } else {?-->     
                                  
                                  <tr><td colspan="4">Yet's till now no report for property.</td></tr> 
                                  <!--?php } ?-->
                                 
                                 </tbody>

                                </table>
                                    </div>
                                    
                                
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-8 -->
                <div class="col-lg-4">
 <!--?php $allTestimonials = $terastate->select(array('table' => 'tbl_testimonials', 'fields' => '*')); ?-->
                   
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-th-list  fa-fw"></i> Testimonials
                        </div>
                        <div class="panel-body">
                            <div id="morris-donut-chart">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">





                                    <thead>

                                        <tr>

                                            <th>Title</th>
                                            
                                            <th>Image</th>

                                            <!--<th>Description</th>-->

                                           

                                        </tr>

                                    </thead>

                                    <tbody>

                                    

                                        <!--?php if(!(empty($allTestimonials))) { ?-->

                                    <!--?php foreach($allTestimonials as $key => $value)  {  ?-->

                                    

                                        <tr class="odd gradeX">

   							

                                            <td><!--?php echo $value['tbl_testimonials']['title']; ?--></td>

                                            <td><img src="<!--?php echo $value['tbl_testimonials']['image']; ?-->" alt="<!--?php echo $value['tbl_testimonials']['title']; ?-->" title="<!--?php echo $value['tbl_testimonials']['title']; ?-->" width="50" height="50" /></td>
                                            
                                            <td><!--?php echo $value['tbl_testimonials']['testi_desc']; ?--></td>

                                        </tr>

                                       <!--?php } } else { ?-->

                                       

                                       <tr class="odd gradeX">

                                            <td>Yet's no testimonials</td><td></td><td></td>

                                        </tr>

                                       <!--?php } ?-->

                                       

                                    </tbody>

                                </table>
                              
                            </div>
                            <a href="#" class="btn btn-default btn-block">View Details</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
                    <!-- /.panel .chat-panel -->
                </div>
                <!-- /.col-lg-4 -->
            </div>
        </div>

        <!-- /#page-wrapper -->



    </div>

    <!--?php   ?-->

    <!-- /#wrapper -->



    <!-- jQuery -->

    <script src="bower_components/jquery/dist/jquery.min.js"></script>



    <!-- Bootstrap Core JavaScript -->

    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>



    <!-- Metis Menu Plugin JavaScript -->

    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>



    <!-- Morris Charts JavaScript -->

    <script src="bower_components/raphael/raphael-min.js"></script>

    <script src="bower_components/morrisjs/morris.min.js"></script>

   

    <!-- Custom Theme JavaScript -->

    <script src="dist/js/sb-admin-2.js"></script>



</body>

</html>

