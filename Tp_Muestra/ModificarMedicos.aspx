<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarMedicos.aspx.cs" Inherits="Tp_Muestra.TablaMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        body{
            background-color:lavender;
        }

        #HyperLink1{
    text-decoration: none;
    color:black
        }

        .auto-style1 {
            width: 100%;
            height: 537px;
        }
        .auto-style2 {
            width: 570px;
            height: 67px;
        }
        .auto-style3 {
            width: 117px;
            height: 67px;
        }
        .auto-style4 {
            width: 8px;
            height: 67px;
        }
        .auto-style5 {
            width: 117px;
            height: 466px;
        }
        .auto-style6 {
            width: 570px;
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                </td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="MODIFICAR MÉDICOS" Font-Names="Bookman Old Style"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblUsuario" runat="server" 
CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">&nbsp;<asp:DropDownList ID="ddlTabla" runat="server">
                            <asp:ListItem>--Seleccione--</asp:ListItem>
                            <asp:ListItem>Activos</asp:ListItem>
                            <asp:ListItem>Inactivos</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" />
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="gvMedicos" runat="server" Width="767px" AutoGenerateEditButton="True" AutoGenerateColumns="False" OnRowCancelingEdit="gvMedicos_RowCancelingEdit" OnRowEditing="gvMedicos_RowEditing" OnRowUpdating="gvMedicos_RowUpdating" Height="240px">
                        <Columns>
                            <asp:TemplateField HeaderText="LegajoMedico">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_LegajoMedico" runat="server" Text='<%# Bind("LegajoMedico") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_LegajoMedico" runat="server" Text='<%# Bind("LegajoMedico") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Dni">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Dni" runat="server" Text='<%# Bind("Dni") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Dni" runat="server" Text='<%# Bind("Dni") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre ">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellido">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sexo">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Sexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Sexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nacionalidad">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_eit_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Especialidad">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Especialidad" runat="server" Text='<%# Bind("Especialidad") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Especialidad" runat="server" Text='<%# Bind("Especialidad") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Correo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Correo" runat="server" Text='<%# Bind("Correo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Correo" runat="server" Text='<%# Bind("Correo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Telefono">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Telefono" runat="server" Text='<%# Bind("Telefono") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Telefono" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="HorarioApertura">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_HorarioApertura" runat="server" Text='<%# Bind("HorarioApertura") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_HorarioApertura" runat="server" Text='<%# Bind("HorarioApertura") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="HorarioCierre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_HorarioCierre" runat="server" Text='<%# Bind("HorarioCierre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_HorarioCierre" runat="server" Text='<%# Bind("HorarioCierre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Estado" runat="server" Checked='True'  />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Estado" runat="server" Checked="True" Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Lunes">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Lunes" runat="server" Checked='<%# Bind("Lunes") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Lunes" runat="server" Checked='<%# Bind("Lunes") %>' Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Martes">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Martes" runat="server" Checked='<%# Bind("Martes") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Martes" runat="server" Checked='<%# Bind("Martes") %>' Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Miercoles">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Miercoles" runat="server" Checked='<%# Bind("Miercoles") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Miercoles" runat="server" Checked='<%# Bind("Miercoles") %>' Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Jueves">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Jueves" runat="server" Checked='<%# Bind("Jueves") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Jueves" runat="server" Checked='<%# Bind("Jueves") %>' Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Viernes">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Viernes" runat="server" Checked='<%# Bind("Viernes") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Viernes" runat="server" Checked='<%# Bind("Viernes") %>' Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sabado">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Sabado" runat="server" Checked='<%# Bind("Sabado") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Sabado" runat="server" Checked='<%# Bind("Sabado") %>' Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Domingo">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="cb_eit_Domingo" runat="server" Checked='<%# Bind("Domingo") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cb_it_Domingo" runat="server" Checked='<%# Bind("Domingo") %>' Enabled="False" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
        <div>
            <asp:Label ID="lblConfirmacion" runat="server" Text="Esta seguro que quiere eliminar este medico?" Visible="False"></asp:Label>
            <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" Visible="False" />
            <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" Visible="False" />
        </div>
    </form>
</body>
</html>