using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Veterinaria
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inicializar la página
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;

            // Obtener los valores de los controles
            string nombreMascota = txtNombreMascota.Text;
            string tipoMascota = ddlTipoMascota.SelectedValue;
            int edad = Convert.ToInt32(txtEdad.Text);
            string raza = txtRaza.Text;
            decimal peso = Convert.ToDecimal(txtPeso.Text);
            string nombrePersona = txtNombrePersona.Text;
            int idPersona = Convert.ToInt32(txtIDPersona.Text);

            // Insertar los datos en la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO Mascotas (Nombre_Mascota, Tipo_Mascota, Edad, Raza, Peso, ID_Persona)
                                VALUES (@NombreMascota, @TipoMascota, @Edad, @Raza, @Peso, @IDPersona)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@NombreMascota", nombreMascota);
                    command.Parameters.AddWithValue("@TipoMascota", tipoMascota);
                    command.Parameters.AddWithValue("@Edad", edad);
                    command.Parameters.AddWithValue("@Raza", raza);
                    command.Parameters.AddWithValue("@Peso", peso);
                    command.Parameters.AddWithValue("@IDPersona", idPersona);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
                ActualizarGridViewMascotas();
            }

             void ActualizarGridViewMascotas()
            {
                string conString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                string query = "SELECT * FROM Mascotas";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dt = new DataTable();
                            adapter.Fill(dt);
                            GridViewMascotas.DataSource = dt;
                            GridViewMascotas.DataBind();
                        }
                    }
                }
            }

            // Limpiar los controles después de registrar la mascota
            LimpiarControles();
        }

        private void LimpiarControles()
        {
            txtNombreMascota.Text = string.Empty;
            ddlTipoMascota.SelectedIndex = 0;
            txtEdad.Text = string.Empty;
            txtRaza.Text = string.Empty;
            txtPeso.Text = string.Empty;
            txtNombrePersona.Text = string.Empty;
            txtIDPersona.Text = string.Empty;
        }
    }
}
