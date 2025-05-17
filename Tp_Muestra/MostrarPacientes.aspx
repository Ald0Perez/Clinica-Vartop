<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPacientes.aspx.cs" Inherits="Tp_Muestra.VerPacientes" %>

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

        #btnBuscar {
    background-color: honeydew;
    color: cornflowerblue;
    border-color: black;
    border: none;
    cursor: pointer;
}

#btnMostrarTodo {
    background-color: honeydew;
    color: cornflowerblue;
    border-color: black;
    border: none;
    cursor: pointer;
}

#btnFiltrar {
    background-color: honeydew;
    color: cornflowerblue;
    border-color: black;
    border: none;
    cursor: pointer;
}

        .auto-style1 {
            width: 100%;
            height: 537px;
        }
        .auto-style5 {
            width: 321px;
            height: 466px;
        }
        
        .usuario-highlight {
            padding: 5px 10px;
            border-radius: 30px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style13 {
            width: 321px;
        }
        .auto-style14 {
            width: 177px;
        }
        .auto-style15 {
            width: 177px;
            height: 466px;
        }
        .auto-style16 {
            width: 44px;
        }
        .auto-style17 {
            width: 44px;
            height: 466px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaAdmin(Menu).aspx" Font-Names="Bookman Old Style" Font-Bold="True">Volver</asp:HyperLink>
                </td>
                <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" Text="MOSTRAR PACIENTES" Font-Names="Bookman Old Style"></asp:Label>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="lblUsuario" runat="server" CssClass="usuario-highlight" Font-Names="Bookman Old Style"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style17">
                    <br />
                    DNI del paciente:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtDNI" runat="server" Width="198px" ValidationGroup="2"></asp:TextBox>
&nbsp;
                    &nbsp;<asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDNI" ValidationGroup="2">*</asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" ValidationGroup="2" style="width: 57px" />
&nbsp;&nbsp;
                    <asp:Button ID="btnMostrarTodo" runat="server" Text="Mostrar todo" Width="88px" OnClick="btnMostrarTodo_Click" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:GridView ID="gvPacientes" runat="server" Width="621px">
                    </asp:GridView>
                </td>
                <td class="auto-style15">
                    <br />
                    <br />
                    <br />
                    <br />
                    Genero<br />
                    <asp:DropDownList ID="ddlSexo" runat="server">
                        <asp:ListItem Value="0">--Seleccione Filtro--</asp:ListItem>
                        <asp:ListItem Value="M">Sexo M</asp:ListItem>
                        <asp:ListItem Value="F">Sexo F</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Nacionalidad<br />
                    <asp:DropDownList ID="ddlNacionalidad" runat="server">
                        <asp:ListItem Value="0">--Seleccione Filtro--</asp:ListItem>
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
                    <br />
                    <br />
                    <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" />
                    <br />
                </td>
                <td class="auto-style15">
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;<br />
                    &nbsp;<br />
                    <br />
                    &nbsp;<br />
                    &nbsp;<br />
                    <br />
                    &nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
