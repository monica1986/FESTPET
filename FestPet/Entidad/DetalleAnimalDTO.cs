using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class DetalleAnimalDTO
    {
        private int detalleId;

        public int DetalleId
        {
            get { return detalleId; }
            set { detalleId = value; }
        }
        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private int raza;

        public int Raza
        {
            get { return raza; }
            set { raza = value; }
        }
        private DateTime fechaPublicacion;

        public DateTime FechaPublicacion
        {
            get { return fechaPublicacion; }
            set { fechaPublicacion = value; }
        }
        private string observacion;

        public string Observacion
        {
            get { return observacion; }
            set { observacion = value; }
        }

    }
}
