<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicamentos.aspx.cs" Inherits="Veterinaria.Medicamentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medicamentos</title>
    <link href="CSS/Medicamentos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvMedicamentos" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ID_Medicamento" HeaderText="ID Medicamento" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
