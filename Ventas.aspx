<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="Parcial_II.Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 407px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Cajeros:&nbsp;
            <asp:DropDownList ID="DCajeros" runat="server" DataSourceID="SqlCajeros" DataTextField="codigo_cajero" DataValueField="codigo_cajero">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Productos:&nbsp;&nbsp;
            <asp:DropDownList ID="DProductos" runat="server" DataSourceID="SqlProductos" DataTextField="codigo_producto" DataValueField="codigo_producto">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maquinas:&nbsp;
            <asp:DropDownList ID="DMaquinas" runat="server" DataSourceID="SqlMaquinas" DataTextField="codigo_maquina" DataValueField="codigo_maquina">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlMaquinas" runat="server" ConnectionString="<%$ ConnectionStrings:Base_VentasConnectionString3 %>" SelectCommand="SELECT [codigo_maquina] FROM [maquinas_registradoras]"></asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlProductos" runat="server" ConnectionString="<%$ ConnectionStrings:Base_VentasConnectionString2 %>" SelectCommand="SELECT [codigo_producto] FROM [productos]"></asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlCajeros" runat="server" ConnectionString="<%$ ConnectionStrings:Base_VentasConnectionString %>" SelectCommand="SELECT [codigo_cajero] FROM [cajeros]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;
            <asp:Button ID="BAgregar" runat="server" OnClick="BAgregar_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    </form>
</body>
</html>
