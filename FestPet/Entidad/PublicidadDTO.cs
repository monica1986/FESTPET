using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
   public class PublicidadDTO
    {
        private int publicidadId;

        public int PublicidadId
        {
            get { return publicidadId; }
            set { publicidadId = value; }
        }
        private byte imagen;

        public byte Imagen
        {
            get { return imagen; }
            set { imagen = value; }
        }
        private string url;

        public string Url
        {
            get { return url; }
            set { url = value; }
        }
        private DateTime fecha;

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        private int vigencia;

        public int Vigencia
        {
            get { return vigencia; }
            set { vigencia = value; }
        }
        private int cantidadVisitas;

        public int CantidadVisitas
        {
            get { return cantidadVisitas; }
            set { cantidadVisitas = value; }
        }

    }
}
