<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarUsuarios.aspx.cs" Inherits="Tp_Muestra.ModificarUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        body {
            background-color: lavender;
        }

        #HyperLink1 {
            text-decoration: none;
            color: black
        }

        .auto-style1 {
            width: 100%;
            height: 537px;
        }
        .auto-style3 {
            width: 117px;
        }
        .auto-style2 {
            width: 632px;
        }
        .auto-style4 {
            width: 8px;
        }
        .auto-style5 {
            width: 117px;
            height: 466px;
        }
        .auto-style6 {
            width: 632px;
            height: 466px;
        }
        .auto-style7 {
            width: 8px;
            height: 466px;
        }

        .usuario-highlight {
            padding: 5px 10px;
            border-radius: 30px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                </td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="MODIFICAR USUARIOS" Font-Names="Bookman Old Style"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="gvUsuarios" runat="server" Width="621px" AutoGenerateEditButton="True" AutoGenerateColumns="False" OnRowEditing="gvUsuarios_RowEditing" OnRowCancelingEdit="gvUsuarios_RowCancelingEdit" OnRowUpdating="gvUsuarios_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Usuario">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contraseña">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Contraseña" runat="server" Text='<%# Bind("Contraseña") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Contraseña" runat="server" Text='<%# Bind("Contraseña") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Legajo">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Legajo" runat="server" Text='<%# Bind("Legajo") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Legajo" runat="server" Text='<%# Bind("Legajo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
