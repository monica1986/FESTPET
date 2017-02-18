using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using Entidad;



namespace DAO
{
    public class MensajeDAO
    {

        public MensajeDTO obtenerMensaje()
        {
            MensajeDTO msg = null;
            string data = string.Empty;
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("RIA"));
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from Tmensaje", conn);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                msg = new MensajeDTO();
                msg.MensajeId = int.Parse(reader["Mensaje_ID"].ToString());  
                msg.Contenido = reader["Mensaje_Contenido"].ToString();
                msg.Destinatario = reader["Mensaje_Destinatario"].ToString();
                msg.Fecha =  DateTime.Parse(reader["Mensaje_Fecha"].ToString());
            }

            reader.Close();
            conn.Close();


            return msg;
        }

        public List<NotificacionDTO> obtenerNotificacion(NotificacionDTO notificacionDTO)
        {
            List<NotificacionDTO> listaNotificacionDTO = new List<NotificacionDTO>();
            return listaNotificacionDTO;
        }



    }
}
