<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>

    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="200">
        <tr>
            <td style="width: 259px">
            Put your name            
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="116px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 259px">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Width="221px"></asp:Label></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="OK" Width="68px" OnClick="Button1_Click" /></td>
        </tr>
    </table>

