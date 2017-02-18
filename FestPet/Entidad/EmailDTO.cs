using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class EmailDTO
    {
        private int emailId;

        public int EmailId
        {
            get { return emailId; }
            set { emailId = value; }
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
    }
}
