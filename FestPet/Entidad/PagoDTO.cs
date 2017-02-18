using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class PagoDTO
    {
        private int pagoID;

        public int PagoID
        {
            get { return pagoID; }
            set { pagoID = value; }
        }
        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        private decimal monto;

        public decimal Monto
        {
            get { return monto; }
            set { monto = value; }
        }
        private int cuota;

        public int Cuota
        {
            get { return cuota; }
            set { cuota = value; }
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

    }
}
