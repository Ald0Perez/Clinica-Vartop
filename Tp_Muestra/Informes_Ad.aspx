<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informes_Ad.aspx.cs" Inherits="Tp_Muestra.Informes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

                body{
    background-color:lavender;
}

#btnCrear{
    background-color: honeydew;
    color: cornflowerblue;
    border-color: black;
    border: none;
    cursor: pointer;
}

        #hlVolver {
            text-decoration: none;
            color: black
        }

        .usuario-highlight {
            padding: 5px 10px;
            border-radius: 30px;
            font-weight: bold;
            text-align: center;
        }
    
        .auto-style2 {
            width: 100%;
        }
        
        .auto-style32 {
        width: 11px;
    }
    .auto-style26 {
        width: 216px;
    }
    .auto-style29 {
        width: 187px;
    }
    .auto-style15 {
        width: 179px;
    }
    .auto-style16 {
        width: 280px;
    }
    .auto-style33 {
        height: 23px;
        width: 11px;
    }
    .auto-style27 {
        height: 23px;
        width: 216px;
    }
    .auto-style30 {
        width: 187px;
        height: 23px;
    }
    .auto-style18 {
        height: 23px;
    }
    .auto-style20 {
        width: 179px;
        height: 23px;
    }
    .auto-style21 {
        width: 280px;
        height: 23px;
    }
    .auto-style34 {
        height: 194px;
        width: 11px;
    }
    .auto-style28 {
        height: 194px;
        width: 216px;
    }
    .auto-style31 {
        width: 187px;
        height: 194px;
    }
    .auto-style22 {
        height: 194px;
    }
    .auto-style24 {
        width: 179px;
        height: 194px;
    }
    .auto-style25 {
        width: 280px;
        height: 194px;
    }

    #btnBuscar{
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
        <table class="auto-style2">
            <tr>
                <td class="auto-style32">
                    <asp:HyperLink ID="hlVolver" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" NavigateUrl="~/PaginaAdmin(Menu).aspx">Volver</asp:HyperLink>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>
                    <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>
                    <asp:Label ID="lblInformes" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bookman Old Style" Font-Size="XX-Large" Text="INFORMES"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style27"></td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style18"></td>
                <td class="auto-style20"></td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>
                    <asp:Label ID="lblEligir" runat="server" Font-Bold="True" Font-Size="15pt"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style28"></td>
                <td class="auto-style31">Fecha Inicio:<br />
                    <asp:Label ID="lblFechaInicio" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Calendar ID="CalendarInicio" runat="server" BackColor="White" BorderColor="White" BorderWidth="0px" CellPadding="0" CellSpacing="3" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnDayRender="CalendarInicio_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
                        <DayHeaderStyle BackColor="#224AAC" Font-Bold="True" Font-Size="8pt" ForeColor="#F0F0F0" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Lavender" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="White" />
                    </asp:Calendar>
                </td>
                <td class="auto-style24">Fecha final:<br />
                    <asp:Label ID="lblFechaFin" runat="server"></asp:Label>
                </td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style27"></td>
                <td class="auto-style30"></td>
                <td class="auto-style18"></td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="Buscar_Click" Text="Mostrar Informes" Height="29px" Width="144px" />
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style27"></td>
                <td class="auto-style30"></td>
                <td class="auto-style18">
                    <asp:Label ID="lblInforme1" runat="server" Font-Bold="True" Font-Overline="False" Font-Underline="True" Text="INFORME DE ASISTENCIAS DE PACIENTES"></asp:Label>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center">
                    </asp:GridView>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">
                    <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Left">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style15">
                    <asp:GridView ID="GridView3" runat="server" HorizontalAlign="Right">
                    </asp:GridView>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style27"></td>
                <td class="auto-style30"></td>
                <td class="auto-style18"></td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style27"></td>
                <td class="auto-style30"></td>
                <td class="auto-style18">
                    <asp:Label ID="lblInforme2" runat="server" Font-Bold="True" Font-Underline="True" Text="INFORME DE TURNOS POR PROVINCIA"></asp:Label>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView4" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style27"></td>
                <td class="auto-style30"></td>
                <td class="auto-style18"></td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>
                    <asp:Label ID="lblInforme3" runat="server" Font-Bold="True" Font-Underline="True" Text="INFORME DE EDAD PACIENTES"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>
                    <asp:GridView ID="gvPacientesEdad" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
