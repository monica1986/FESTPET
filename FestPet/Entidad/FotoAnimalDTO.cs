using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidad
{
    [Serializable]
    public class FotoAnimalDTO
    {
        private int fotoId;

        public int FotoId
        {
            get { return fotoId; }
            set { fotoId = value; }
        }
        private byte fotoAnimal;

        public byte FotoAnimal
        {
            get { return fotoAnimal; }
            set { fotoAnimal = value; }
        }
        private string nombreArchivo;

        public string NombreArchivo
        {
            get { return nombreArchivo; }
            set { nombreArchivo = value; }
        }
    }
}
