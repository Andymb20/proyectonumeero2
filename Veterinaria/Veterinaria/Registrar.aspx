<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Veterinaria.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="CSS/registro.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="registro-form">
              <h2 class="encabezado-h2">Registrar Mascota</h2>
            <div>
                <label for="txtNombreMascota">Nombre de la Mascota:</label>
                <asp:TextBox ID="txtNombreMascota" runat="server" CssClass="txt-input"></asp:TextBox>
            </div>
            <div>
                <label for="ddlTipoMascota">Tipo de Mascota:</label>
                <asp:DropDownList ID="ddlTipoMascota" runat="server" CssClass="dropdown">
                    <asp:ListItem Value="Canino">Canino</asp:ListItem>
                    <asp:ListItem Value="Felino">Felino</asp:ListItem>
                    <asp:ListItem Value="Roedor">Roedor</asp:ListItem>
                    <asp:ListItem Value="Acuatico">Acuatico</asp:ListItem>
                    <asp:ListItem Value="Reptil o Anfibio">Reptil o Anfibio</asp:ListItem>
                    <asp:ListItem Value="Granja">Granja</asp:ListItem>
                    <asp:ListItem Value="Aves">Aves</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label for="txtEdad">Edad:</label>
                <asp:TextBox ID="txtEdad" runat="server" TextMode="Number" CssClass="txt-input"></asp:TextBox>
            </div>
            <div>
                <label for="txtRaza">Raza:</label>
                <asp:TextBox ID="txtRaza" runat="server" CssClass="txt-input"></asp:TextBox>
            </div>
            <div>
                <label for="txtPeso">Peso:</label>
                <asp:TextBox ID="txtPeso" runat="server" TextMode="Number" CssClass="txt-input"></asp:TextBox>
            </div>
            <div>
                <label for="txtNombrePersona">Nombre de la Persona:</label>
                <asp:TextBox ID="txtNombrePersona" runat="server" CssClass="txt-input"></asp:TextBox>
            </div>
            <div>
                <label for="txtIDPersona">ID Persona:</label>
                <asp:TextBox ID="txtIDPersona" runat="server" TextMode="Number" CssClass="txt-input"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Mascota" OnClick="btnRegistrar_Click" CssClass="btn-registrar" />
            </div>

            <!-- GridView para mostrar las mascotas registradas -->
<asp:GridView ID="GridViewMascotas" runat="server" AutoGenerateColumns="False" CssClass="gridview">
    <Columns>
        <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre de la Mascota" />
        <asp:BoundField DataField="Tipo_Mascota" HeaderText="Tipo de Mascota" />
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
