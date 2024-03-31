<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteMascotas.aspx.cs" Inherits="Veterinaria.ReporteMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Mascotas</title>
    <link href="CSS/ReporteMascotas.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewReporteMascotas" runat="server" CssClass="gridview" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ID_Mascota" HeaderText="ID Mascota" />
                    <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre Mascota" />
                    <asp:BoundField DataField="Tipo_Mascota" HeaderText="Tipo Mascota" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" />
                    <asp:BoundField DataField="Raza" HeaderText="Raza" />
                    <asp:BoundField DataField="Peso" HeaderText="Peso" />
                    <asp:BoundField DataField="ID_Persona" HeaderText="ID Persona" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

