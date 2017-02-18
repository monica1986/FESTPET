using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    public class NotificacionDTO
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string texto;

        public string Texto
        {
            get { return texto; }
            set { texto = value; }
        }
        private DateTime fecha;

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        private string urlImagen;

        public string UrlImagen
        {
            get { return urlImagen; }
            set { urlImagen = value; }
        }
        private int mnsjNuevo;

        public int MnsjNuevo
        {
            get { return mnsjNuevo; }
            set { mnsjNuevo = value; }
        }
        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

    }
}
