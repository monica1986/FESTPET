using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class PostDTO
    {
        private int postId;

        public int PostId
        {
            get { return postId; }
            set { postId = value; }
        }
        private string contenido;

        public string Contenido
        {
            get { return contenido; }
            set { contenido = value; }
        }
        private string usuario;

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }
        private DateTime fecha;

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

    }
}
