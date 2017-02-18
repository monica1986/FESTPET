using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class TipoEmpresaDTO
    {
        private int tipoEmpresaId;

        public int TipoEmpresaId
        {
            get { return tipoEmpresaId; }
            set { tipoEmpresaId = value; }
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
