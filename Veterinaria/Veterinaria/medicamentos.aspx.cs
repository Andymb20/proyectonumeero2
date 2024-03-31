using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Veterinaria
{
    public partial class Medicamentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarMedicamentos();
            }
        }

        protected void CargarMedicamentos()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                string query = "SELECT * FROM Medicamentos";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            gvMedicamentos.DataSource = dt;
                            gvMedicamentos.DataBind();
                        }
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
