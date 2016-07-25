<%-- 
    Document   : include
    Created on : Jul 18, 2016, 3:28:08 PM
    Author     : DJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

            <div class="navbar-header">

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">

                    <span class="sr-only">Toggle navigation</span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                </button><div id="logo"><a class="navbar-brand" href="dashboard.jsp" style="color:#fff;"><?php  echo SITE_TITLE;?></a></div>

                

            </div>

            <!-- /.navbar-header -->



            <ul class="nav navbar-top-links navbar-right">

                

                     <li class="dropdown">

                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">

                        <i class="fa fa-user fa-fw" style="color:#fff;"></i>  <i class="fa fa-caret-down" style="color:#fff;"></i>

                    </a>

                    <ul class="dropdown-menu dropdown-user">

                        <!--<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>

                        </li>

                       -->

                        <li class="divider"></li>

                        <li><a href="logout.php?logout=Success"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

                        </li>

                    </ul>

                    <!-- /.dropdown-user -->

                </li>

                <!-- /.dropdown -->

            </ul>

            <!-- /.navbar-top-links -->

            

           

        </nav>