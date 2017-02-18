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
            MensajeDTO objMsj = new MensajeDTO();
            MensajeDAO accMsj = new MensajeDAO();
            objMsj = accMsj.obtenerMensaje();
            return objMsj; 
        }
  
    }
}
