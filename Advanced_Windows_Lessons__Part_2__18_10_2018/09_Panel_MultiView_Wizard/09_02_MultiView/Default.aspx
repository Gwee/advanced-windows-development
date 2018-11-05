<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
                        <asp:Button ID="Button1" runat="server" Text="To First" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="To Second" OnClick="Button2_Click" />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
            <table id="Table3" border="0" cellpadding="1" cellspacing="1" width="375">
                <tr>
                    <td>
                        First View</td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" /></td>
                </tr>
                <tr>
                    <td style="height: 21px">
                        <asp:Label ID="Label1" runat="server" Width="291px"></asp:Label></td>
                    <td style="height: 21px">
                    </td>
                </tr>
            </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
            <table id="Table2" border="0" cellpadding="1" cellspacing="1" width="375">
                <tr>
                    <td style="height: 21px">
                        Second View</td>
                    <td style="height: 21px">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Width="291px"></asp:Label></td>
                    <td>
                    </td>
                </tr>
            </table>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
