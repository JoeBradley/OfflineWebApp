<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OfflineWebApp.Default" %>

<!DOCTYPE html>

<html lang="en" manifest="/cache.manifest">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Test of multiple frameworks">
    <meta name="author" content="Christopher Cassidy">
    <link rel="shortcut icon" href="favicon.ico">

    <title>HTML 5 | Local Storage &amp; Offline Application Cache</title>

    <link rel="stylesheet" href="~/web/css/bootstrap-theme.css">
    <link rel="stylesheet" href="~/web/css/bootstrap.css">

    <script src="/web/js/lib/jquery/jquery-1.10.2.min.js" ></script>
    <script src="/web/js/lib/jquery/jquery-ui-1.10.3.custom.js"></script>
    <script src="/web/js/lib/bootstrap.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

    <script src="/web/js/app.js"></script>
    
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="default.aspx">HTML 5 | Local Storage &amp; Offline Application Cache</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#demo">Demo</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>

    <div id="wrapper">

        <div id="demo" class="cc-panel show">
            <div class="container">
                <div class="starter-template">
                    <h1>HTML 5 | Local Storage &amp; Offline Application Cache</h1>
                    <p class="lead">This is a demo of a few HTML 5 features in use together.</p>
                </div>

                <div class="row well" style="margin-bottom: 30px;">
                    <h2>Demo</h2>
                    <p>This demonstration shows the use of HTML 5 Local Storage, and offline Application Cache.</p>
                    <p>To test it out, first load the site as per normal, and click the Get Products button.  Then try going offline (without re-loading the page), and then click the Get Products button.  This will use locally stored data.  Finally, stay offline, and then re-load the page.  This will use the locally cached website and the locally stored data.</p>
                    <p>Go to the <strong>ABOUT</strong> page for details on how this magic happened.</p>
                </div>
                <div class="row well">
                    <div id="OnlineStatus" class="alert alert-success">Online Status</div>
                    <div id="CacheUsed" class="hidden alert alert-warning">Offline cached copy of website being used (server may be unavailable)</div>
                    <div id="ProductsSource" class="alert alert-info">Products source...</div>
                    <div>
                        <a id="GetProducts" class="btn btn-info"><span class="glyphicon glyphicon-download-alt"></span> Get Products</a>
                        <a id="ClearProducts" class="btn btn-warning"><span class="glyphicon glyphicon-refresh"></span> Clear Products</a>
                        <a id="ClearStorage" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Clear local storage</a>
                    </div>
                    <div style="margin-top: 10px;">
                        <h2>Products:</h2>
                        <p id="Products" style="white-space: pre;">... click &quot;Get Products&quot;</p>
                    </div>
                </div>
            </div>
        </div>


        <div id="about" class="cc-panel hide">
            <div class="container">
                <div class="starter-template">
                    <h2>Frameworks at play</h2>
                    <p>HTML 5 and Bootstrap 3.0 (plus some server side goodies).</p>
                </div>
                <div class="row well">
                    
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="/web/images/tech/html5.jpg" />
                            <div class="caption">
                                <h3>HTML 5</h3>
                                <p>I use the HTML 5 features of Local Storage &amp; Application Cache.</p>
                                <p>The Local Storage is used  to save data received from the web service call, and used when offline or the server is unavailable.</p>
                                <p>The Application Cache is used to store a copy of the website locally, and is used when offline or the server is unavilable.</p>
                                <p>
                                    <a href="http://diveintohtml5.info/storage.html">HTML 5 | Local Storage</a><br />
                                    <a href="http://www.html5rocks.com/en/mobile/workingoffthegrid/">HTML 5 | Application Cache</a><br />
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="/web/images/tech/bootstrap-logo.png" />
                            <div class="caption">
                                <h3>Bootstrap 3.0</h3>
                                <p>I am using the Bootstrap framework for the presentation layer for rapid build of a very simple layout.</p>
                                <p>
                                    <a href="http://getbootstrap.com/">Bootstrap</a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="/web/images/tech/wcf-logo.jpg" style="max-height: 160px;" />
                            <div class="caption">
                                <h3>Windows Communication Foundation</h3>
                                <p>I use WCF to build RESTful web services for client-server communications through an API.</p>
                                <p><a href="http://msdn.microsoft.com/en-us/library/ms731082.aspx">Windows Communiaction Foundation</a></p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="/web/images/tech/ef-logo.jpg" style="max-height: 160px;">
                            <div class="caption">
                                <h3>Entity Framework</h3>
                                <p>Entity Framework provides the data-object persistence layer in the application.  This removes the need for building lower level data access components and business object mappings.</p>
                                <p>
                                    <a href="http://msdn.microsoft.com/en-us/data/ef.aspx">Entity Framework</a><br />
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="contact" class="cc-panel hide">
            <div class="container">
                <div class="starter-template">
                    <h2>Get in contact</h2>
                </div>
                <div class="row well">
                    <div class="col-sm-6 col-md-3 col-md-offset-3">
                        <div class="thumbnail">
                            <img src="/web/images/chris-profile.jpg" style="max-height: 240px;" />
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <p><span class="glyphicon glyphicon-user"></span>Christopher Cassiy</p>
                        <p><span class="glyphicon glyphicon-send"></span><a href="mailto:hello@christopher-cassidy.cc" target="_blank">hello@christopher-cassidy.cc</a></p>
                        <p><span class="glyphicon glyphicon-globe"></span><a href="http://www.christopher-cassidy.cc" target="_blank">www.christopher-cassidy.cc</a></p>
                        <p>
                            <br />
                            <br />
                            <br />
                            <small>&copy; 2013  |  Christopher Cassidy.</small></p>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            app.init();

            $('.cc-panel.hide').css({ 'left': '100%' }).removeClass('hide');

            //bind events
            $('.nav a').on('click', function (event) {
                event.preventDefault();

                $(this).parent().parent().find('li.active').removeClass('active');
                $(this).parent().addClass('active');

                var id = $(this).attr('href');
                $('.cc-panel.show').stop(true, true).animate({ 'left': '-100%' }, 1000, function () { $(this).css({ 'left': '100%' }).removeClass('show'); });
                $(id).stop(true, true).animate({ 'left': '0%' }, 1000, function () { $(this).addClass('show'); });
                //$(id).show('slide', { direction: 'right' }, 3000, function () { $(this).addClass('show'); });
            });
        });
    </script>
</body>
</html>
