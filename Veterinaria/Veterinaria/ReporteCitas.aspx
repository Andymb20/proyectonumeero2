<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteCitas.aspx.cs" Inherits="Veterinaria.ReporteCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Citas</title>
    <link href="CSS/ReporteCitas.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewReporteCitas" runat="server" CssClass="gridview" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ID_Cita" HeaderText="ID Cita" />
                    <asp:BoundField DataField="ID_Mascota" HeaderText="ID Mascota" />
                    <asp:BoundField DataField="ID_Persona" HeaderText="ID Persona" />
                    <asp:BoundField DataField="Fecha_Cita" HeaderText="Fecha Cita" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
