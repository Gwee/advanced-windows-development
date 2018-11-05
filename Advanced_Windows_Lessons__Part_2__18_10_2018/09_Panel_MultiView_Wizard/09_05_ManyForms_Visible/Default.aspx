<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form_1" runat="server" visible="true">
            <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="375">
                <tr>
                    <td>
                        First Form</td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" /></td>
                      <td>
                        <asp:Button ID="Button2" runat="server" Text="To Second" OnClick="Button24_Click" /></td>
                </tr>
                <tr>
                    <td style="height: 21px">
                        <asp:Label ID="Label1" runat="server" Width="291px"></asp:Label></td>
                    <td style="height: 21px">
                    </td>
                </tr>
            </table>
    </form>
    <form id="form_2" runat="server" visible="false">
            <table id="Table2" border="0" cellpadding="1" cellspacing="1" width="375">
                <tr>
                    <td>
                        Second Form</td>
                    <td style="width: 48px">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox></td>
                    <td style="width: 48px">
                        <asp:Button ID="Button3" runat="server" Text="OK" OnClick="Button3_Click" /></td>
                      <td>
                        <asp:Button ID="Button4" runat="server" Text="To First" OnClick="Button24_Click" /></td>
                </tr>
                <tr>
                    <td style="height: 21px">
                        <asp:Label ID="Label2" runat="server" Width="291px"></asp:Label></td>
                    <td style="height: 21px; width: 48px;">
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
