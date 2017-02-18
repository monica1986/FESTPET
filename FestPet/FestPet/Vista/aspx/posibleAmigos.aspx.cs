﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FestPet.Vista.aspx
{
    public partial class posibleAmigos : System.Web.UI.Page
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
    }
}