using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Veterinaria
{
    public partial class asignar_citas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarMedicosDisponibles();
            }
        }

        protected void CargarMedicosDisponibles()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                string query = "SELECT ID_Medico, Nombre_Medico, Especialidad FROM Medicos";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                ListItem item = new ListItem();
                                item.Text = reader["Nombre_Medico"].ToString() + " - " + reader["Especialidad"].ToString();
                                item.Value = reader["ID_Medico"].ToString();
                                ddlMedicos.Items.Add(item);
                            }
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

        protected void btnGuardarCita_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Citas (ID_Mascota, ID_Persona, Fecha_Cita) VALUES (@ID_Mascota, @ID_Persona, @Fecha_Cita)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@ID_Mascota", int.Parse(txtIDMascota.Text)); // Reemplaza txtIDMascota.Text con el control adecuado para el ID de la mascota
                    command.Parameters.AddWithValue("@ID_Persona", int.Parse(txtIDPersona.Text)); // Reemplaza txtIDPersona.Text con el control adecuado para el ID de la persona
                    command.Parameters.AddWithValue("@Fecha_Cita", Calendar1.SelectedDate);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // La cita se insertó correctamente
                        lblMensaje.Text = "La cita se ha guardado correctamente.";
                    }
                    else
                    {
                        // No se pudo insertar la cita
                        lblMensaje.Text = "Error al guardar la cita. Por favor, inténtelo de nuevo.";
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejar excepciones según sea necesario
                lblMensaje.Text = "Error al guardar la cita: " + ex.Message;
            }
        }
    }
}
