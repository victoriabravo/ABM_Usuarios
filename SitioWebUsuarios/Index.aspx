<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

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
            <header>
                <h1 class="jumbotron text-center">LISTADO PRINCIPAL</h1>
            </header>
            

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Alta.aspx">Alta </asp:HyperLink> | <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Baja.aspx">Baja </asp:HyperLink> | <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Modificacion.aspx">Modificacion </asp:HyperLink> |

            <div class="table table-hover">

                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="100px" Width="707px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CodigoUsuario" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="CodigoUsuario" HeaderText="CodigoUsuario" ReadOnly="True" SortExpression="CodigoUsuario">
                        <HeaderStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                        <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>

            </div>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionDatos %>" SelectCommand="SELECT * FROM [TablaUsuarios]"></asp:SqlDataSource>
    </form>
   
</body>
</html>
