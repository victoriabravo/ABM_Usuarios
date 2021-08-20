<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alta.aspx.cs" Inherits="Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
   
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 443px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="jumbotron text-center">ALTA DE USUARIOS</h1>

              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Listado </asp:HyperLink> | <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Baja.aspx">Baja </asp:HyperLink> | <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Modificacion.aspx">Modificacion </asp:HyperLink> |

            <table class="table table-hover">
                <tr>
                    <td>Codigo de Usuario:</td>
                    <td>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="191px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="text-center" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Este campo es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Nombres:</td>
                    <td>
                        <asp:TextBox ID="txtNombres" runat="server" Width="192px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" ErrorMessage="Este campo es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td>
                        <asp:TextBox ID="txtApellidos" runat="server" Width="193px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidos" ErrorMessage="Este campo es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mail:</td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server" Width="187px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMail" ErrorMessage="Este campo es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="La carga de datos tiene los siguientes errores:" />
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="btnInsertar" class="btn btn-success" runat="server" OnClick="btnInsertar_Click" Text="Insertar" />
&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblResultado" runat="server" Text="..."></asp:Label>
                    </td>
                </tr>
                </table>
    </form>
</body>
</html>
