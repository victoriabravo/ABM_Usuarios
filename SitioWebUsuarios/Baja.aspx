<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Baja.aspx.cs" Inherits="Baja" %>

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
            <h1 class="jumbotron text-center">BAJA DE USUARIOS</h1>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Listado </asp:HyperLink> | <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Alta.aspx">Alta </asp:HyperLink> | <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Modificacion.aspx">Modificacion </asp:HyperLink> |

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
                        <asp:Button ID="btnListar" class="btn btn-primary" runat="server" OnClick="btnListar_Click" Text="Listar" />  
&nbsp;<asp:Button ID="btnEliminar" class="btn btn-danger" runat="server"  OnClick="btnEliminar_Click" Text="Eliminar" />
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
