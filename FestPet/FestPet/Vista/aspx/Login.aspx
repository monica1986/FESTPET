<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FestPet.Vista.aspx.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        
        <!-- Vendor CSS -->
        <link href="../vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
            
        <!-- CSS -->
        <link href="../css/app.min.1.css" rel="stylesheet">
        <link href="../css/app.min.2.css" rel="stylesheet">

        <script type="text/javascript">
            function clickIngresar() {
                document.getElementById('botonIngresar').click();
            }
            function clickRegistrar() {
                document.getElementById('botonRegistrar').click();
            }
            function clickRecuperarClave() {
                document.getElementById('botonRecuperarClave').click();
            }
        </script>

</head>
<body class="login-content">
    <form id="form1" runat="server">
        <!-- Login -->
        <div class="lc-block toggled" id="l-login">
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                <div class="fg-line">
                    <asp:TextBox ID="cajaTextoUsuario" runat="server"  class="form-control" placeholder="Usuario"></asp:TextBox>
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                <div class="fg-line">
                     <asp:TextBox ID="cajaTextoClave" runat="server"  class="form-control" placeholder="Clave" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            
            <div class="clearfix"></div>
            
            <a class="btn btn-login btn-danger btn-float" onclick="clickIngresar()"></a>

            <div style="display:none">
             <asp:Button ID="botonIngresar" runat="server" onclick="botonIngresar_Click"></asp:Button>
            </div>

            <ul class="login-navigation">
                <li data-block="#l-register" class="bgm-red">Registrar</li>
                <li data-block="#l-forget-password" class="bgm-orange">Olvidaste tu Clave?</li>
            </ul>
        </div>
        
        <!-- Register -->
        <div class="lc-block" id="l-register">
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                <div class="fg-line">
                    <asp:TextBox ID="cajaTextoUsuarioNuevo" runat="server" class="form-control" placeholder="Usuario"></asp:TextBox>
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                <div class="fg-line">
                    <asp:TextBox ID="cajaTextoMail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                <div class="fg-line">
                    <asp:TextBox ID="cajaTextoPassNueva" runat="server" class="form-control" placeholder="Clave" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            
            <div class="clearfix"></div>
            
             <a class="btn btn-login btn-danger btn-float" onclick="clickRegistrar()"></a>

            <div style="display:none">
             <asp:Button ID="botonRegistrar" runat="server" onclick="botonRegistrar_Click" ></asp:Button>
            </div>
            
            <ul class="login-navigation">
                <li data-block="#l-login" class="bgm-green">Iniciar Sesion</li>
                <li data-block="#l-forget-password" class="bgm-orange">Olvidaste tu Clave?</li>
            </ul>
        </div>
        
        <!-- Forgot Password -->
        <div class="lc-block" id="l-forget-password">
            <p class="text-left">Ingresa tu correo para enviar tu clave.</p>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                <div class="fg-line">
                    <asp:TextBox ID="cajaTextoMailRecuperar" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                </div>
            </div>
            
            <a class="btn btn-login btn-danger btn-float" onclick="clickRecuperarClave()"></a>

            <div style="display:none">
             <asp:Button ID="botonRecuperarClave" runat="server" 
                    onclick="botonRecuperarClave_Click"  ></asp:Button>
            </div>
            
            <ul class="login-navigation">
                <li data-block="#l-login" class="bgm-green">Iniciar Sesion</li>
                <li data-block="#l-register" class="bgm-red">Registrar</li>
            </ul>

        </div>
        <br /><br /><br /><br /><br />
        <asp:Panel ID="panelMensajes" runat="server">
            <div id="divMensajeUsuario" class="alert alert-danger" role="alert" runat="server"
                style="display:none">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </div>
            <div id="divMensajeUsuarioExito" class="alert alert-success" role="alert" runat="server"
                style="display:none">
                <asp:Label ID="lblMensajeExito" runat="server"></asp:Label>
            </div>
        </asp:Panel>
        

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
        
        <script src="../vendors/bower_components/Waves/dist/waves.min.js"></script>
        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="../js/functions.js"></script>
        </form>
    </body>
</html>
