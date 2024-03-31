using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Veterinaria.login1;

namespace Veterinaria
{
    public partial class login1 : Page
    {
        // Declarar usuario como una variable de instancia de la clase login1
        Usuario usuario;

        public class Usuario
        {
            public string NombreUsuario { get; set; }
            public string Contraseña { get; set; }

            public Usuario(string nombreUsuario, string contraseña)
            {
                NombreUsuario = nombreUsuario;
                Contraseña = contraseña;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Inicializar usuario en el método Page_Load
            usuario = new Usuario("user1", "psswd");
        }

        protected void btnIniciarSesion_Click1(object sender, EventArgs e)
        {
            // Acceder a las propiedades del usuario
            string nombreUsuario = txtUsuario.Text.ToLower(); // Convertir a minúsculas
            string contraseña = txtContraseña.Text.ToLower(); // Convertir a minúsculas

            // Verificar si es un usuario normal
            if (nombreUsuario.StartsWith("user") && contraseña == "psswd")
            {
                // Iniciar sesión para usuarios normales
                Response.Redirect("pagina.aspx");
                return;
            }

            // Verificar si es un médico
            string[] medicos = { "AMurillo", "SConejo", "AGutierrez", "BCurling" };
            foreach (string medico in medicos)
            {
                // Verificar si el nombre de usuario y la contraseña coinciden con los del médico actual
                if (medico.ToLower() == nombreUsuario && contraseña == medico.Substring(1).ToLower() + medico[0].ToString().ToLower() + "1")
                {
                    // Iniciar sesión para médicos
                    Response.Redirect("pagina.aspx");
                    return; // Importante: salir del bucle foreach una vez que se ha encontrado un médico coincidente
                }
            }

            // Si llegamos aquí, significa que las credenciales no coinciden con ningún usuario normal ni médico
            Response.Write("<script>alert('Credenciales inválidas');</script>");
        }



    }
}