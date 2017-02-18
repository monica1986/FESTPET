using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class MensajeDTO
    {
        private int mensajeId;

        public int MensajeId
        {
            get { return mensajeId; }
            set { mensajeId = value; }
        }
        private string emisor;

        public string Emisor
        {
            get { return emisor; }
            set { emisor = value; }
        }
        private string contenido;

        public string Contenido
        {
            get { return contenido; }
            set { contenido = value; }
        }
        private string destinatario;

        public string Destinatario
        {
            get { return destinatario; }
            set { destinatario = value; }
        }
        private DateTime fecha;

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        private string urlPerfil;

        public string UrlPerfil
        {
            get { return urlPerfil; }
            set { urlPerfil = value; }
        }

        private int mnsjNuevo;

        public int MnsjNuevo
        {
            get { return mnsjNuevo; }
            set { mnsjNuevo = value; }
        }
    }
}
