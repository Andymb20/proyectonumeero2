<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="Veterinaria.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="CSS/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="header">
                <img src="https://img.freepik.com/vector-premium/fondo-peluqueria-perros-peluqueria-peluqueria-perros-tienda-mascotas-ilustracion-vectorial_195968-415.jpg" alt="Imagen de encabezado" />
            </div>
            <h2>Iniciar sesión</h2>
            <div class="form-group">
                <label for="txtUsuario">Usuario</label>
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtContraseña">Contraseña</label>
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar sesión" CssClass="btn btn-primary" OnClick="btnIniciarSesion_Click1" />
        </div>
    </form>
</body>
</html>
