﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="FestPet.Vista.aspx.Inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FEST PET</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Vendor CSS -->
        <link href="../vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="../vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        
        
            
        <!-- CSS -->
        <link href="../css/app.min.1.css" rel="stylesheet">
        <link href="../css/app.min.2.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
        <header id="header" class="fijo">
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
                        <a data-toggle="dropdown" class="tm-message" href="#">
                            <% if(listaMensajeDTO.Count > 0)
                                {%>
                                    <i class="tmn-counts">
                                        <% listaMensajeDTO[0].MnsjNuevo.ToString(); %>
                                    </i>
                                <% }
                            %>        
                        </a>
                                       
                        <div class="dropdown-menu dropdown-menu-lg pull-right">
                            <div class="listview">
                                <div class="lv-header">
                                    Mensajes
                                </div>
                                <div class="lv-body">
                                <%--FOR--%>
                                <% for (int i = 0; i < listaMensajeDTO.Count; i++)
                                   {
                                       %> 
                                       <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="<% listaMensajeDTO[i].UrlPerfil.ToString(); %>" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title"> <% listaMensajeDTO[i].Emisor.ToString(); %> </div>
                                                <small class="lv-small">  <% listaMensajeDTO[i].Contenido.ToString(); %> </small>
                                            </div>
                                        </div>
                                    </a>                                       
                                  <% 
                                      } %>                                    
                                 <%--FIN FOR--%>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="tm-notification" href="#">                            
                            <% if(listaNotificacionDTO.Count > 0)
                                {%>
                                     <i class="tmn-counts">
                                        <% listaNotificacionDTO[0].MnsjNuevo.ToString(); %>
                                    </i>
                                <% }
                            %>   
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg pull-right">
                            <div class="listview" id="notifications">
                                <div class="lv-header">
                                    Notificaciones
                                </div>
                                <div class="lv-body">
                                <%--FOR--%>
                                <% for (int i = 0; i < listaNotificacionDTO.Count; i++)
                                   {
                                       %> 
                                    <a class="lv-item" href="#">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="<% listaNotificacionDTO[i].UrlImagen.ToString(); %>" alt="">
                                            </div>
                                            <div class="media-body">
                                                <div class="lv-title"> <% listaNotificacionDTO[i].Nombre.ToString(); %> </div>
                                                <small class="lv-small"> <% listaNotificacionDTO[i].Texto.ToString(); %> </small>
                                            </div>
                                        </div>
                                    </a>
                                <% 
                                    } %>    
                                <%--FIN FOR--%>
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
                <asp:TextBox ID="cajaTextoBuscar" runat="server"></asp:TextBox>
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
                        <li class="active"><a href="index-2.html"><i class="zmdi zmdi-home"></i> Home</a></li>
                        <li><a href="typography.html"><i class="zmdi zmdi zmdi-format-underlined"></i> Typography</a></li>
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-widgets"></i> Widgets</a>

                            <ul>
                                <li><a href="widget-templates.html">Templates</a></li>
                                <li><a class="active" href="widgets.html">Widgets</a></li>
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
                        <li class="sub-menu">
                            <a href="#"><i class="zmdi zmdi-collection-item"></i> Sample Pages</a>
                            <ul>
                                
                                <li><a href="profile-about.html">Profile</a></li>
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
            
            <br /><br />

            <div class="card" style="background:#EDECEC !important; text-align: center;">
                <a href="#">
                    <img src="../img/publicidad/ProPlan.png" alt="" style="width:50%">
                </a>
            </div>
            
            <section id="content">
                <div class="container">
                   
                    
                    <div class="card">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Vista/img/animales/166540725.jpg" style="height: 500px;"></asp:Image>
                    </div>
                    
                    <div class="dash-widgets">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div id="site-visits" class="dash-widget-item bgm-teal">
                                    <div class="dash-widget-header">
                                        <div class="p-20">
                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Vista/img/animales/dia-de-las-mascotas.jpg" style="height: 130px;"></asp:Image>
                                        </div>
                                        
                                        <div class="dash-widget-title">Mascota a la Venta</div>
                                        
                                        
                                    </div>
                                    
                                    <div class="p-20">
                                        
                                        <small>Descripción:</small>
                                        <br/>
                                        <small>
                                            El Beagle es una raza que encaja fácilmente en la mayoría de los hogares. 
                                            Quiere complacer a aquellos a los que quiere y estar a su lado todo el tiempo 
                                            posible, medrando cuando está al lado de su gente querida.
                                        </small>
                                        
                                        <br/>
                                        <br/>
                                        
                                        <small>Precio</small>
                                        <h3 class="m-0 f-400">70.000.-</h3>
                                    </div>
                                </div>
                            </div>
                            <!--
                            <div class="col-md-3 col-sm-6">
                                <div id="pie-charts" class="dash-widget-item">
                                    <div class="bgm-pink">
                                        <div class="dash-widget-header">
                                            <div class="dash-widget-title">Email Statistics</div>
                                        </div>
                                        
                                        <div class="clearfix"></div>
                                        
                                        <div class="text-center p-20 m-t-25">
                                            <div class="easy-pie main-pie" data-percent="75">
                                                <div class="percent">45</div>
                                                <div class="pie-title">Total Emails Sent</div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="p-t-20 p-b-20 text-center">
                                        <div class="easy-pie sub-pie-1" data-percent="56">
                                            <div class="percent">56</div>
                                            <div class="pie-title">Bounce Rate</div>
                                        </div>
                                        <div class="easy-pie sub-pie-2" data-percent="84">
                                            <div class="percent">84</div>
                                            <div class="pie-title">Total Opened</div>
                                        </div>
                                    </div>
    
                                </div>
                            </div>
                            
                            <div class="col-md-3 col-sm-6">
                                <div class="dash-widget-item bgm-lime">
                                    <div id="weather-widget"></div>
                                </div>
                            </div>
    
                            <div class="col-md-3 col-sm-6">
                                <div id="best-selling" class="dash-widget-item">
                                    <div class="dash-widget-header">
                                        <div class="dash-widget-title">Best Sellings</div>
                                        <img src="../img/widgets/alpha.jpg" alt="">
                                        <div class="main-item">
                                            <small>Samsung Galaxy Alpha</small>
                                            <h2>$799.99</h2>
                                        </div>
                                    </div>
                                
                                    <div class="listview p-t-5">
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/widgets/note4.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">Samsung Galaxy Note 4</div>
                                                    <small class="lv-small">$850.00 - $1199.99</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/widgets/mate7.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">Huawei Ascend Mate</div>
                                                    <small class="lv-small">$649.59 - $749.99</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/widgets/535.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">Nokia Lumia 535</div>
                                                    <small class="lv-small">$189.99 - $250.00</small>
                                                </div>
                                            </div>
                                        </a>
                                        
                                        <a class="lv-footer" href="#">
                                            View All
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    -->
                    <div class="row">
                    <!--
                        <div class="col-sm-6">
                            
                            <div class="card">
                                <div class="card-header">
                                    <h2>Recent Items <small>Phasellus condimentum ipsum id auctor imperdie</small></h2>
                                    <ul class="actions">
                                        <li class="dropdown">
                                            <a href="#" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>
                                            
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li>
                                                    <a href="#">Refresh</a>
                                                </li>
                                                <li>
                                                    <a href="#">Settings</a>
                                                </li>
                                                <li>
                                                    <a href="#">Other Settings</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                
                                <div class="card-body m-t-0">
                                    <table class="table table-inner table-vmiddle">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th style="width: 60px">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="f-500 c-cyan">2569</td>
                                                <td>Samsung Galaxy Mega</td>
                                                <td class="f-500 c-cyan">$521</td>
                                            </tr>
                                            <tr>
                                                <td class="f-500 c-cyan">9658</td>
                                                <td>Huawei Ascend P6</td>
                                                <td class="f-500 c-cyan">$440</td>
                                            </tr>
                                            <tr>
                                                <td class="f-500 c-cyan">1101</td>
                                                <td>HTC One M8</td>
                                                <td class="f-500 c-cyan">$680</td>
                                            </tr>
                                            <tr>
                                                <td class="f-500 c-cyan">6598</td>
                                                <td>Samsung Galaxy Alpha</td>
                                                <td class="f-500 c-cyan">$870</td>
                                            </tr>
                                            <tr>
                                                <td class="f-500 c-cyan">4562</td>
                                                <td>LG G3</td>
                                                <td class="f-500 c-cyan">$690</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="recent-items-chart" class="flot-chart"></div>
                            </div>
                            
                            
                            <div id="todo-lists">
                                <div class="tl-header">
                                    <h2>Todo Lists</h2>
                                    <small>Add, edit and manage your Todo Lists</small>
                                    
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="#" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>
                                            
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li>
                                                    <a href="#">Refresh</a>
                                                </li>
                                                <li>
                                                    <a href="#">Manage Widgets</a>
                                                </li>
                                                <li>
                                                    <a href="#">Widgets Settings</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                    
                                <div class="clearfix"></div>
                                    
                                <div class="tl-body">
                                    <div id="add-tl-item">
                                        <i class="add-new-item zmdi zmdi-plus"></i>
                                        
                                        <div class="add-tl-body">
                                            <textarea placeholder="What you want to do..."></textarea>
                                            
                                            <div class="add-tl-actions">
                                                <a href="#" data-tl-action="dismiss"><i class="zmdi zmdi-close"></i></a>
                                                <a href="#" data-tl-action="save"><i class="zmdi zmdi-check"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Delete</a></li>
                                                        <li><a href="#">Archive</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Duis vitae nibh molestie pharetra augue vitae</span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Delete</a></li>
                                                        <li><a href="#">Archive</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>In vel imperdiet leoorbi mollis leo sit amet quam fringilla varius mauris orci turpis</span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Delete</a></li>
                                                        <li><a href="#">Archive</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Suspendisse quis sollicitudin erosvel dictum nunc</span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Delete</a></li>
                                                        <li><a href="#">Archive</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Curabitur egestas finibus sapien quis faucibusras bibendum ut justo at sagittis. In hac habitasse platea dictumst</span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Delete</a></li>
                                                        <li><a href="#">Archive</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Suspendisse potenti. Cras dolor augue, tincidunt sit amet lorem id, blandit rutrum libero</span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Delete</a></li>
                                                        <li><a href="#">Archive</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Proin luctus dictum nisl id auctor. Nullam lobortis condimentum arcu sit amet gravida</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->
                        <!--
                        <div class="col-sm-6">
                             
                            <div id="calendar-widget"></div>

                             
                            <div class="card">
                                <div class="card-header ch-alt m-b-20">
                                    <h2>Recent Posts <small>Phasellus condimentum ipsum id auctor imperdie</small></h2>
                                    <ul class="actions">
                                        <li>
                                            <a href="#">
                                                <i class="zmdi zmdi-refresh-alt"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="zmdi zmdi-download"></i>
                                            </a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>
                                            
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li>
                                                    <a href="#">Change Date Range</a>
                                                </li>
                                                <li>
                                                    <a href="#">Change Graph Type</a>
                                                </li>
                                                <li>
                                                    <a href="#">Other Settings</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                    
                                    <button class="btn bgm-cyan btn-float"><i class="zmdi zmdi-plus"></i></button>
                                </div>
                                
                                <div class="card-body">
                                    <div class="listview">
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/profile-pics/1.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">David Belle</div>
                                                    <small class="lv-small">Cum sociis natoque penatibus et magnis dis parturient montes</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/profile-pics/2.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">Jonathan Morris</div>
                                                    <small class="lv-small">Nunc quis diam diamurabitur at dolor elementum, dictum turpis vel</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/profile-pics/3.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">Fredric Mitchell Jr.</div>
                                                    <small class="lv-small">Phasellus a ante et est ornare accumsan at vel magnauis blandit turpis at augue ultricies</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/profile-pics/4.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">Glenn Jecobs</div>
                                                    <small class="lv-small">Ut vitae lacus sem ellentesque maximus, nunc sit amet varius dignissim, dui est consectetur neque</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="lv-item" href="#">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="lv-img-sm" src="../img/profile-pics/4.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="lv-title">Bill Phillips</div>
                                                    <small class="lv-small">Proin laoreet commodo eros id faucibus. Donec ligula quam, imperdiet vel ante placerat</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="lv-footer" href="#">View All</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->
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
        
        <script src="../vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="../vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="../vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
        <script src="../vendors/sparklines/jquery.sparkline.min.js"></script>
        <script src="../vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
        
        <script src="../vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="../vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
        <script src="../vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
        <script src="../vendors/bower_components/jquery.nicescroll/jquery.nicescroll.min.js"></script>
        <script src="../vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="../vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="../vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="../vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="../js/flot-charts/curved-line-chart.js"></script>
        <script src="../js/flot-charts/line-chart.js"></script>
        <script src="../js/charts.js"></script>
        
        <script src="../js/charts.js"></script>
        <script src="../js/functions.js"></script>
        <script src="../js/demo.js"></script>

        </form>        
    </body>
</html>
