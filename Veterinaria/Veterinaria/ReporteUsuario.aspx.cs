using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Veterinaria
{
    public partial class ReporteUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarReporteUsuarios();
            }
        }

        protected void CargarReporteUsuarios()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                string query = "SELECT IDpersona, Nombre_Persona AS NombrePersona, Nombre_Mascota, Telefono AS NumeroTelefono, IDcita FROM Personas INNER JOIN Mascotas ON Personas.ID_Persona = Mascotas.ID_Persona";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.HasRows)
                        {
                            DataTable dt = new DataTable();
                            dt.Load(reader);
                            GridViewReporteUsuario.DataSource = dt;
                            GridViewReporteUsuario.DataBind();
                        }

                        reader.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejar excepciones según sea necesario
            }
        }
    }
}
