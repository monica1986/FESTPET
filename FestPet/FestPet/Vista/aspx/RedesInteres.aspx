<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedesInteres.aspx.cs" Inherits="FestPet.Vista.aspx.RedesInteres" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Redes de Interes</title>

        <!-- Vendor CSS -->
        <link href="../vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="../vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        
            
        <!-- CSS -->
        <link href="../css/app.min.1.css" rel="stylesheet">
        <link href="../css/app.min.2.css" rel="stylesheet">
        
        <script type="text/javascript">
            function clickMascotasIguales() {
                document.getElementById('botonAgrgarIdenticos').click();
            }
            
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header id="header">
            <ul class="header-inner">
                <li id="menu-trigger" data-trigger="#sidebar">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </li>
            
                <li class="logo hidden-xs">
                   <a href="Inicio.aspx"><asp:Label ID="lblUsuario" runat="server" ></asp:Label></a>
                </li>
                <li class="logo hidden-xs">
                    <a href="Muro.aspx">Inicio</a>
                </li>
                
                <li class="pull-right">
                <ul class="top-menu">
                    <li id="toggle-width">
                        <div class="toggle-switch">
                            <input id="tw-switch" type="checkbox" hidden="hidden">
                            <label for="tw-switch" class="ts-helper"></label>
                        </div>
                    </li>
                    <li id="top-search">
                        <a class="tm-search" href="#"></a>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="tm-message" href="#"><i class="tmn-counts">4</i></a>
                        <div class="dropdown-menu dropdown-menu-lg pull-right">
                            <div class="listview">
                                <div class="lv-header">
                                    Mensajes
                                </div>
                                <div class="lv-body">
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="../img/profile-pics/1.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title">Monica Barrera</div>
                                                <small class="lv-small">Mi perro se a extraviado, te envio una foto por si lo ves.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="../img/profile-pics/2.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title">Jose Luis Andrade</div>
                                                <small class="lv-small">Estoy vendiendo un gatito recién nacido.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="../img/profile-pics/3.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title">Sofia Rosas</div>
                                                <small class="lv-small">He adoptado un perro, pero aún necesitamos mas gente.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="../img/profile-pics/4.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title">Gerardo Canales</div>
                                                <small class="lv-small">Tengo a la venta hermosos cachorros</small>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="tm-notification" href="#"><i class="tmn-counts">3</i></a>
                        <div class="dropdown-menu dropdown-menu-lg pull-right">
                            <div class="listview" id="notifications">
                                <div class="lv-header">
                                    Notificaciones
                                </div>
                                <div class="lv-body">
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="../img/profile-pics/1.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title">Monica Barrera</div>
                                                <small class="lv-small">A publicado el extravío de su Mascota.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="../img/profile-pics/2.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title">Jose Luis Andrade</div>
                                                <small class="lv-small">A publicado una mascota a la venta.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="../img/profile-pics/3.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title">Sofia Rosas</div>
                                                <small class="lv-small">A publicado la adopción de una mascota.</small>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                    
                        </div>
                    </li>
                    
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="tm-settings" href="#"></a>
                        <ul class="dropdown-menu dm-icon pull-right">
                            <li>
                                <a href="#"><i class="zmdi zmdi-face"></i> Editar Privacidad</a>
                            </li>
                            <li>
                                <a href="#"><i class="zmdi zmdi-settings"></i> Otros Ajustes</a>
                            </li>
                            <li>
                                <asp:LinkButton ID="lkbSalir" runat="server" onclick="lkbSalir_Click">Salir</asp:LinkButton>
                            </li>
                        </ul>
                    </li>
                    <li class="hidden-xs" id="chat-trigger" data-trigger="#chat">
                        <a class="tm-chat" href="#"></a>
                    </li>
                </li>
            </ul>
            
            <!-- Top Search Content -->
            <div id="top-search-wrap">
                <input type="text">
                <i id="top-search-close">&times;</i>
            </div>
        </header>
        
        <section id="main">
            <aside id="sidebar">
                <div class="sidebar-inner c-overflow">
                    <div class="profile-menu">
                        <a href="#">
                            <div class="profile-pic">
                                <img src="../img/profile-pics/1.jpg" alt="">
                            </div>

                            <div class="profile-info">
                                Nicolas Fuentes

                                <i class="zmdi zmdi-arrow-drop-down"></i>
                            </div>
                        </a>

                        <ul class="main-menu">
                            <li>
                                 <a href="PerfilUsuario.aspx"><i class="zmdi zmdi-account"></i> Perfil</a>
                            </li>
                            <!--<li>
                                <a href="#"><i class="zmdi zmdi-input-antenna"></i> Privacy Settings</a>
                            </li>
                            <li>
                                <a href="#"><i class="zmdi zmdi-settings"></i> Settings</a>
                            </li>
                            <li>
                                <a href="#"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                            </li>-->
                        </ul>
                    </div>
                    <!--
                    <ul class="main-menu">
                        <li><a href="index-2.html"><i class="zmdi zmdi-home"></i> Home</a></li>
                        <li><a href="typography.html"><i class="zmdi zmdi zmdi-format-underlined"></i> Typography</a></li>
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-widgets"></i> Widgets</a>

                            <ul>
                                <li><a href="widget-templates.html">Templates</a></li>
                                <li><a href="widgets.html">Widgets</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-view-list"></i> Tables</a>

                            <ul>
                                <li><a href="tables.html">Normal Tables</a></li>
                                <li><a href="data-tables.html">Data Tables</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-collection-text"></i> Forms</a>

                            <ul>
                                <li><a href="form-elements.html">Basic Form Elements</a></li>
                                <li><a href="form-components.html">Form Components</a></li>
                                <li><a href="form-examples.html">Form Examples</a></li>
                                <li><a href="form-validations.html">Form Validation</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-swap-alt"></i>User Interface</a>
                            <ul>
                                <li><a href="colors.html">Colors</a></li>
                                <li><a href="animations.html">Animations</a></li>
                                <li><a href="box-shadow.html">Box Shadow</a></li>
                                <li><a href="buttons.html">Buttons</a></li>
                                <li><a href="icons.html">Icons</a></li>
                                <li><a href="alerts.html">Alerts</a></li>
                                <li><a href="notification-dialog.html">Notifications & Dialogs</a></li>
                                <li><a href="media.html">Media</a></li>
                                <li><a href="components.html">Components</a></li>
                                <li><a href="other-components.html">Others</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-trending-up"></i>Charts</a>
                            <ul>
                                <li><a href="flot-charts.html">Flot Charts</a></li>
                                <li><a href="other-charts.html">Other Charts</a></li>
                            </ul>
                        </li>
                        <li><a href="calendar.html"><i class="zmdi zmdi-calendar"></i> Calendar</a></li>
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-image"></i>Photo Gallery</a>
                            <ul>
                                <li><a href="photos.html">Default</a></li>
                                <li><a href="photo-timeline.html">Timeline</a></li>
                            </ul>
                        </li>
                        
                        <li><a href="generic-classes.html"><i class="zmdi zmdi-layers"></i> Generic Classes</a></li>
                        <li class="sub-menu toggled active">
                            <a href="#"><i class="zmdi zmdi-collection-item"></i> Sample Pages</a>
                            <ul>
                                
                                <li><a class="active" href="profile-about.html">Profile</a></li>
                                <li><a href="list-view.html">List View</a></li>
                                <li><a href="messages.html">Messages</a></li>
                                <li><a href="pricing-table.html">Pricing Table</a></li>
                                <li><a href="contacts.html">Contacts</a></li>
                                <li><a href="wall.html">Wall</a></li>
                                <li><a href="invoice.html">Invoice</a></li>
                                <li><a href="login.html">Login and Sign Up</a></li>
                                <li><a href="lockscreen.html">Lockscreen</a></li>
                                <li><a href="404.html">Error 404</a></li>
                                
                            </ul>
                        </li>
                    </ul>
                    -->
                </div>
            </aside>
            
            <aside id="chat">
                <ul class="tab-nav tn-justified" role="tablist">
                    <li role="presentation" class="active"><a href="#friends" aria-controls="friends" role="tab" data-toggle="tab">Amigos</a></li>
                    <li role="presentation"><a href="#online" aria-controls="online" role="tab" data-toggle="tab">Conectados</a></li>
                </ul>
            
                <div class="chat-search">
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Buscar">
                    </div>
                </div>
                
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="friends">
                        <div class="listview">
                            <a class="lv-item" href="#">
                                <div class="media">
                                    <div class="pull-left p-relative">
                                        <img class="lv-img-sm" src="../img/profile-pics/2.jpg" alt="">
                                        <i class="chat-status-busy"></i>
                                    </div>
                                    <div class="media-body">
                                        <div class="lv-title">Jonathan Morris</div>
                                        <small class="lv-small">Available</small>
                                    </div>
                                </div>
                            </a>
                            
                            <a class="lv-item" href="#">
                                <div class="media">
                                    <div class="pull-left">
                                        <img class="lv-img-sm" src="../img/profile-pics/1.jpg" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="lv-title">David Belle</div>
                                        <small class="lv-small">Last seen 3 hours ago</small>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="online">
                        <div class="listview">
                            <a class="lv-item" href="#">
                                <div class="media">
                                    <div class="pull-left p-relative">
                                        <img class="lv-img-sm" src="../img/profile-pics/2.jpg" alt="">
                                        <i class="chat-status-busy"></i>
                                    </div>
                                    <div class="media-body">
                                        <div class="lv-title">Jonathan Morris</div>
                                        <small class="lv-small">Available</small>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                
            </aside>

            <section id="content">
                <div class="container" style="background: #f8f8f8;">

                    <!-- Basic -->
                    <div class="block-header">
                       <ul class="tab-nav tn-justified">
                            <li class="waves-effect"><a href="PerfilUsuario.aspx">Acerca De Mi</a></li>
                            <li class="waves-effect"><a href="FotosUsuario.aspx">Fotos</a></li>
                            <li class="active waves-effect"><a href="RedesInteres.aspx">Red de Interes</a></li>
                       </ul>
                    </div>
                    <div class="block-header">
                        <h2>Publicaciones recientes <small>Sobre mascotas iguales a las tuyas.</small></h2>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-header">
                                    <h2>Monica Barrera <small>A Extraviado su mascota</small></h2>
                                </div>

                                <div class="card-body card-padding">
                                    A publicado el extravío de su Mascota, un perro Chow Chow de 7 meses, su nombre es toby, cerca de
                                    del mall Tobalaba.
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-header">
                                    <h2>Jose Luis Andrade <small>Tiene a la venta Gatos Bombay</small></h2>
  
                                </div>

                                <div class="card-body card-padding">
                                   A publicado que tiene gatos a la venra de raza Bombay de 2 meses,
                                   uno de los gatos mas bonitos del mundo.
                                   para saber el precio tienes que comunicarte con él. 
                                </div>
                            </div>
                        </div>
                    </div>

                    <br/>
                    <br/>

                    <!-- Colored Headers -->
                    <div class="block-header">
                        <h2>Alimenta a tu Mascota <small>Con la mejor comida del mercado.</small></h2>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-header bgm-purple">
                                    <h2>Eukanuba <small>ADULT LARGE BREED CANINO</small></h2>
                                </div>

                                <div class="card-body card-padding">
                                    Eukanuba Adul Large Breed es un alimento indicado para perros adultos de raza grandes y gigantes.
                                    Formulado para ayudarel mantenimientos de articulaciones saludables, mantener un peso óbtimo gracias
                                    a sus niveles reducidos de grasas y para prommover la salud del cartilago.
                                    Saco de 15 kg.
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-header bgm-red">
                                    <h2>Eukanuba <small>PUPPY SMALL BREED</small></h2>
                                </div>

                                <div class="card-body card-padding">
                                    Eukanaba Puppy Small Breed es un alimento indicado para cachorros e raza pequeña. 
                                    Su fórmula aporta una nutrición óptima con un mayor nivel de proteína y grasa, 
                                    especialmente diseñana para el elevado metabolismo  de los cachorros de la raza
                                    mas pequeña.
                                    Sacos de 3 y 7,5 kg.
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-header bgm-orange">
                                    <h2>Royal Canin <small>INDOOR LONG HAIR FELINO</small></h2>
                                </div>

                                <div class="card-body card-padding">
                                    Recomendado para gatos de pelo largo , entre 1 y 10 años, sin acceso a exteriores.
                                    Su fórmula incrementa el color y la calidad del pelaje gracias a la adición de un alto nivel
                                    de proteína(35%), vitamina A y B, ácidos grasos esenciales(aceite de borraja y aceite de pescado).
                                    Saco de 2 Kg.
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-header bgm-green">
                                    <h2>Pro Plan <small>CAT KITTEN OPTISTART FELINO</small></h2>
                                </div>

                                <div class="card-body card-padding">
                                    Para gatos de hasta doce meses de edad que estan llenos de vitalidad y su organismo se 
                                    encuentra en pleno desarrollo. La saludo general de un gato adulto va a depender, en
                                    gran medida, el cuidado que le proporcionamos en la etapa más temprana de su vida.
                                    Sacos de 1,5 y 7,5 Kg.
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <br/>
                    <br/>

                    <!-- No Header -->
                    <div class="block-header">
                        <h2>Cuida a tu Mascota <small>Con las siguientes indicaciones dadas por veterinarios.</small></h2>
                    </div>

                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body card-padding">
                                   7 Tip para tener mascotas felices. <br />
                                    &nbsp;&nbsp;1.- Mantener un peso saludable <br />
                                     &nbsp;&nbsp;2.- Invertir en su entrenamiento <br />
                                      &nbsp;&nbsp;3.- Revisar sus dientes <br />
                                       &nbsp;&nbsp;4.- Llevar al veterinario <br />
                                        &nbsp;&nbsp;5.- Mantenerlos hidratados <br />
                                         &nbsp;&nbsp;6.- Protégerlos de las pulgas <br />
                                          &nbsp;&nbsp;7.- Etimulación mental <br />
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body card-padding bgm-teal c-white">
                                   Al momento de viajar con tu Mascota.<br />
                                   Primero acostumbralo a realizar pequeño trayectos de 5 a 10 minutos
                                   en días alternos, y poco a poco aumenta la duración de los viajes
                                   hasta que se sienta cómodo.<br />

                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body card-padding bgm-gray c-white">
                                    Aprende a detectar enfermedades <br />
                                    A menudo puedes pensar que tu mascota no se siente bien y una rápida visita
                                    al veterinario te ayudará a confirmar que algo no marcha bien. Algunos
                                    síntomas son: perdida de apetito, rechazo al agua, disminusión o aumento
                                    súbito de peso, lentitud o rechazo a jugar, vómitos, respiració irregular.
                                </div>
                            </div>
                        </div>
                    </div>

                    <br/>
                    <br/>
                    
                    <!-- Extra -->
                    <div class="block-header">
                        <h2>Agrega a gente en comun</h2>
                    </div>

                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-header m-b-20">
                                    <h2>Posibles amigos <small>Exiten personas que tienen las mismas mascotas que tú</small></h2>
                                    
                                    <a class="btn bgm-red btn-float waves-effect" onclick="clickMascotasIguales()"><i class="zmdi zmdi-plus"></i></a>
                                </div>

                                <div class="card-body card-padding" style="display:none">
                                    Cras leo sem, egestas a accumsan eget, euismod at nunc. Praesent vel mi blandit, tempus ex gravida, accumsan dui. Sed sed aliquam augue. Nullam vel suscipit purus, eu facilisis ante. Mauris nec commodo felis. 
                                </div>
                            </div>
                        </div>
                        <div style="display:none">
                            <asp:Button ID="botonAgrgarIdenticos" runat="server" 
                                onclick="botonAgrgarIdenticos_Click" ></asp:Button>
                            <div class="col-sm-4">
                                <div class="card">
                                    <div class="card-header bgm-bluegray m-b-20">
                                        <h2>Some Title <small>Phasellus condimentum ipsum id auctor</small></h2>
                                    
                                        <button class="btn bgm-blue btn-float waves-effect"><i class="zmdi zmdi-mail-send"></i></button>
                                    </div>

                                    <div class="card-body card-padding">
                                        Cras leo sem, egestas a accumsan eget, euismod at nunc. Praesent vel mi blandit, tempus ex gravida, accumsan dui. Sed sed aliquam augue. Nullam vel suscipit purus, eu facilisis ante. Mauris nec commodo felis. 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>

        <!-- Older IE warning message -->
        <!--[if lt IE 9]>
            <div class="ie-warning">
                <h1 class="c-white">Warning!!</h1>
                <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
                <div class="iew-container">
                    <ul class="iew-download">
                        <li>
                            <a href="http://www.google.com/chrome/">
                                <img src="../img/browsers/chrome.png" alt="">
                                <div>Chrome</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.mozilla.org/en-US/firefox/new/">
                                <img src="../img/browsers/firefox.png" alt="">
                                <div>Firefox</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.opera.com">
                                <img src="../img/browsers/opera.png" alt="">
                                <div>Opera</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.apple.com/safari/">
                                <img src="../img/browsers/safari.png" alt="">
                                <div>Safari</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                                <img src="../img/browsers/ie.png" alt="">
                                <div>IE (New)</div>
                            </a>
                        </li>
                    </ul>
                </div>
                <p>Sorry for the inconvenience!</p>
            </div>   
        <![endif]-->
        
        
        <!-- Javascript Libraries -->
        <script src="../vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
       
        <script src="../vendors/bower_components/jquery.nicescroll/jquery.nicescroll.min.js"></script>
        <script src="../vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="../vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="../vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="../js/functions.js"></script>
        <script src="../js/demo.js"></script>
    </div>
    </form>
</body>
</html>
