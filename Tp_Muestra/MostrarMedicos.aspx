<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarMedicos.aspx.cs" Inherits="Tp_Muestra.MostrarMedicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title> <style type="text/css">

     body{
         background-color:lavender;
     }

     #HyperLink1{
 text-decoration: none;
 color:black
     }

     .usuario-highlight {
         padding: 5px 10px;
         border-radius: 30px;
         font-weight: bold;
         text-align: center;
     }
                        .auto-style8 {
                            width: 100%;
                        }
                        .auto-style9 {
                            height: 539px;
                        }
                        .auto-style10 {
                            height: 262px;
                        }
                        .auto-style11 {
                            height: 101px;
                        }
                        .auto-style12 {
                            height: 101px;
                            width: 131px;
                        }
                        .auto-style13 {
                            height: 262px;
                            width: 131px;
                        }
                        .auto-style14 {
                            height: 539px;
                            width: 131px;
                        }
                        .auto-style15 {
                            height: 101px;
                            width: 448px;
                        }
                        .auto-style16 {
                            height: 262px;
                            width: 448px;
                        }
                        .auto-style17 {
                            height: 539px;
                            width: 448px;
                        }
                        .auto-style18 {
                            margin-left: 4px;
                        }
                        .auto-style19 {
                            margin-left: 0px;
                        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style8">
            <tr>
                <td class="auto-style12">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                </td>
                <td class="auto-style15"><asp:Label ID="lblMostrarMedicos" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="MOSTRAR MÉDICOS" Font-Names="Bookman Old Style"></asp:Label>
                </td>
                <td class="auto-style11">
                        <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style16">Buscar por Legajo:<asp:TextBox ID="txtLegajo" runat="server" CssClass="auto-style18"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click1" Text="Buscar" />
                    <asp:Label ID="lblAviso" runat="server"></asp:Label>
                    <asp:Button ID="btnRestablecer" runat="server" OnClick="btnRestablecer_Click" Text="Restablecer" />
                    <asp:GridView ID="gvMedicos" runat="server" Width="363px">
                    </asp:GridView>
                </td>
                <td class="auto-style10">Buscar por Especialidad:<asp:DropDownList ID="ddlEspecialidad" runat="server" CssClass="auto-style19">
                    <asp:ListItem Value="0">Seleccione</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click1" Text="Filtrar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style17"></td>
                <td class="auto-style9"></td>
            </tr>
        </table>
    </form>
</body>
</html>
