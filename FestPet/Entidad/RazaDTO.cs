using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class RazaDTO
    {
        private int razaId;

        public int RazaId
        {
            get { return razaId; }
            set { razaId = value; }
        }
        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private int vigencia;

        public int Vigencia
        {
            get { return vigencia; }
            set { vigencia = value; }
        }
    }
}
