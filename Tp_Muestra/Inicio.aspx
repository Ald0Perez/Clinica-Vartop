<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tp_Muestra.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        body{
            background-color:lavender;
        }

#btnIngresar{
    background-color: honeydew;
    color: cornflowerblue;
    border-color: black;
    border: none;
    cursor: pointer;
}

        .auto-style1 {
            width: 100%;
            height: 552px;
        }
        .auto-style2 {
            width: 530px;
            height: 52px;
        }
        .auto-style3 {
            height: 157px;
        }
        .auto-style4 {
            width: 530px;
            height: 157px;
        }
        .auto-style5 {
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="Clinica Vartop" Font-Names="Bookman Old Style"></asp:Label>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Legajo Usuario:&nbsp;<asp:TextBox ID="txtUsuario" runat="server" Width="215px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese el Usuario">*</asp:RequiredFieldValidator>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Clave :
                    <asp:TextBox ID="txtClave" runat="server" Width="215px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtClave" ErrorMessage="Ingrese la Contraseña">*</asp:RequiredFieldValidator>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnIngresar" runat="server" Height="28px" Text="Ingresar" Width="103px" Font-Bold="True" OnClick="btnIngresar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblErrorInicio" runat="server"></asp:Label>
&nbsp;<asp:ValidationSummary ID="vs1" runat="server" />
                </td>
                <td class="auto-style5"></td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
