<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteUsuario.aspx.cs" Inherits="Veterinaria.ReporteUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Usuarios</title>
    <link href="CSS/ReporteUsuario.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewReporteUsuario" runat="server" CssClass="gridview" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="IDpersona" HeaderText="ID Persona" />
                    <asp:BoundField DataField="NombrePersona" HeaderText="Nombre Persona" />
                    <asp:BoundField DataField="NombreMascota" HeaderText="Nombre Mascota" />
                    <asp:BoundField DataField="NumeroTelefono" HeaderText="Número de Teléfono" />
                    <asp:BoundField DataField="IDcita" HeaderText="ID Cita" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

