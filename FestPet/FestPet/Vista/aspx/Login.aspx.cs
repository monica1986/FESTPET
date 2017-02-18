using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;

namespace FestPet.Vista.aspx
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void botonIngresar_Click(object sender, EventArgs e)
        {
            List<string> listaEmpresa = new List<string>();
            if (Session["empresa"] != null)
            {
                listaEmpresa = (List<string>)Session["empresa"];
            }

            if (cajaTextoUsuario.Text == "nico.fuentesm")
            {
                Session.Remove("empresa");
                Response.Redirect("Inicio.aspx");
                Session.Add("ingresar", true);
                Session.Add("registrar", false);
            }
            else if (listaEmpresa.Count > 0)
            {
                if ("Empresa" == listaEmpresa[5].ToString())
                {
                    if (cajaTextoUsuario.Text == listaEmpresa[6].ToString())
                    {
                        Response.Redirect("Inicio.aspx");
                        Session.Add("ingresar", true);
                        Session.Add("registrar", false);
                    }
                }
            }
            else
            {
                lblMensaje.Text = "Usuario no Existe.";
                divMensajeUsuario.Attributes.Add("style", "display:");
                divMensajeUsuarioExito.Attributes.Add("style", "display:none");
            }
        }

        protected void botonRegistrar_Click(object sender, EventArgs e)
        {
            UsuarioDTO usuarioDTO = new UsuarioDTO();
            if (!string.IsNullOrEmpty(cajaTextoUsuarioNuevo.Text) && !string.IsNullOrEmpty(cajaTextoPassNueva.Text)
                && !string.IsNullOrEmpty(cajaTextoMail.Text))
            {
                usuarioDTO.NombreUsuario = cajaTextoUsuarioNuevo.Text.Trim();
                usuarioDTO.Clave = cajaTextoPassNueva.Text.Trim();
                usuarioDTO.Email = cajaTextoMail.Text.Trim();

                Session.Add("usuarioDTO", usuarioDTO);
                Session.Add("registrar", true);
                Session.Add("ingresar", false);
                Response.Redirect("PerfilUsuario.aspx");
            }
            else
            {
                lblMensaje.Text = "Debe llenar todos los campos.";
                divMensajeUsuario.Attributes.Add("style", "display:");
                divMensajeUsuarioExito.Attributes.Add("style", "display:none");
            }
            

        }

        protected void botonRecuperarClave_Click(object sender, EventArgs e)
        {
            Session.Add("ingresar", false);
            Session.Add("registrar", false);
            lblMensajeExito.Text = "Correo Enviado con Exito.";
            divMensajeUsuarioExito.Attributes.Add("style", "display:");
            divMensajeUsuario.Attributes.Add("style", "display:none");
        }
       
    }
}