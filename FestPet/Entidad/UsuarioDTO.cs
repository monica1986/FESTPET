using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class UsuarioDTO
    {
        private int usurioId;

        public int UsurioId
        {
            get { return usurioId; }
            set { usurioId = value; }
        }
        private string nombreUsuario;

        public string NombreUsuario
        {
            get { return nombreUsuario; }
            set { nombreUsuario = value; }
        }

        private string clave;

        public string Clave
        {
            get { return clave; }
            set { clave = value; }
        }

        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string apellidoPaterno;

        public string ApellidoPaterno
        {
            get { return apellidoPaterno; }
            set { apellidoPaterno = value; }
        }
        private string apellidoMaterno;

        public string ApellidoMaterno
        {
            get { return apellidoMaterno; }
            set { apellidoMaterno = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private int vigencia;

        public int Vigencia
        {
            get { return vigencia; }
            set { vigencia = value; }
        }
    }
}
