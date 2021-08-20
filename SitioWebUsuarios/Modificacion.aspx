<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modificacion.aspx.cs" Inherits="Modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="jumbotron text-center">MODIFICACION DE USUARIOS</h1>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Listado </asp:HyperLink> | <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Alta.aspx">Alta </asp:HyperLink> | <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Baja.aspx">Baja </asp:HyperLink> |

            <table class="table table-hover">
                <tr>
                    <td>Codigo de Usuario:</td>
                    <td>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Nombres:</td>
                    <td>
                        <asp:TextBox ID="txtNombres" runat="server" Width="192px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td>
                        <asp:TextBox ID="txtApellidos" runat="server" Width="193px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mail:</td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server" Width="187px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="btnMostrar" class="btn btn-primary" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" />  
&nbsp;<asp:Button ID="btnModificar" class="btn btn-warning" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblResultado" runat="server" Text="..."></asp:Label>
                    </td>
                </tr>
                </table>

        </div>
    </form>
</body>
</html>
