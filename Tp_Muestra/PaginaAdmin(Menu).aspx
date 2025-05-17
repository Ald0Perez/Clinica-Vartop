<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaAdmin(Menu).aspx.cs" Inherits="Tp_Muestra.PaginaAdmin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        #hlVolver {
            text-decoration: none;
            color: black
        }

        body {
            background-color: lavender;
        }

        #btnAgregarMedico{
            cursor: pointer;
            color: cornflowerblue;
        }

        #btnMostrarMedicos{
            cursor: pointer;
            color: cornflowerblue;
        }

        #btnEditarBorrarMedicos{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnCrearUsuario{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnAgregarPaciente{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnMostrarPacientes{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnModificarPacientes{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnTurnos{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnVerTurnos{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnInformes{
            cursor: pointer;
color: cornflowerblue;
        }

        #btnEditarUsuario{
            cursor: pointer;
color: cornflowerblue;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            width: 55px;
        }
        .auto-style4 {
            width: 84px;
        }
        .auto-style5 {
            width: 171px;
        }
        .auto-style6 {
            width: 52px;
        }
        .auto-style7 {
            width: 66px;
        }
        .auto-style8 {
            width: 56px;
        }
        .auto-style14 {
            width: 55px;
            height: 42px;
        }

        .auto-style15 {
            width: 36px;
        }
        .auto-style16 {
            width: 36px;
            height: 42px;
        }

        
        .auto-style26 {
            width: 116px;
        }
                                                                                                                                                               .auto-style28 {
            width: 36px;
            height: 30px;
        }
        .auto-style29 {
            width: 66px;
            height: 30px;
        }
        .auto-style30 {
            width: 84px;
            height: 30px;
        }
        .auto-style31 {
            width: 52px;
            height: 30px;
        }
        .auto-style32 {
            width: 171px;
            height: 30px;
        }
        .auto-style33 {
            width: 56px;
            height: 30px;
        }
        .auto-style34 {
            width: 116px;
            height: 30px;
        }
        .auto-style35 {
            width: 55px;
            height: 30px;
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
                                                                                                                                                               
            .auto-style36 {
            width: 36px;
            height: 23px;
        }
        .auto-style37 {
            width: 66px;
            height: 23px;
        }
        .auto-style38 {
            width: 84px;
            height: 23px;
        }
        .auto-style39 {
            width: 52px;
            height: 23px;
        }
        .auto-style40 {
            width: 171px;
            height: 23px;
        }
        .auto-style41 {
            width: 56px;
            height: 23px;
        }
        .auto-style42 {
            width: 116px;
            height: 23px;
        }
        .auto-style43 {
            width: 55px;
            height: 23px;
        }

        .usuario-highlight {
            padding: 5px 10px;
border-radius: 30px;
font-weight: bold;
text-align: center;
        }


                                                                                                                                                               #btnMostrarPacientes0{
            cursor: pointer;
color: cornflowerblue;
        }

        
                                                                                                                                                               </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15">
            <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Inicio.aspx" Font-Names="Bookman Old Style">Cerrar Sesion</asp:HyperLink>
                    </td>
                    <td colspan="6" rowspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="False" Text="MENU ADMINISTRADORES" Font-Names="Bookman Old Style" Font-Size="31pt"></asp:Label>
                    </td>
                    <td class="auto-style3">
            <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style36"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style38"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style41"></td>
                    <td class="auto-style42"></td>
                    <td class="auto-style43"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Text="MEDICO" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="PACIENTE" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="TURNOS" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style26">
                    <asp:Label ID="lblOtros" runat="server" Font-Bold="True" Font-Size="X-Large" Text="OTROS" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>
                    <asp:Button ID="btnAgregarMedico" runat="server" Text="Agregar Medico" Width="130px" PostBackUrl="~/AgregarMedico.aspx" Height="26px" />
                    </strong></td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Button ID="btnAgregarPaciente" runat="server" Text="Agregar Paciente" Width="130px" PostBackUrl="~/AgregarPaciente.aspx" Height="26px" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">
                    <asp:Button ID="btnTurnos" runat="server" CssClass="auto-style11" Text="Agregar Turno" Width="130px" PostBackUrl="~/AgregarTurnos.aspx" Height="26px" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style26">
                    <asp:Button ID="btnInformes" runat="server" Text="Informes" Width="130px" PostBackUrl="~/Informes_Ad.aspx" Height="26px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28">
                    <asp:Button ID="btnMostrarMedicos" runat="server" Text="Mostrar Medicos" Width="130px" PostBackUrl="~/MostrarMedicos.aspx" Height="26px" />
                    </td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30">
                    <asp:Button ID="btnMostrarPacientes" runat="server" Text="Mostrar Pacientes" Width="130px" PostBackUrl="~/MostrarPacientes.aspx" Height="26px" />
                    </td>
                    <td class="auto-style31"></td>
                    <td class="auto-style32">
                    <asp:Button ID="btnVerTurnos" runat="server" Text="Mostrar Turnos" Width="130px" PostBackUrl="~/MostrarTurnosAdmin.aspx" Height="26px" />
                    </td>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                    <asp:Button ID="btnEditarUsuario" runat="server" Text="Modificar Usuario" Width="130px" PostBackUrl="~/ModificarUsuarios.aspx" Height="26px" />
                    </td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                    <asp:Button ID="btnEditarBorrarMedicos" runat="server" Text="Modificar Medicos" Width="130px" PostBackUrl="~/ModificarMedicos.aspx" Height="26px" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:Button ID="btnModificarPacientes" runat="server" Text="Modificar Pacientes" Width="130px" PostBackUrl="~/ModificarPacientes.aspx" Height="26px" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style26">
                    <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" Width="130px" PostBackUrl="~/CrearUsuario.aspx" Height="26px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
