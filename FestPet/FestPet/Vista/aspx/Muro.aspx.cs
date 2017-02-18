using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FestPet.Vista.aspx
{
    public partial class Muro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> listaEmpresa = new List<string>();
            if (Session["empresa"] != null)
            {
                listaEmpresa = (List<string>)Session["empresa"];


                if ("Empresa" == listaEmpresa[5].ToString())
                {
                    lblUsuario.Text = listaEmpresa[6].ToString();

                }

            }
            else
            {
                lblUsuario.Text = "Nicolas Fuentes";

            }
        }

        protected void lkbSalir_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void botonPublicar_Click(object sender, EventArgs e)
        {
            string comentario = string.Empty;
            comentario = txtComentario.InnerText.ToString().Trim();
            string fileName;

            if (!string.IsNullOrEmpty(comentario))
            {
                fileName = @"C:\\Users\\nico\\Documents\\Visual Studio 2010\\Projects\\FestPet\\FestPet\\Vista\\img\\publicacion\\";
                if (updateImagen.HasFile)
                {
                    updateImagen.SaveAs(fileName + updateImagen.FileName);
                }

                Literal literal;
                literal = new Literal();
                literal.Text = " <div class='card'>" +
                                    "<div class='card-header'>" +
                                        " <div class='media'>" +
                                            "<div class='pull-left'>" +
                                                "<img class='lv-img' src='../img/profile-pics/1.jpg' alt=''>" +
                                            "</div>" +
                                            "<div class='media-body m-t-5'>" +
                                                "<h2>Monica Barrera <small>30 de Agosto 2015</small></h2>" +
                                            "</div>" +
                                        "</div>" +
                                    "</div>" +
                                    "<div class='card-body card-padding'> <p>" +
                                    "<spam>" + comentario + "</spam>" +
                                     "</p>" +
                                    "<div class='wall-img-preview lightbox clearfix'>" +
                                        "<div class='wip-item' data-src='../img/publicacion/" + updateImagen.FileName +
                                        "' style='background-image: url(../img/publicacion/" + updateImagen.FileName + ");'>" +
                                            "<div class='lightbox-item'></div>" +
                                        "</div>" +
                                    "</div>" +
                                    "<ul class='wall-attrs clearfix list-inline list-unstyled'>" +
                                        "<li class='wa-stats'>" +
                                            "<span><i class='zmdi zmdi-comments'></i> 0</span>" +
                                            "<span class='active'><i class='zmdi zmdi-favorite'></i> 0</span>" +
                                        "</li>" +
                                    "</ul>" +
                                "</div>" +
                                "<div class='wall-comment-list'>" +
                                    "<div class='wcl-form'>" +
                                        "<div class='wc-comment'>" +
                                            "<div class='wcc-inner wcc-toggle'> Escribe un comentario..." +
                                            "</div>" +
                                        "</div>" +
                                    "</div>" +
                                "</div>" +
                            "</div>";
                txtComentario.InnerText = string.Empty;
                List<Literal> listaLiteral = new List<Literal>();
                if (Session["comenatrios"] == null)
                {
                    listaLiteral.Add(literal);
                    Session.Add("comenatrios", listaLiteral);
                }
                else
                {
                    listaLiteral = (List<Literal>)Session["comenatrios"];
                    listaLiteral.Add(literal);
                }

                for (int i = listaLiteral.Count; i > 0; i--)
                {
                    pnlComentarios.Controls.Add(listaLiteral[i - 1]);
                }
            }
        }
    }
}