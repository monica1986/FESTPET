using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Negocio;
using System.Web.Script.Serialization;
using Entidad;

namespace FestPet
{
    /// <summary>
    /// Descripción breve de Test
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Test : System.Web.Services.WebService
    {

        [WebMethod]
        public string leerMensaje()
        {
            MensajeDTO msgDTO = new MensajeDTO();
            MensajeBO msgBO = new MensajeBO();
            msgDTO = msgBO.muestraMSG();
            JavaScriptSerializer json = new JavaScriptSerializer();
            //Context.Response.Write(json.Serialize(msgDTO));
            return (json.Serialize(msgDTO));
           
        }
    }
}
