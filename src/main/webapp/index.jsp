<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Parqueadero</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="robots" content="all,follow">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontastic.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
        <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
        <link rel="stylesheet" href="css/custom.css">
        <link rel="shortcut icon" href="img/favicon.ico">
    </head>
    <body>
        <div class="page">
            <!-- Main Navbar-->
            <header class="header">
                <nav class="navbar" style="padding-bottom: 0px !important;padding-top: 7px">

                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between" >
                            <!-- Navbar Header-->
                            <div class="navbar-header">
                                <!-- Navbar Brand --><a href="login.jsp" class="navbar-brand d-none d-sm-inline-block">
                                    <div class="brand-text d-none d-lg-inline-block"><img width="100px"src="img/Logo.png"></div>
                                    <!--<div class="brand-text d-none d-lg-inline-block"><span>Bootstrap </span><strong>Dashboard</strong></div>-->
                                    <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                            </div>
                            <!-- Navbar Menu -->
                            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">

                                <!-- Notifications-->
                                <!--                                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                                                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                                                                    <div class="notification-time"><small>4 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                                                    <div class="notification-time"><small>4 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                                                                    <div class="notification-time"><small>4 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                                                <div class="notification">
                                                                                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                                                    <div class="notification-time"><small>10 minutes ago</small></div>
                                                                                </div></a></li>
                                                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
                                                                    </ul>
                                                                </li>-->

                                <!-- Languages dropdown    -->

                                <!-- Logout    -->
                                <li class="nav-item"><a href="#" class="nav-link logout"> <span class="d-none d-sm-inline">Cerrar sesion</span><i class="fa fa-sign-out"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="page-content d-flex align-items-stretch"> 
                <!-- Side Navbar -->
                <nav class="side-navbar">
                    <!-- Sidebar Header-->
                    <div class="sidebar-header d-flex align-items-center">
                        <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title">
                            <h1 class="h4"><c:out value="${user}" /></h1>
                            <p>Administrador</p>
                        </div>
                    </div>
                    <!-- Sidebar Navidation Menus--><span class="heading">Menu</span>
                    <ul class="list-unstyled">
                        <li class="active"><a href="index.html"> <i class="icon-home"></i>Iinicio </a></li>
                        <!--                        <li><a href="tables.html"> <i class="icon-grid"></i>Tables </a></li>
                                                <li><a href="charts.html"> <i class="fa fa-bar-chart"></i>Charts </a></li>
                                                <li><a href="forms.html"> <i class="icon-padnote"></i>Forms </a></li>
                                                <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Example dropdown </a>
                                                    <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                                                        <li><a href="#">Page</a></li>
                                                        <li><a href="#">Page</a></li>
                                                        <li><a href="#">Page</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="login.html"> <i class="icon-interface-windows"></i>Login page </a></li>-->
                    </ul>
                </nav>
                <div class="content-inner">
                    <!-- Page Header-->
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">Dashboard</h2>
                        </div>
                    </header>
                    <!-- Dashboard Counts Section-->
                    <section class="dashboard-counts no-padding-bottom">
                        <div class="container-fluid">
                            <div class="row bg-white has-shadow">
                                <!-- Item -->
                                <div class="col-xl-3 col-sm-6">
                                    <div class="item d-flex align-items-center" id="uso">
                                        <div class="icon bg-violet"><i class="icon-user"></i></div>

                                        <div class="title"><span>En&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>Uso</span>

                                            <div class="progress">
                                                <div role="progressbar" style="width:<c:out value="${uso}" />%; height: 5px;" aria-valuenow="<c:out value="${uso}" />" aria-valuemin="0" aria-valuemax="20" class="progress-bar bg-violet"></div>
                                            </div>
                                        </div>
                                        <div class="number"><strong><c:out value="${uso}" /></strong></div>

                                    </div>
                                </div>
                                <!-- Item -->
                                <div class="col-xl-3 col-sm-6">
                                    <div class="item d-flex align-items-center" id="libre">
                                        <div class="icon bg-red"><i class="icon-padnote"></i></div>
                                        <div class="title"><span>Espacios<br>Libres</span>
                                            <div class="progress">
                                                <div role="progressbar" style="width: <c:out value="${libre}" />%; height: 5px;" aria-valuenow="<c:out value="${libre}" />" aria-valuemin="0" aria-valuemax="20" class="progress-bar bg-red"></div>
                                            </div>
                                        </div>
                                        <div class="number"><strong><c:out value="${libre}" /></strong></div>
                                    </div>
                                </div>
                                <!-- Item -->
                                <div class="col-xl-3 col-sm-6">
                                    <div class="item d-flex align-items-center" id="totales">
                                        <div class="icon bg-green"><i class="icon-bill"></i></div>
                                        <div class="title"><span>Servicios<br>Totales</span>
                                            <div class="progress">
                                                <div role="progressbar" style="width: 100%; height: 4px;" aria-valuenow="<c:out value="${total}" />" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                                            </div>
                                        </div>
                                        <div class="number"><strong><c:out value="${total}" /></strong></div>
                                    </div>
                                </div>
                                <!-- Item -->
                                <div class="col-xl-3 col-sm-6">
                                    <div class="item d-flex align-items-center" id="promedio">
                                        <div class="icon bg-orange"><i class="icon-check"></i></div>
                                        <div class="title"><span>Promedio <br>Minutos</span>
                                            <div class="progress">
                                                <div role="progressbar" style="width: <c:out value="${prom}" />%; height: 4px;" aria-valuenow="<c:out value="${prom}" />" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>
                                            </div>
                                        </div>
                                        <div class="number"><strong><c:out value="${prom}" /></strong></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Dashboard Header Section    -->
                    <section class="dashboard-header">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="card" style="width: 100%">

                                    <div class="card-header d-flex align-items-center">
                                        <h3 class="h4">Carros activos</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">                       
                                            <table class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Placa</th>
                                                        <th>Fecha Entrada</th>
                                                        <th>Tiempo</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="activos">
                                                    <c:forEach var="item" items="${lstActivos}" varStatus="loop">
                                                        <tr>
                                                            <th scope="row"><c:out value="${loop.index+1}" /></th>
                                                            <td><c:out value="${item.getPlaca()}" /></td>
                                                            <td><c:out value="${item.getFechaIN()}" /></td>
                                                            <td><f id="${loop.index+1}"><c:out value="${item.getDuracion()}" /> </f> Segundos</td>

                                                    </tr>

                                                </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="card" style="width: 100%">

                                    <div class="card-header d-flex align-items-center">
                                        <h3 class="h4">Historial</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">                       
                                            <table class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Placa</th>
                                                        <th>Fecha Entrada</th>
                                                        <th>Fecha Salida</th>
                                                        <th>Duracion (Min)</th>
                                                        <th>Cobro (COP)</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="registros">
                                                    <c:forEach var="item" items="${lstHistorial}" varStatus="loop">
                                                        <tr>
                                                            <th scope="row"><c:out value="${loop.index+1}" /></th>
                                                            <td><c:out value="${item.getPlaca()}" /></td>
                                                            <td><c:out value="${item.getFechaIN()}" /></td>
                                                            <td><c:out value="${item.getFechaOUT()}" /></td>
                                                            <td><c:out value="${item.getDuracion()}" /></td>
                                                            <td><c:out value="${item.getCobro()}" /></td>
                                                        </tr>

                                                    </c:forEach>


                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!--                            <div class="row">
                                                             Statistics 
                                                            <div class="statistics col-lg-3 col-12">
                                                                <div class="statistic d-flex align-items-center bg-white has-shadow">
                                                                    <div class="icon bg-red"><i class="fa fa-tasks"></i></div>
                                                                    <div class="text"><strong>234</strong><br><small>Applications</small></div>
                                                                </div>
                                                                <div class="statistic d-flex align-items-center bg-white has-shadow">
                                                                    <div class="icon bg-green"><i class="fa fa-calendar-o"></i></div>
                                                                    <div class="text"><strong>152</strong><br><small>Interviews</small></div>
                                                                </div>
                                                                <div class="statistic d-flex align-items-center bg-white has-shadow">
                                                                    <div class="icon bg-orange"><i class="fa fa-paper-plane-o"></i></div>
                                                                    <div class="text"><strong>147</strong><br><small>Forwards</small></div>
                                                                </div>
                                                            </div>
                                                             Line Chart            
                                                            <div class="chart col-lg-6 col-12">
                                                                <div class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow">
                                                                    <canvas id="lineCahrt"></canvas>
                                                                </div>
                                                            </div>
                                                            <div class="chart col-lg-3 col-12">
                                                                 Bar Chart   
                                                                <div class="bar-chart has-shadow bg-white">
                                                                    <div class="title"><strong class="text-violet">95%</strong><br><small>Current Server Uptime</small></div>
                                                                    <canvas id="barChartHome"></canvas>
                                                                </div>
                                                                 Numbers
                                                                <div class="statistic d-flex align-items-center bg-white has-shadow">
                                                                    <div class="icon bg-green"><i class="fa fa-line-chart"></i></div>
                                                                    <div class="text"><strong>99.9%</strong><br><small>Success Rate</small></div>
                                                                </div>
                                                            </div>
                                                        </div>-->
                        </div>
                    </section>

                    <!-- Client Section-->
                    <!--                    <section class="client no-padding-top">
                                            <div class="container-fluid">
                                                <div class="row">
                                                     Work Amount  
                                                    <div class="col-lg-4">
                                                        <div class="work-amount card">
                                                            <div class="card-close">
                                                                <div class="dropdown">
                                                                    <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                                                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="card-body">
                                                                <h3>Work Hours</h3><small>Lorem ipsum dolor sit amet.</small>
                                                                <div class="chart text-center">
                                                                    <div class="text"><strong>90</strong><br><span>Hours</span></div>
                                                                    <canvas id="pieChart"></canvas>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     Client Profile 
                                                    <div class="col-lg-4">
                                                        <div class="client card">
                                                            <div class="card-close">
                                                                <div class="dropdown">
                                                                    <button type="button" id="closeCard2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                                                    <div aria-labelledby="closeCard2" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="card-body text-center">
                                                                <div class="client-avatar"><img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle">
                                                                    <div class="status bg-green"></div>
                                                                </div>
                                                                <div class="client-title">
                                                                    <h3>Jason Doe</h3><span>Web Developer</span><a href="#">Follow</a>
                                                                </div>
                                                                <div class="client-info">
                                                                    <div class="row">
                                                                        <div class="col-4"><strong>20</strong><br><small>Photos</small></div>
                                                                        <div class="col-4"><strong>54</strong><br><small>Videos</small></div>
                                                                        <div class="col-4"><strong>235</strong><br><small>Tasks</small></div>
                                                                    </div>
                                                                </div>
                                                                <div class="client-social d-flex justify-content-between"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a><a href="#" target="_blank"><i class="fa fa-twitter"></i></a><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a><a href="#" target="_blank"><i class="fa fa-instagram"></i></a><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     Total Overdue             
                                                    <div class="col-lg-4">
                                                        <div class="overdue card">
                                                            <div class="card-close">
                                                                <div class="dropdown">
                                                                    <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                                                    <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="card-body">
                                                                <h3>Total Overdue</h3><small>Lorem ipsum dolor sit amet.</small>
                                                                <div class="number text-center">$20,000</div>
                                                                <div class="chart">
                                                                    <canvas id="lineChart1">                               </canvas>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>-->


                    <!-- Page Footer-->
                    <footer class="main-footer">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6">
                                    <p>Your company &copy; 2017-2019</p>
                                </div>
                                <div class="col-sm-6 text-right">
                                    <p>Design by <a href="https://bootstrapious.com/p/admin-template" class="external">Bootstrapious</a></p>
                                    <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
        <!-- JavaScript files-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper.js/umd/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.js"></script>
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
        <script src="js/charts-home.js"></script>
        <script src="js/index.js"></script>
        <!-- Main File-->
        <script src="js/front.js"></script>

    </body>
</html>