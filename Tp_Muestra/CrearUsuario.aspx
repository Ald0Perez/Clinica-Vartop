<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Tp_Muestra.CrearUsuario" %>

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

        .auto-style2 {
            width: 292px;
        }
        .auto-style18 {
            width: 323px;
        }
        .auto-style4 {
            width: 913px;
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
            width: 913px;
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
            height: 25px;
        }
        .auto-style22 {
            width: 323px;
            height: 25px;
        }
        .auto-style23 {
            width: 913px;
            height: 25px;
        }
        .auto-style24 {
            width: 413px;
            height: 25px;
        }
        .auto-style25 {
            height: 25px;
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
            width: 913px;
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
        .auto-style26 {
            width: 292px;
            height: 30px;
        }
        .auto-style27 {
            width: 323px;
            height: 30px;
        }
        .auto-style28 {
            width: 913px;
            height: 30px;
        }
        .auto-style29 {
            width: 413px;
            height: 30px;
        }
        .auto-style30 {
            height: 30px;
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
                    <td class="auto-style4">&nbsp;&nbsp;<asp:Label ID="lblCrearUsuario" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="CREAR USUARIO" Font-Names="Bookman Old Style"></asp:Label>
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
                        <asp:Label ID="Label2" runat="server" Text="Legajo:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtLegajo" runat="server" Width="190px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLegajo" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revLegajo" runat="server" ControlToValidate="txtLegajo" ErrorMessage="Solo se permiten numeros" ValidationExpression="^\d+$" ValidationGroup="1"></asp:RegularExpressionValidator>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="revCantidadLegajo" runat="server" ControlToValidate="txtLegajo" ErrorMessage="|Solo 4 Caracteres" ValidationExpression="^.{4}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style27">
                        <asp:Label ID="Label3" runat="server" Text="Usuario:"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="191px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsuario" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revLegajo0" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Solo se permiten letras" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="1"></asp:RegularExpressionValidator>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="revUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="-Maximo 20 Caracteres" ValidationExpression="^.{1,20}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style30">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style20">
                        <asp:Label ID="Label4" runat="server" Text="Contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtContraseña" runat="server" Width="194px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="revUsuario0" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Maximo 20 Caracteres" ValidationExpression="^.{1,20}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:Label ID="Label5" runat="server" Text="Confirme Contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtConfirmeContraseña" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmeContraseña" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:CompareValidator ID="cvContra" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtConfirmeContraseña" ErrorMessage="Contraseña no son iguales" ValidationGroup="1"></asp:CompareValidator>
                    </td>
                    <td class="auto-style24">
                        &nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:HiddenField ID="hdnConfirmacion" runat="server" />
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnCrear" runat="server" Text="Crear" ValidationGroup="1" Height="44px" Width="94px" OnClick="btnCrear_Click1" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblCargo" runat="server"></asp:Label>
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
                    <td class="auto-style19">
                        <asp:Label ID="txtErrorCargarDatos0" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Label ID="txtConfirmacion0" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Label ID="txtErrorFormulario0" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
