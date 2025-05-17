<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarTurnosMedico.aspx.cs" Inherits="Tp_Muestra.TablaTurno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        body {
            background-color: lavender;
        }

        #HyperLink2 {
            text-decoration: none;
            color: black
        }

        #btnBuscar {
            background-color: honeydew;
            color: cornflowerblue;
            border-color: black;
            border: none;
            cursor: pointer;
        }

        #btnMostrarTodo {
            background-color: honeydew;
            color: cornflowerblue;
            border-color: black;
            border: none;
            cursor: pointer;
        }

        #btnFiltrar {
            background-color: honeydew;
            color: cornflowerblue;
            border-color: black;
            border: none;
            cursor: pointer;
        }

        .auto-style1 {
            width: 100%;
            height: 423px;
        }
        .auto-style2 {
            width: 582px;
        }
        .auto-style3 {
            width: 168px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 89px;
        }
        .auto-style6 {
            width: 168px;
            height: 429px;
        }
        .auto-style7 {
            width: 582px;
            height: 429px;
        }
        .auto-style8 {
            height: 429px;
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
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PaginaMedico(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="MOSTRAR TURNOS" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        Busqueda Paciente:<asp:TextBox ID="txtBusquedaPaciente" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarTodo" runat="server" Text="Mostrar Todo" OnClick="btnMostrarTodo_Click" />
                        <br />
                        <br />
                        <asp:GridView ID="gvTurnos" runat="server" Width="574px">
                        </asp:GridView>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
            </table>
            <table class="auto-style4">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
