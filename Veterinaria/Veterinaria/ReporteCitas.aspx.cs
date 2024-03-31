using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Veterinaria
{
    public partial class ReporteCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarReporteCitas();
            }
        }

        protected void CargarReporteCitas()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                string query = "SELECT * FROM Citas";

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
                            GridViewReporteCitas.DataSource = dt;
                            GridViewReporteCitas.DataBind();
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
