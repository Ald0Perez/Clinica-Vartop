<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarTurnosAdmin.aspx.cs" Inherits="Tp_Muestra.VerTurnosAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        body {
            background-color: lavender;
        }

        #hlVolver {
            text-decoration: none;
            color: black
        }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 307px;
        }
        .auto-style3 {
            height: 211px;
        }
        .auto-style4 {
            height: 127px;
        }
        .auto-style5 {
            height: 102px;
            width: 184px;
        }
        .auto-style8 {
            height: 102px;
            width: 855px;
        }
        .auto-style6 {
            height: 428px;
            width: 184px;
        }
        .auto-style9 {
            height: 428px;
            width: 855px;
        }

        .usuario-highlight {
            padding: 5px 10px;
            border-radius: 30px;
            font-weight: bold;
            text-align: center;
        }

        #btnAceptar {
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


        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                            </td>
                            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bookman Old Style" Font-Overline="False" Font-Size="XX-Large" Text="MOSTRAR TURNOS"></asp:Label>
                                &nbsp;</td>
                            <td class="auto-style4">
                                <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Busqueda Paciente : &nbsp;<asp:TextBox ID="txtBusquedaPacienteAdmin" runat="server" Width="196px"></asp:TextBox>
                                &nbsp;<asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
                                &nbsp;
                                <asp:Button ID="btnMostrarTodo" runat="server" OnClick="btnMostrarTodo_Click" Text="Mostrar Todo" />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:GridView ID="gvTurnoAdmin" runat="server" Width="836px">
                                </asp:GridView>
                            </td>
                            <td class="auto-style3"></td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</body>
</html>
