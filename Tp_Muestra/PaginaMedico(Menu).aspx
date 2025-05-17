<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaMedico(Menu).aspx.cs" Inherits="Tp_Muestra.MenuMedico" %>

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

        #btnVerTurnos {
            cursor: pointer;
            color: cornflowerblue;
        }

        #btnObservaciones {
            cursor: pointer;
            color: cornflowerblue;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 332px;
        }
        .auto-style3 {
            height: 99px;
        }
        .auto-style4 {
            height: 99px;
            width: 224px;
        }
        .auto-style5 {
            height: 332px;
            width: 224px;
        }
        .auto-style6 {
            height: 99px;
            width: 362px;
        }
        .auto-style7 {
            height: 332px;
            width: 362px;
        }

        .usuario-highlight {
            padding: 5px 10px;
            border-radius: 30px;
            font-weight: bold;
            text-align: center;
        }

        #hlVolver {
            display: inline-block;
            padding: 5px 5px;
            background-color: red;
            color: white;
            text-align: center;
            border-radius: 20px;
            font-weight: bold;
            transition: background-color 0.5s, color 0.5s;
        }

            #hlVolver:hover {
                background-color: white;
                color: red;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Inicio.aspx" Font-Names="Bookman Old Style">Cerrar Sesion</asp:HyperLink>
                    </td>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="MENÚ MÉDICO" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style7">
                        <asp:Button ID="btnObservaciones" runat="server" PostBackUrl="~/Observaciones.aspx" Text="Observaciones" Width="112px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnVerTurnos" runat="server" Text="Mostrar turnos" PostBackUrl="~/MostrarTurnosMedico.aspx" OnClick="btnVerTurnos_Click" Width="100px" />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
