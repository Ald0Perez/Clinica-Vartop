<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarMedico.aspx.cs" Inherits="Tp_Muestra.AgregarMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

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

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 2228px;
        }
        .auto-style3 {
            width: 413px;
        }
        .auto-style4 {
            width: 3444px;
        }
        .auto-style6 {
            width: 2228px;
            height: 23px;
        }
        .auto-style8 {
            width: 3444px;
            height: 23px;
        }
        .auto-style9 {
            width: 413px;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style13 {
            width: 2228px;
            height: 24px;
        }
        .auto-style15 {
            width: 3444px;
            height: 24px;
        }
        .auto-style16 {
            width: 413px;
            height: 24px;
        }
        .auto-style17 {
            height: 24px;
        }
        .auto-style21 {
            width: 2228px;
            height: 26px;
        }
        .auto-style23 {
            width: 3444px;
            height: 26px;
        }
        .auto-style24 {
            width: 413px;
            height: 26px;
        }
        .auto-style25 {
            height: 26px;
        }
        .auto-style26 {
            width: 132px;
        }
        .auto-style27 {
            width: 132px;
            height: 23px;
        }
        .auto-style28 {
            width: 132px;
            height: 26px;
        }
        .auto-style29 {
            width: 132px;
            height: 24px;
        }

        #HyperLink2{
    text-decoration: none;
    color:black
}

                .usuario-highlight {
            padding: 5px 10px;
border-radius: 30px;
font-weight: bold;
text-align: center;
        }
        .auto-style30 {
            width: 2228px;
            height: 42px;
        }
        .auto-style31 {
            width: 132px;
            height: 42px;
        }
        .auto-style32 {
            width: 3444px;
            height: 42px;
        }
        .auto-style33 {
            width: 413px;
            height: 42px;
        }
        .auto-style34 {
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="AGREGAR MÉDICO" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style27">Legajo:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtLegajo" runat="server" Width="200px" AutoPostBack="True" OnTextChanged="txtLegajo_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLegajo" runat="server" ControlToValidate="txtLegajo" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        <asp:RegularExpressionValidator ID="revLegajo" runat="server" ControlToValidate="txtLegajo" Display="None" ErrorMessage="Campo Legajo: Debe ingresar solo numeros" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style10">
                        <asp:RegularExpressionValidator ID="revLegajoCant" runat="server" ControlToValidate="txtLegajo" Display="None" ErrorMessage="Legajo permite solo 4 Caracteres" ValidationExpression="^.{4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">DNI:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDNI" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqvDni" runat="server" ControlToValidate="txtDNI" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDNI" Display="None" ErrorMessage="Campo Dni: Debe ingresar solo numeros" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revDniCant" runat="server" ControlToValidate="txtDNI" Display="None" ErrorMessage="Dni permite solo 8 Caracteres" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style28">Nombre:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtNombre" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">
                        <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="Campo Nombre:Debe Ingresar solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style28">Apellido:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtApellido" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style25">
                        <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" Display="None" ErrorMessage="Campo Apellido: Debe Ingresar solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style26">Sexo:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="200px">
                            <asp:ListItem Value="0">    --Seleccione--</asp:ListItem>
                            <asp:ListItem Value="1">Femenino</asp:ListItem>
                            <asp:ListItem Value="2">Masculino</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ErrorMessage="No Selecciono Sexo" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style29">Nacionalidad:</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="ddlNacionalidad" runat="server" Height="20px" Width="210px">
                            <asp:ListItem>--Seleccione--</asp:ListItem>
                            <asp:ListItem>Argentina</asp:ListItem>
                            <asp:ListItem>Uruguay</asp:ListItem>
                            <asp:ListItem>Brasil</asp:ListItem>
                            <asp:ListItem>Paraguay</asp:ListItem>
                            <asp:ListItem>Bolivia</asp:ListItem>
                            <asp:ListItem>Chile</asp:ListItem>
                            <asp:ListItem>Peru</asp:ListItem>
                            <asp:ListItem>Ecuador</asp:ListItem>
                            <asp:ListItem>Venezuela</asp:ListItem>
                            <asp:ListItem>Colombia</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="ddlNacionalidad" ErrorMessage="No Selecciono Nacionalidad" InitialValue="--Seleccione--">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style16">
                        </td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">Fecha Nacimiento:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlDia" runat="server">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDia" runat="server" ControlToValidate="ddlDia" ErrorMessage="No selecciono Dia" InitialValue="--Seleccione--">*</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddlMes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                            <asp:ListItem Value="--Seleccione--"></asp:ListItem>
                            <asp:ListItem Value="1">Enero</asp:ListItem>
                            <asp:ListItem Value="2">Febrero</asp:ListItem>
                            <asp:ListItem Value="3">Marzo</asp:ListItem>
                            <asp:ListItem Value="4">Abril</asp:ListItem>
                            <asp:ListItem Value="5">Mayo</asp:ListItem>
                            <asp:ListItem Value="6">Junio</asp:ListItem>
                            <asp:ListItem Value="7">Julio</asp:ListItem>
                            <asp:ListItem Value="8">Agosto</asp:ListItem>
                            <asp:ListItem Value="9">Septiembre</asp:ListItem>
                            <asp:ListItem Value="10">Octubre</asp:ListItem>
                            <asp:ListItem Value="11">Noviembre</asp:ListItem>
                            <asp:ListItem Value="12">Diciembre</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvMes" runat="server" ControlToValidate="ddlMes" ErrorMessage="No selecciono Mes" InitialValue="--Seleccione--">*</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddlAño" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvAño" runat="server" ControlToValidate="ddlAño" ErrorMessage="No selecciono Año" InitialValue="--Seleccione--">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style28">Provincia:</td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="ddlProvincia" runat="server" Height="16px" Width="210px" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged1">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="No selecciono Provincia" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">
                        &nbsp;</td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">Localidad:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" Height="17px" Width="210px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="No selecciono Localidad" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style27">Dirección:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDireccion" runat="server" Height="16px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDireccion" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">Correo electronico:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreoElectronico" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" Display="None" ErrorMessage="Campo Correo:Debe ingresar una direccion de correo electronico" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30"></td>
                    <td class="auto-style31">Telefono:</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="txtTelefono" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style33">
                        <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" Display="None" ErrorMessage="Campo Telefono:Debe ingresar solo numeros" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style34">
                        <asp:RegularExpressionValidator ID="regTelefonoCant" runat="server" ControlToValidate="txtTelefono" Display="None" ErrorMessage="Telefono Permite solo 10 caracteres" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">Especialidad:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlEspecialidad" runat="server" Height="16px" Width="210px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="ddlEspecialidad" ErrorMessage="No selecciono Especialidad" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">Horario de entrada:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlHorarioEntrada" runat="server" AutoPostBack="True" Height="17px" OnSelectedIndexChanged="ddlHorarioEntrada_SelectedIndexChanged" Width="210px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvHorarioEntrada" runat="server" ControlToValidate="ddlHorarioEntrada" Display="Dynamic" ErrorMessage="No selecciono Horario Entrada" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">Horario de salida:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlHorarioSalida" runat="server" Height="16px" Width="210px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvHorarioSalida" runat="server" ControlToValidate="ddlHorarioSalida" Display="Dynamic" ErrorMessage="No selecciono Horario Salida" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style8">Seleccione días de atención</td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="54px" Width="211px" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:CheckBox ID="cbLunes" runat="server" Text="Lunes" />
                        <br />
                        <asp:CheckBox ID="cbMartes" runat="server" Text="Martes" />
                        <br />
                        <asp:CheckBox ID="cbMiercoles" runat="server" Text="Miercoles" />
                        <br />
                        <asp:CheckBox ID="cbJueves" runat="server" Text="Jueves" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:CheckBox ID="cbViernes" runat="server" Text="Viernes" />
                        <br />
                        <asp:CheckBox ID="cbSabado" runat="server" Text="Sabado" />
                        <br />
                        <asp:CheckBox ID="cbDomingo" runat="server" Text="Domingo" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblErrorDias" runat="server" ForeColor="Maroon"></asp:Label>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">
                        <asp:Label ID="lblErrorCargarDatos" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="130px" Height="39px" OnClick="btnAgregar_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblConfirmacion" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblErrorFormulario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
