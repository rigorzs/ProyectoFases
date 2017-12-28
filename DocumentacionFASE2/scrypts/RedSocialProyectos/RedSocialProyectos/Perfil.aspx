<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="RedSocialProyectos.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 456px;
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
                &nbsp;<asp:Label ID="Label2" runat="server" Text="USUARIO" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Label"></asp:Label>
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
                <br />
                <asp:Button ID="Button5" runat="server" Text="Proyectos" Width="111px" />
            <br />
        </asp:Panel>&nbsp;</td>
            <td class="auto-style4">
                <asp:Panel ID="Panel2" runat="server" Height="402px" CssClass="auto-style6">
                    <br />
                    Estado<br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="68px" Width="435px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Publicar" OnClick="Button4_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
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
