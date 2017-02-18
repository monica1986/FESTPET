using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class EmpresaDTO
    {
        private int empresaId;

        public int EmpresaId
        {
            get { return empresaId; }
            set { empresaId = value; }
        }
        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private int rut;

        public int Rut
        {
            get { return rut; }
            set { rut = value; }
        }
        private int digito;

        public int Digito
        {
            get { return digito; }
            set { digito = value; }
        }
        private string razonSocial;

        public string RazonSocial
        {
            get { return razonSocial; }
            set { razonSocial = value; }
        }
        private string url;

        public string Url
        {
            get { return url; }
            set { url = value; }
        }
        private DateTime publicacion;

        public DateTime Publicacion
        {
            get { return publicacion; }
            set { publicacion = value; }
        }
        private int vigencia;

        public int Vigencia
        {
            get { return vigencia; }
            set { vigencia = value; }
        }

    }
}
