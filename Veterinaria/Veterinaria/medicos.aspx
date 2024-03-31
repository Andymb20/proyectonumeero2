<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicos.aspx.cs" Inherits="Veterinaria.Medicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Lista de Médicos</title>
    <link href="CSS/Medicos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Lista de Médicos</h2>
            <asp:GridView ID="GridViewMedicos" runat="server" AutoGenerateColumns="False" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="ID_Medico" HeaderText="ID Médico" />
                    <asp:BoundField DataField="Nombre_Medico" HeaderText="Nombre del Médico" />
                    <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

