<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asignar_citas.aspx.cs" Inherits="Veterinaria.asignar_citas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Asignar Citas</title>
    <link href="CSS/AsignarCita.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="container">
                <h1>Asignar Citas</h1>
            </div>
        </header>
        <main>
            <div class="container">
                <asp:Label ID="lblMedicos" runat="server" Text="Seleccione un médico:"></asp:Label>
                <asp:DropDownList ID="ddlMedicos" runat="server"></asp:DropDownList><br /><br />
                <asp:Label ID="lblIDMascota" runat="server" Text="ID de Mascota:"></asp:Label>
                <asp:TextBox ID="txtIDMascota" runat="server"></asp:TextBox><br /><br />
                <asp:Label ID="lblIDPersona" runat="server" Text="ID de Persona:"></asp:Label>
                <asp:TextBox ID="txtIDPersona" runat="server"></asp:TextBox><br /><br />
                <asp:Label ID="lblFechaCita" runat="server" Text="Fecha de la Cita:"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar><br /><br />
                <asp:Button ID="btnGuardarCita" runat="server" Text="Guardar Cita" OnClick="btnGuardarCita_Click" />
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Text=""></asp:Label>
            </div>
        </main>
        <footer>
            <div class="container">
                <p>&copy; 2024 Clínica Veterinaria. Todos los derechos reservados.</p>
            </div>
        </footer>
    </form>
</body>
</html>

