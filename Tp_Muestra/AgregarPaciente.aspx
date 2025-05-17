<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPaciente.aspx.cs" Inherits="Tp_Muestra.AgregarPaciente" %>

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
            width: 292px;
        }
        .auto-style18 {
            width: 309px;
        }
        .auto-style4 {
            width: 1926px;
        }
        .auto-style3 {
            width: 450px;
        }
        .auto-style6 {
            width: 292px;
            height: 23px;
        }
        .auto-style19 {
            width: 309px;
            height: 23px;
        }
        .auto-style8 {
            width: 1926px;
            height: 23px;
        }
        .auto-style9 {
            width: 450px;
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
            width: 309px;
            height: 26px;
        }
        .auto-style23 {
            width: 1926px;
            height: 26px;
        }
        .auto-style24 {
            width: 450px;
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
            width: 309px;
            height: 24px;
        }
        .auto-style15 {
            width: 1926px;
            height: 24px;
        }
        .auto-style16 {
            width: 450px;
            height: 24px;
        }
        .auto-style17 {
            height: 24px;
        }

        #HyperLink2 {
            text-decoration: none;
            color: black
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
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="AGREGAR PACIENTE" Font-Names="Bookman Old Style"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">
                        <asp:Label ID="Label19" runat="server" Text="DNI:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDNI" runat="server" Width="200px" AutoPostBack="True" OnTextChanged="txtDNI_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDNI" Display="None" ErrorMessage="Campo Dni: Debe ingresar solo numeros" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style10">
                        <asp:RegularExpressionValidator ID="revDniCant" runat="server" ControlToValidate="txtDNI" Display="None" ErrorMessage="Dni permite solo 8 Caracteres" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="Label13" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNombre" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqvDni" runat="server" ControlToValidate="txtDNI">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="Campo Nombre:Debe Ingresar solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:Label ID="Label14" runat="server" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtApellido" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">
                        <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" Display="None" ErrorMessage="Campo Apellido: Debe Ingresar solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">Sexo:</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="200px">
                            <asp:ListItem Value="0">    --Seleccione--</asp:ListItem>
                            <asp:ListItem Value="1">Femenino</asp:ListItem>
                            <asp:ListItem Value="2">Masculino</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ErrorMessage="Debe seleccionar sexo" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style20">Nacionalidad:</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="ddlNacionalidad" runat="server" Height="20px" Width="210px">
                            <asp:ListItem Value="0">--Seleccione--</asp:ListItem>
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
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="ddlNacionalidad" ErrorMessage="No selecciono nacionalidad" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">Fecha Nacimiento:</td>
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
                    <td class="auto-style22">Provincia:</td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="ddlProvincia" runat="server" Height="20px" Width="210px" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="No selecciono Provincia" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">Localidad:</td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" Height="20px" Width="210px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="No selecciono Localidad" InitialValue="0">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">Dirección:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDireccion" runat="server" Height="16px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">Correo electronico:</td>
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
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">Telefono:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTelefono" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" Display="None" ErrorMessage="Campo Telefono:Debe ingresar solo numeros" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="regTelefonoCant" runat="server" ControlToValidate="txtTelefono" Display="None" ErrorMessage="Telefono Permite solo 10 caracteres" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="54px" Width="211px" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="136px" Height="46px" OnClick="btnAgregar_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="txtConfirmacion" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="txtErrorCargarDatos" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="txtErrorFormulario" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblAgregar" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
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
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
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
