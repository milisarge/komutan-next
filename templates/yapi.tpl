<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{% block title %}{% endblock %}</title>

    <!-- Bootstrap Core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/static/css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/static/css/sb-admin-2.css" rel="stylesheet">
    <link href="/style.css" rel="stylesheet">
    {% block customcss %}{% endblock %}

    <!-- Custom Fonts -->
    <link href="/static/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="/ayarlar"><i class="fa fa-gear fa-fw"></i> Ayarlar</a>
                        </li>
                        <li><a href="/cikis"><i class="fa fa-sign-out fa-fw"></i> Çıkış</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
<!--                         <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </li> -->
                        <img class="center-block" src="/static/img/ikon.png">
                        <br>
                        <li>
                            <a href="/"><i class="fa fa-dashboard fa-fw"></i> Sistem Bilgileri</a>
                        </li>
                        <li>
                            <a href="/komutaModul"><i class="fa fa-terminal fa-fw"></i> Komuta Merkezi</a>
                        </li>                        
                        <li>
                            <a href="/rehberModul"><i class="fa fa-book fa-fw"></i> Rehber - Milis Wiki</a>
                        </li>
                        <li>
                            <a href="/mpsModul"><i class="fa fa-download fa-fw"></i> Milis Yazılım Merkezi</a>
                        </li>
                        <li>
                            <a href="/surecModul"><i class="fa fa-area-chart fa-fw"></i> Süreç Modülü</a>
                        </li>
                        <li>
                            <a href="/servisModul"><i class="fa fa-wrench fa-fw"></i> Servis Ayarları</a>
                        </li>                        
                        <li>
                            <a href="/agModul"><i class="fa fa-wifi fa-fw"></i> Ağ Ayarları</a>
                        </li>
                        <li>
                            <a href="/komutanGuncelle"><i class="fa fa-refresh fa-fw"></i> Komutan Güncelle</a>
                        </li>                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        {% block content %}
                        {% endblock %}
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/static/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/static/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/static/js/metisMenu.min.js"></script>

    <!-- Custom JavaScript -->
    <script src="/static/js/sb-admin-2.js"></script>

    {% block customjs %}{% endblock %}

</body>

</html>
