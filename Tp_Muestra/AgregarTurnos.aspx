<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarTurnos.aspx.cs" Inherits="Tp_Muestra.AgregarTurnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        h1{
            text-align: center;
        }

        body{
            background-color:lavender;
        }

                #btnAgregar{
    background-color: honeydew;
    color: cornflowerblue;
    border-color: black;
    border: none;
    cursor: pointer;
}

        #HyperLink2{
            text-decoration: none;
            color:black
        }

        .auto-style2 {
            width: 292px;
        }
        .auto-style18 {
            width: 323px;
        }
        .auto-style4 {
            width: 1006px;
        }
        .auto-style3 {
            width: 413px;
        }
        .auto-style6 {
            width: 292px;
            height: 23px;
        }
        .auto-style19 {
            width: 323px;
            height: 23px;
        }
        .auto-style8 {
            width: 1006px;
            height: 23px;
        }
        .auto-style9 {
            width: 413px;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style21 {
            width: 292px;
            height: 26px;
        }
        .auto-style22 {
            width: 323px;
            height: 26px;
        }
        .auto-style23 {
            width: 1006px;
            height: 26px;
        }
        .auto-style24 {
            width: 413px;
            height: 26px;
        }
        .auto-style25 {
            height: 26px;
        }
        .auto-style13 {
            width: 292px;
            height: 24px;
        }
        .auto-style20 {
            width: 323px;
            height: 24px;
        }
        .auto-style15 {
            width: 1006px;
            height: 24px;
        }
        .auto-style16 {
            width: 413px;
            height: 24px;
        }
        .auto-style17 {
            height: 24px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style26 {
            width: 292px;
            height: 76px;
        }
        .auto-style27 {
            width: 323px;
            height: 76px;
        }
        .auto-style28 {
            width: 1006px;
            height: 76px;
        }
        .auto-style29 {
            width: 413px;
            height: 76px;
        }
        .auto-style30 {
            height: 76px;
        }

        .usuario-highlight {
            padding: 5px 10px;
            border-radius: 30px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style31 {
            width: 292px;
            height: 28px;
        }
        .auto-style32 {
            width: 323px;
            height: 28px;
        }
        .auto-style33 {
            width: 1006px;
            height: 28px;
        }
        .auto-style34 {
            width: 413px;
            height: 28px;
        }
        .auto-style35 {
            height: 28px;
        }

        .custom-calendar {
    border: none;
    box-shadow: none
}
        .auto-style36 {
            width: 292px;
            height: 19px;
        }
        .auto-style37 {
            width: 323px;
            height: 19px;
        }
        .auto-style38 {
            width: 1006px;
            height: 19px;
        }
        .auto-style39 {
            width: 413px;
            height: 19px;
        }
        .auto-style40 {
            height: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style19"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style28">&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="AGREGAR TURNO" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">DNI del paciente:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDniPaciente" runat="server" Width="200px" AutoPostBack="True" OnTextChanged="txtDniPaciente_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDniPaciente">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDniPaciente" ErrorMessage="Ingrese un dni de 8 caracteres" ValidationExpression="\d{8}">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">Especialidad del medico:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlEspecialidad" runat="server" Height="16px" Width="210px" AutoPostBack="True" OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="ddlEspecialidad" ErrorMessage="No selecciono Especialidad" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">Medico:</td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="ddlMedicos" runat="server" Height="16px" Width="210px" AutoPostBack="True" OnSelectedIndexChanged="ddlMedicos_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvMedico" runat="server" ControlToValidate="ddlMedicos" ErrorMessage="No selecciono Medico" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style36"></td>
                    <td class="auto-style37">Fecha:</td>
                    <td class="auto-style38">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="0px"
                            Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="ShortMonth"
                            Width="350px" OnDayRender="Calendar1_DayRender" FirstDayOfWeek="Monday" CellPadding="0" CellSpacing="3" OnSelectionChanged="Calendar1_SelectionChanged" >
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" BackColor="#224AAC" ForeColor="Lavender" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Lavender" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#F0F0F0" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style39">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style40" aria-checked="undefined"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style20">&nbsp;Hora:</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="ddlHorario" runat="server" Height="17px" Width="203px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvHora" runat="server" ControlToValidate="ddlHorario" ErrorMessage="No selecciono Horario" InitialValue="--Seleccione--">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style33">
                    </td>
                    <td class="auto-style34">
                    </td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="54px" Width="211px" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="142px" Font-Bold="True" Height="49px" OnClick="btnAgregar_Click" />
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblConfirmacion" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">
                        <asp:Label ID="txtErrorCargarDatos" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblErrorFormulario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
