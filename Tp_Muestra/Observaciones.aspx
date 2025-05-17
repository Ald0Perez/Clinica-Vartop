<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Observaciones.aspx.cs" Inherits="Tp_Muestra.Observaciones" %>

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
        }
        .auto-style2 {
            height: 325px;
        }
        .auto-style3 {
            height: 83px;
            margin-left: 40px;
        }
        .auto-style4 {
            height: 83px;
            width: 124px;
        }
        .auto-style5 {
            height: 325px;
            width: 124px;
        }
        .auto-style6 {
            height: 83px;
            width: 550px;
        }
        .auto-style7 {
            height: 325px;
            width: 550px;
        }

        .usuario-highlight {
            padding: 5px 10px;
            border-radius: 30px;
            font-weight: bold;
            text-align: center;
        }

        #btnBuscar {
            background-color: honeydew;
            color: cornflowerblue;
            border-color: black;
            border: none;
            cursor: pointer;
        }

        #btnMostrarTodos {
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
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaMedico(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style6">&nbsp; <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="OBSERVACIONES DE PACIENTE" Font-Names="Bookman Old Style" Font-Bold="True" Font-Italic="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">Dni de Paciente:<asp:TextBox ID="txtPaciente" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar Todos" OnClick="btnMostrarTodos_Click" />
                        <br />
                        <br />
                        <asp:GridView ID="gvObservaciones" runat="server" Width="508px" AutoGenerateEditButton="True" AutoGenerateColumns="False" OnRowCancelingEdit="gvObservaciones_RowCancelingEdit" OnRowEditing="gvObservaciones_RowEditing" OnRowUpdating="gvObservaciones_RowUpdating">
                            <Columns>
                                <asp:TemplateField HeaderText="DniPaciente">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Dni" runat="server" Text='<%# Bind("Dni") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_dni" runat="server" Text='<%# Bind("Dni") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="IdTurnos">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_idTurnos" runat="server" Text='<%# Bind("IdTurno") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_IdTurnos" runat="server" Text='<%# Bind("IdTurno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Asistencia">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="cb_eit_Asistencia" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="cb_it_Asistencia" runat="server" Checked='<%# Bind("Asistencia") %>' Enabled="false"/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Descripcion">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtDescripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>