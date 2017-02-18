using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;

namespace FestPet.Vista.aspx
{
    public partial class PerfilUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioDTO usuarioDTO = new UsuarioDTO();
                usuarioDTO = (UsuarioDTO)Session["usuarioDTO"];

                bool tipoIngresoRegistrar = false;
                tipoIngresoRegistrar = Convert.ToBoolean(Session["registrar"]);

                bool tipoIngresoInicio = false;
                tipoIngresoInicio = Convert.ToBoolean(Session["ingresar"]);

                if (tipoIngresoRegistrar)
                {
                    lblTelefono.Text = string.Empty;
                    lblMail.Text = string.Empty;
                    lblFacebook.Text = string.Empty;
                    lblTwitter.Text = string.Empty;
                    txtInformacionRelevante.Text = string.Empty;
                    txtNombre.Text = string.Empty;
                    ddlGenero.SelectedIndex = 0;
                    txtFechaNacimiento.Text = string.Empty;
                    ddlEstadoCivil.SelectedIndex = 0;
                    ddlTipoUsuario.SelectedIndex = 0;
                    txtTelefono.Text = string.Empty;
                    txtEmail.Text = usuarioDTO.Email;
                    txtFacebook.Text = string.Empty;
                    txtTwitter.Text = string.Empty;
                    txtNumeroMascotas.Text = string.Empty;
                    pnlMascotasIngreso.Visible = false;
                    pnlMascotasRegistrar.Visible = true;
                    imagenPerfil.Src = "../img/profile-pics/default.jpg";

                }
                if (tipoIngresoInicio)
                {

                    lblUsuario.Text = "Nicolas Fuentes";
                }

                List<string> listaEmpresa = new List<string>();
                if (Session["empresa"] != null)
                {
                    listaEmpresa = (List<string>)Session["empresa"];

                    txtInformacionRelevante.Text = listaEmpresa[0].ToString();
                    txtNombre.Text = listaEmpresa[1].ToString();
                    ddlGenero.SelectedItem.Text = listaEmpresa[2].ToString();
                    txtFechaNacimiento.Text = listaEmpresa[3].ToString();
                    ddlEstadoCivil.SelectedItem.Text = listaEmpresa[4].ToString();
                    ddlTipoUsuario.SelectedItem.Text = listaEmpresa[5].ToString();

                    imagenPerfil.Src = "../img/profile-pics/Koala.jpg";
                    if ("Empresa" == listaEmpresa[5].ToString())
                    {
                        divEmpresa.Visible = true;
                        txtNombreEmpresa.Text = listaEmpresa[6].ToString();
                        lblUsuario.Text = listaEmpresa[6].ToString();
                        txtRutEmpresa.Text = listaEmpresa[7].ToString();
                        txtDireccionEmpresa.Text = listaEmpresa[8].ToString();
                        txtUrlPagina.Text = listaEmpresa[9].ToString();
                        ddlTipoEmpresa.SelectedItem.Text = listaEmpresa[10].ToString();
                        ddlAnimalEnfocado.SelectedItem.Text = listaEmpresa[11].ToString();
                    }

                }
            }
        }

        protected void lkbSalir_Click(object sender, EventArgs e)
        {
            //Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void botonGrabar_Click(object sender, EventArgs e)
        {
            List<String> listaEmpresa = new List<string>();
            listaEmpresa.Add(txtInformacionRelevante.Text.Trim());
            listaEmpresa.Add(txtNombre.Text.Trim());
            listaEmpresa.Add(ddlGenero.SelectedItem.Text.Trim());
            listaEmpresa.Add(txtFechaNacimiento.Text.Trim());
            listaEmpresa.Add(ddlEstadoCivil.SelectedItem.Text.Trim());
            listaEmpresa.Add(ddlTipoUsuario.SelectedItem.Text.Trim());

            string tipoUsuario = ddlTipoUsuario.SelectedItem.Text;

            if (tipoUsuario.Equals("Empresa"))
            {
                listaEmpresa.Add(txtNombreEmpresa.Text.Trim());
                listaEmpresa.Add(txtRutEmpresa.Text.Trim());
                listaEmpresa.Add(txtDireccionEmpresa.Text.Trim());
                listaEmpresa.Add(txtUrlPagina.Text.Trim());
                listaEmpresa.Add(ddlTipoEmpresa.SelectedItem.Text.Trim());
                listaEmpresa.Add(ddlAnimalEnfocado.SelectedItem.Text.Trim());

                if (divPublicidad.Visible)
                {
                    listaEmpresa.Add(ddlDuracionPublicidad.SelectedItem.Text.Trim());
                    listaEmpresa.Add(ddlAnimalPublicidad.SelectedItem.Text.Trim());
                    listaEmpresa.Add(ddlTipoPublicidad.SelectedItem.Text.Trim());
                }
            }
            else if (tipoUsuario.Equals("Usuario"))
            {
                
            }

            Session.Add("empresa", listaEmpresa);

            if (divPublicidad.Visible)
            {
                ClientScript.RegisterStartupScript(GetType(), "mensaje", "javascript:alert('Se a enviado un correo con los pasos a seguir para pagar la publicidad. Muchas Gracias!');", true);
            }
        }

        protected void txtNumeroMascotas_TextChanged(object sender, EventArgs e)
        {
            int numeroMascotas = Convert.ToInt32(txtNumeroMascotas.Text.Trim());

            for (int i = 0; i < numeroMascotas; i++)
			{

                Literal literal;
                literal = new Literal();
                literal.Text = "<dl class='dl-horizontal'>" +
                            "<dt>Mascota N° " + (i+1) + " </dt>" +
                            "<dd>";
                pnlMascotasRegistrar.Controls.Add(literal);
                TextBox txtNombre = new TextBox();
                txtNombre.ID = "txtNombre" + i.ToString();
                txtNombre.Width = 200;
                pnlMascotasRegistrar.Controls.Add(txtNombre);
                             
                literal = new Literal();
                literal.Text = "</dd>" +
                                    "</dl>" +
                                    "<dl class='dl-horizontal'>" +
                                        "<dt>Tipo de Mascota</dt> <dd>";
                pnlMascotasRegistrar.Controls.Add(literal);
                DropDownList ddlTipoMascota = new DropDownList();
                ddlTipoMascota.ID = "ddlTipoMascota" + i;
                ddlTipoMascota.Items.Add("SELECCIONE");
                ddlTipoMascota.Items.Add("Perro");
                ddlTipoMascota.Items.Add("Gato");
                ddlTipoMascota.Items.Add("Caballo");
                ddlTipoMascota.Items.Add("Pajaro");
                ddlTipoMascota.Items.Add("Hámster");
                ddlTipoMascota.Items.Add("Pez");
                ddlTipoMascota.Items.Add("Hurno");
                ddlTipoMascota.SelectedIndex = 0;
                pnlMascotasRegistrar.Controls.Add(ddlTipoMascota);                   
                literal = new Literal();
                literal.Text = "</dd> </dl>";
                                    //"<dl class='dl-horizontal'>" +
                                    //    "<dt>Raza</dt>" +
                                    //    "<dd>";
                pnlMascotasRegistrar.Controls.Add(literal);

                                        //<asp:DropDownList ID='DropDownList" + i + "' runat='server'>" +
                                        //    "<asp:ListItem Selected='True'>SELECCIONE</asp:ListItem>" +
                                        //"</asp:DropDownList>
                literal = new Literal();
                literal.Text = 
                    // "</dd>" +
                //                    "</dl>" +
                                    "<br />";
                pnlMascotasRegistrar.Controls.Add(literal);
            }
        }

        protected void botonCambiarFoto_Click(object sender, EventArgs e)
        {
            divSubirFoto.Visible = true;
        }

        protected void botonAceptar_Click(object sender, EventArgs e)
        {
            string fileName;
            fileName = @"C:\\Users\\nico\\Documents\\Visual Studio 2010\\Projects\\FestPet\\FestPet\\Vista\\img\\profile-pics\\";
            if (updateImagen.HasFile)
            {
                updateImagen.SaveAs(fileName + updateImagen.FileName);
            }
            imagenPerfil.Src = "../img/profile-pics/" + updateImagen.FileName;
            divSubirFoto.Visible = false;
        }

        protected void ddlTipoUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tipoUsuario = ddlTipoUsuario.SelectedItem.Text;

            if (tipoUsuario.Equals("Empresa"))
            {
                divEmpresa.Visible = true;
                divCantidadMascotas.Visible = false;
            }
            else if (tipoUsuario.Equals("Usuario"))
            {
                divEmpresa.Visible = false;
                divCantidadMascotas.Visible = true;
            }
        }

        protected void botonSubirFotoEmpresa_Click(object sender, EventArgs e)
        {
            string fileName;
            fileName = @"C:\\Users\\nico\\Documents\\Visual Studio 2010\\Projects\\FestPet\\FestPet\\Vista\\img\\\publicidad\\";
            if (subirPublicidad.HasFile)
            {
                subirPublicidad.SaveAs(fileName + subirPublicidad.FileName);
            }
        }

        protected void btnObtenerPublicidad_Click(object sender, EventArgs e)
        {
            divPublicidad.Visible = true;
        }

        protected void botonFotoPublicidad_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(txtNombreEmpresa.Text.Trim()))
            {
                string fileName;
                fileName = @"C:\\Users\\nico\\Documents\\Visual Studio 2010\\Projects\\FestPet\\FestPet\\Vista\\img\\\publicidad\\";
                if (fotoPublicidad.HasFile)
                {
                    fotoPublicidad.SaveAs(fileName + txtNombreEmpresa.Text.Trim() + "-" + fotoPublicidad.FileName);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "mensaje", "javascript:alert('Debe ingresar Nombre Empresa');", true);
            }
        }
    }
}