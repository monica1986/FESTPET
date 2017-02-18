using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using Entidad;

namespace Negocio
{
    public class MensajeBO
    {
        public MensajeDTO muestraMSG()
        {
            MensajeDTO msg = new MensajeDTO();
            MensajeDAO msj = new MensajeDAO();
            return msg = msj.obtenerMensaje();
        }
  
    }
}
