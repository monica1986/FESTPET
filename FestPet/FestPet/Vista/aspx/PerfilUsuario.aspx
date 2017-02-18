<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="FestPet.Vista.aspx.PerfilUsuario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Perfil</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <!-- Vendor CSS -->
        <link href="../vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="../vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        
        <link href="../vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
            
        <!-- CSS -->
        <link href="../css/app.min.1.css" rel="stylesheet">
        <link href="../css/app.min.2.css" rel="stylesheet">

        <style type="text/css">
            .multiline
            {
                overflow:auto;
                }
        </style>

         
             
            <script type="text/javascript">
                function clickGuardar() {
                    document.getElementById('botonGrabar').click();
                }
                function clickCambiarFoto() {
                    document.getElementById('botonCambiarFoto').click();
            }
        </script>

</head>
<body>
    <form id="form1" runat="server">
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
                <div class="container">
                    
                   
                    <div class="card" id="profile-main">
                        <div class="pm-overview c-overflow">
                            <div class="pmo-pic">
                                <div class="p-relative">
                                    <a href="#">
                                        <img id="imagenPerfil" class="img-responsive" src="../img/profile-pics/profile-pic-2.jpg" alt="" runat="server"> 
                                    </a>
                                    
                                    <a href="#" class="pmop-edit" onclick="clickCambiarFoto()">
                                        <i class="zmdi zmdi-camera"></i> <span class="hidden-xs">Cambiar Foto de Perfil</span>
                                    </a>
                                     <div style="display:none">
                                     <asp:Button ID="botonCambiarFoto" runat="server" onclick="botonCambiarFoto_Click" ></asp:Button>
                                    </div>
                                </div>

                                <div class="tab-content p-0" runat="server" id="divSubirFoto" visible="false">
                                    
                                    <asp:FileUpload ID="updateImagen" runat="server" style="width:62%"></asp:FileUpload>

                                    <asp:Button ID="botonAceptar" runat="server" onclick="botonAceptar_Click" Text="Aceptar"></asp:Button>
                                </div>
                                
                            </div>
                            
                            <div class="pmo-block pmo-contact hidden-xs">
                                <h2>Contacto</h2>
                                
                                <ul>
                                    <li><i class="zmdi zmdi-phone"></i> 
                                        <asp:Label ID="lblTelefono" runat="server" Text="0227610153"></asp:Label>
                                    </li>
                                    <li><i class="zmdi zmdi-email"></i> 
                                         <asp:Label ID="lblMail" runat="server" Text="nico.fuentesm@gmail.com"></asp:Label>
                                    </li>
                                    <li><i class="zmdi zmdi-facebook-box"></i> 
                                        <asp:Label ID="lblFacebook" runat="server" Text="nico.fuentesm"></asp:Label>
                                    </li>
                                    <li><i class="zmdi zmdi-twitter"></i>
                                        <asp:Label ID="lblTwitter" runat="server" Text="@nfuentesm (twitter.com/nfuentesm)"></asp:Label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="pm-body clearfix">
                            <ul class="tab-nav tn-justified">
                                <li class="active waves-effect"><a href="PerfilUsuario.aspx">Acerca De Mi</a></li>
                                <li class="waves-effect"><a href="FotosUsuario.aspx">Fotos</a></li>
                                <li class="waves-effect"><a href="RedesInteres.aspx">Red de Interes</a></li>
                            </ul>
                            <div class="pmb-block">
                                <div class="pmbb-header">
                                    <h2><i class="zmdi zmdi-equalizer m-r-5"></i> Infomración Relevante</h2>
                                </div>
                                <div class="pmbb-body p-l-30">
                                    <div class="pmbb-view">
                                        <asp:TextBox ID="txtInformacionRelevante" runat="server" 
                                        Text="Persona amante de los Animales." Height="100px" TextMode="MultiLine" 
                                            Width="90%" CssClass="multiline"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="pmb-block">
                                <div class="pmbb-header">
                                    <h2><i class="zmdi zmdi-account m-r-5"></i> Información Basica</h2>
                                   
                                </div>
                                <div class="pmbb-body p-l-30">
                                    <div class="pmbb-view">
                                        <dl class="dl-horizontal">
                                            <dt>Nombre</dt>
                                            <dd><asp:TextBox ID="txtNombre" runat="server" Text="Nicolas Fuentes" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Genero</dt>
                                            <dd><asp:DropDownList ID="ddlGenero" runat="server">
                                                <asp:ListItem>SELECCIONE</asp:ListItem>
                                                <asp:ListItem Selected="True">Masculino</asp:ListItem>
                                                <asp:ListItem>Femenino</asp:ListItem>
                                            </asp:DropDownList></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Fecha Nacimiento</dt>
                                             <dd><asp:TextBox ID="txtFechaNacimiento" runat="server" Text="24/07/1990" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Estado Civil</dt>
                                            <dd><asp:DropDownList ID="ddlEstadoCivil" runat="server">
                                                <asp:ListItem>SELECCIONE</asp:ListItem>
                                                <asp:ListItem Selected="True">Soltero</asp:ListItem>
                                                <asp:ListItem>Casado</asp:ListItem>
                                                <asp:ListItem>Viudo/a</asp:ListItem>
                                                <asp:ListItem>Separado</asp:ListItem>
                                                <asp:ListItem>Unión Civil</asp:ListItem>
                                            </asp:DropDownList></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Tipo Usuario</dt>
                                            <dd><asp:DropDownList ID="ddlTipoUsuario" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="ddlTipoUsuario_SelectedIndexChanged">
                                                <asp:ListItem>SELECCIONE</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="0">Usuario</asp:ListItem>
                                                <asp:ListItem Value="1">Empresa</asp:ListItem>
                                            </asp:DropDownList></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>

                            <div class="pmb-block" runat="server" id="divEmpresa" visible="false">
                                <div class="pmbb-header">
                                    <h2><i class="zmdi zmdi-account m-r-5"></i> Información Empresa</h2>
                                </div>
                                <div class="pmbb-body p-l-30">
                                    <div class="pmbb-view">
                                        <dl class="dl-horizontal">
                                            <dt>Nombre Empresa</dt>
                                            <dd><asp:TextBox ID="txtNombreEmpresa" runat="server" Text="" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Rut Empresa</dt>
                                            <dd><asp:TextBox ID="txtRutEmpresa" runat="server" Text="" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                           <dt>Direcciom</dt>
                                           <dd><asp:TextBox ID="txtDireccionEmpresa" runat="server" Text="" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                           <dt>URL pagina</dt>
                                           <dd><asp:TextBox ID="txtUrlPagina" runat="server" Text="" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Tipo Empresa</dt>
                                            <dd><asp:DropDownList ID="ddlTipoEmpresa" runat="server">
                                                <asp:ListItem Selected="True">SELECCIONE</asp:ListItem>
                                                <asp:ListItem>Comida para Mascotas</asp:ListItem>
                                                <asp:ListItem>Veterinaria</asp:ListItem>
                                                <asp:ListItem>Peluqueria</asp:ListItem>
                                                <asp:ListItem>Hotel7Spa</asp:ListItem>
                                                <asp:ListItem>Criadero</asp:ListItem>
                                            </asp:DropDownList></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Animales Enfocados</dt>
                                            <dd><asp:DropDownList ID="ddlAnimalEnfocado" runat="server">
                                                    <asp:ListItem Selected="True">SELECCIONE</asp:ListItem>
                                                    <asp:ListItem>Perro</asp:ListItem>
                                                    <asp:ListItem>Gato</asp:ListItem>
                                                    <asp:ListItem>Caballo</asp:ListItem>
                                                    <asp:ListItem>Canario</asp:ListItem>
                                                    <asp:ListItem>Hámster</asp:ListItem>
                                                    <asp:ListItem>Loro</asp:ListItem>
                                                    <asp:ListItem>Pez</asp:ListItem>
                                                    <asp:ListItem>Hurno</asp:ListItem>
                                                </asp:DropDownList></dd>
                                        </dl>

                                        <dl class="dl-horizontal">
                                             <dt>Foto Publicidad</dt>
                                             <dd>
                                                <asp:FileUpload ID="subirPublicidad" runat="server" style="width:62%"></asp:FileUpload>
                                                <asp:Button ID="botonSubirFotoEmpresa" runat="server" onclick="botonSubirFotoEmpresa_Click" Text="Aceptar"></asp:Button>
                                            </dd>
                                            
                                         </dl>
                                         <dl class="dl-horizontal">
                                            <dt>Obtener Publicidad</dt>
                                            <dd><asp:Button ID="btnObtenerPublicidad" runat="server" Text="Obtener" 
                                                    onclick="btnObtenerPublicidad_Click"></asp:Button></dd>
                                        </dl>

                                        <div class="pmb-block" runat="server" id="divPublicidad" visible="false">
                                            <div class="pmbb-header">
                                                <h2><i class="zmdi zmdi-equalizer m-r-5"></i> Infomración Publicidad</h2>
                                            </div>
                                            <div class="pmbb-body p-l-30">
                                                <div class="pmbb-view">
                                                    <dl class="dl-horizontal">
                                                        <dt>Duración</dt>
                                                        <dd><asp:DropDownList ID="ddlDuracionPublicidad" runat="server">
                                                            <asp:ListItem Selected="True">SELECCIONE</asp:ListItem>
                                                            <asp:ListItem>1 Mes</asp:ListItem>
                                                            <asp:ListItem>2 Mes</asp:ListItem>
                                                            <asp:ListItem>3 Mes</asp:ListItem>
                                                            <asp:ListItem>4 Mes</asp:ListItem>
                                                            <asp:ListItem>5 Mes</asp:ListItem>
                                                            <asp:ListItem>6 Mes</asp:ListItem>
                                                            <asp:ListItem>8 Mes</asp:ListItem>
                                                            <asp:ListItem>10 Mes</asp:ListItem>
                                                            <asp:ListItem>1 año</asp:ListItem>
                                                        </asp:DropDownList></dd>
                                                    </dl>
                                                    <dl class="dl-horizontal">
                                                        <dt>Animal Enfocad</dt>
                                                        <dd><asp:DropDownList ID="ddlAnimalPublicidad" runat="server">
                                                                <asp:ListItem Selected="True">SELECCIONE</asp:ListItem>
                                                                <asp:ListItem>Perro</asp:ListItem>
                                                                <asp:ListItem>Gato</asp:ListItem>
                                                                <asp:ListItem>Caballo</asp:ListItem>
                                                                <asp:ListItem>Canario</asp:ListItem>
                                                                <asp:ListItem>Hámster</asp:ListItem>
                                                                <asp:ListItem>Loro</asp:ListItem>
                                                                <asp:ListItem>Pez</asp:ListItem>
                                                                <asp:ListItem>Hurno</asp:ListItem>
                                                            </asp:DropDownList></dd>
                                                    </dl>
                                                    <dl class="dl-horizontal">
                                                        <dt>Tipo Publicidad</dt>
                                                        <dd><asp:DropDownList ID="ddlTipoPublicidad" runat="server">
                                                                <asp:ListItem Selected="True">SELECCIONE</asp:ListItem>
                                                                <asp:ListItem>Alimento</asp:ListItem>
                                                                <asp:ListItem>Medicina</asp:ListItem>
                                                                <asp:ListItem>Hotel/Spa</asp:ListItem>
                                                                <asp:ListItem>Accesorios</asp:ListItem>
                                                            </asp:DropDownList></dd>
                                                    </dl>
                                                    <dl class="dl-horizontal">
                                                         <dt>Foto Publicidad</dt>
                                                         <dd>
                                                            <asp:FileUpload ID="fotoPublicidad" runat="server" style="width:62%"></asp:FileUpload>
                                                            <asp:Button ID="botonFotoPublicidad" runat="server" onclick="botonFotoPublicidad_Click" Text="Aceptar"></asp:Button>
                                                        </dd>
                                                        
                                                     </dl>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                       
                            <div class="pmb-block">
                                <div class="pmbb-header">
                                    <h2><i class="zmdi zmdi-phone m-r-5"></i> Información de contacto</h2>
                                </div>
                                <div class="pmbb-body p-l-30">
                                    <div class="pmbb-view">
                                        <dl class="dl-horizontal">
                                            <dt>Telefono</dt>
                                            <dd><asp:TextBox ID="txtTelefono" runat="server" Text="0221234567" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Email</dt>
                                            <dd><asp:TextBox ID="txtEmail" runat="server" Text="nico.fuentesm@gmail.com" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Facebook</dt>
                                            <dd><asp:TextBox ID="txtFacebook" runat="server" Text="nico.fuentesm" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                        <dl class="dl-horizontal">
                                            <dt>Twitter</dt>
                                            <dd><asp:TextBox ID="txtTwitter" runat="server" Text="@nfuentes" Width="200px"></asp:TextBox></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>

                            <div class="pmb-block" runat="server" id="divCantidadMascotas" >
                                <div class="pmbb-header">
                                    <h2><i class="zmdi zmdi-zmdi-block m-r-5"></i> Información Sobre mis Mascotas</h2>
                                </div>
                                <div class="pmbb-body p-l-30">
                                    <div class="pmbb-view">
                                        <dl class="dl-horizontal">
                                            <dt>Numero de Mascotas</dt>
                                            <dd><asp:TextBox ID="txtNumeroMascotas" runat="server" Text="3" Width="30px" 
                                                    AutoPostBack="True" ontextchanged="txtNumeroMascotas_TextChanged"></asp:TextBox></dd>
                                        </dl>
                                        <br />

                                         <asp:Panel ID="pnlMascotasRegistrar" runat="server" Visible="false">
                                
                                         </asp:Panel>

                                         <asp:Panel ID="pnlMascotasIngreso" runat="server" Visible="false">
                                            <dl class="dl-horizontal">
                                            <dt>Mascota N°1</dt>
                                                <dd><asp:TextBox ID="TextBox1" runat="server" Text="Luna" Width="200px"></asp:TextBox></dd>
                                            </dl>
                                            <dl class="dl-horizontal">
                                                <dt>Tipo de Mascota</dt>
                                                <dd><asp:DropDownList ID="DropDownList3" runat="server">
                                                    <asp:ListItem>SELECCIONE</asp:ListItem>
                                                    <asp:ListItem Selected="True">Perro</asp:ListItem>
                                                    <asp:ListItem>Gato</asp:ListItem>
                                                    <asp:ListItem>Caballo</asp:ListItem>
                                                    <asp:ListItem>Canario</asp:ListItem>
                                                    <asp:ListItem>Hámster</asp:ListItem>
                                                    <asp:ListItem>Loro</asp:ListItem>
                                                    <asp:ListItem>Pez</asp:ListItem>
                                                    <asp:ListItem>Hurno</asp:ListItem>
                                                </asp:DropDownList></dd>
                                            </dl>
                                            <dl class="dl-horizontal">
                                                <dt>Raza</dt>
                                                <dd><asp:DropDownList ID="DropDownList5" runat="server">
                                                    <asp:ListItem>SELECCIONE</asp:ListItem>
                                                    <asp:ListItem Selected="True">Beagle</asp:ListItem>
                                                    <asp:ListItem>bóxer</asp:ListItem>
                                                    <asp:ListItem>Chow Chow</asp:ListItem>
                                                    <asp:ListItem>Cockerspaniel</asp:ListItem>
                                                    <asp:ListItem>For Terrier</asp:ListItem>
                                                    <asp:ListItem>Labrador</asp:ListItem>
                                                    <asp:ListItem>Pekinés</asp:ListItem>
                                                    <asp:ListItem>Yorkshire terrier</asp:ListItem>
                                                </asp:DropDownList></dd>
                                            </dl>
                                            <br />
                                            <dl class="dl-horizontal">
                                                <dt>Mascota N°2</dt>
                                                <dd><asp:TextBox ID="txtxMascota2" runat="server" Text="Tofy" Width="200px"></asp:TextBox></dd>
                                            </dl>
                                            <dl class="dl-horizontal">
                                                <dt>Tipo de Mascota</dt>
                                               <dd><asp:DropDownList ID="DropDownList4" runat="server">
                                                    <asp:ListItem>SELECCIONE</asp:ListItem>
                                                    <asp:ListItem>Perro</asp:ListItem>
                                                    <asp:ListItem Selected="True">Gato</asp:ListItem>
                                                    <asp:ListItem>Caballo</asp:ListItem>
                                                    <asp:ListItem>Canario</asp:ListItem>
                                                    <asp:ListItem>Hámster</asp:ListItem>
                                                    <asp:ListItem>Loro</asp:ListItem>
                                                    <asp:ListItem>Pez</asp:ListItem>
                                                    <asp:ListItem>Hurno</asp:ListItem>
                                                </asp:DropDownList></dd>
                                            </dl>
                                            <dl class="dl-horizontal">
                                                <dt>Raza</dt>
                                                <dd><asp:DropDownList ID="DropDownList6" runat="server">
                                                    <asp:ListItem>SELECCIONE</asp:ListItem>
                                                    <asp:ListItem Selected="True">Siamés</asp:ListItem>
                                                    <asp:ListItem>Angora</asp:ListItem>
                                                    <asp:ListItem>Persa</asp:ListItem>
                                                    <asp:ListItem>Azul</asp:ListItem>
                                                    <asp:ListItem>Begala</asp:ListItem>
                                                    <asp:ListItem>Bosque de Noruega</asp:ListItem>
                                                    <asp:ListItem>Sagrado de Birmania</asp:ListItem>
                                                    <asp:ListItem>Bombay</asp:ListItem>
                                                </asp:DropDownList></dd>
                                            </dl>
                                            <br />
                                            <br />
                                            <dl class="dl-horizontal">
                                                <dt>Mascota N°3</dt>
                                                <dd><asp:TextBox ID="txtxMascota3" runat="server" Text="Plutonio" Width="200px"></asp:TextBox></dd>
                                            </dl>
                                            <dl class="dl-horizontal">
                                                <dt>Tipo de Mascota</dt>
                                                <dd><asp:DropDownList ID="DropDownList2" runat="server">
                                                    <asp:ListItem>SELECCIONE</asp:ListItem>
                                                    <asp:ListItem>Perro</asp:ListItem>
                                                    <asp:ListItem>Gato</asp:ListItem>
                                                    <asp:ListItem>Caballo</asp:ListItem>
                                                    <asp:ListItem>Canario</asp:ListItem>
                                                    <asp:ListItem>Hámster</asp:ListItem>
                                                    <asp:ListItem>Loro</asp:ListItem>
                                                    <asp:ListItem>Pez</asp:ListItem>
                                                    <asp:ListItem Selected="True">Hurno</asp:ListItem>
                                                </asp:DropDownList></dd>
                                            </dl>
                                            <dl class="dl-horizontal">
                                                <dt>Raza</dt>
                                                <dd><asp:DropDownList ID="DropDownList7" runat="server">
                                                    <asp:ListItem>SELECCIONE</asp:ListItem>
                                                    <asp:ListItem Selected="True">Whippet</asp:ListItem>
                                                    <asp:ListItem>bull</asp:ListItem>
                                                    <asp:ListItem>Angora</asp:ListItem>
                                                    <asp:ListItem>Semiangora</asp:ListItem>
                                                </asp:DropDownList></dd>
                                            </dl>
                                         </asp:Panel>
                                        
                                    </div>
                                </div>
                            </div>
                            <br /><br />
                            <div class="m-t-30" style="text-align: center;">
                                <a class="btn btn-primary btn-sm"  onclick="clickGuardar()">Grabar</a>
                                <a data-pmb-action="reset" class="btn btn-link btn-sm">Cancelar</a>
                            </div>
                            <div style="display:none">
                                <asp:Button ID="botonGrabar" runat="server" onclick="botonGrabar_Click" ></asp:Button>
                            </div>
                            <br /><br />
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
        <script src="../vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="../vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="../vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="../js/functions.js"></script>
        <script src="../js/demo.js"></script>
    
        </form>
    </body>
</html>
