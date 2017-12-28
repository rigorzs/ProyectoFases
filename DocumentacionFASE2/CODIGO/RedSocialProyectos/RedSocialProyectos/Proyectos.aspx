<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proyectos.aspx.cs" Inherits="RedSocialProyectos.Proyectos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 489px;
            height: 347px;
        }
        .auto-style3 {
            height: 347px;
        }
        .auto-style4 {
            height: 347px;
            width: 446px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="background-color: #BBDEBA">
    <form id="form1" runat="server">
    <div style="background-color: #000000">
    
        <br />
    
    </div>
        
    <table class="auto-style5">
        <tr>
            <td class="auto-style2"><asp:Panel ID="Panel1" runat="server" Height="380px" Width="183px">
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
                <br />
                <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Asociaciones" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Contactos" Width="116px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Conocimientos" Width="115px" />
            <br />
        </asp:Panel>&nbsp;</td>
            <td class="auto-style4">
                <asp:Panel ID="Panel2" runat="server" Height="402px" CssClass="auto-style6">
                    <br />
                    Nombre Proyecto<br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Fecha inicio<br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Fecha Final<br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Precio<br />&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="height: 26px" Text="Crear" />
                </asp:Panel>
            </td>
            <td class="auto-style3">
                <asp:Panel ID="Panel3" runat="server" Height="418px">
                    &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
            </td>
        </tr>

    </table>
        
    </form>
    </body>
</html>

