<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Button ID="Button1" runat="server" Text="To First" OnClick="Button1_Click" /></td>
        <asp:Button ID="Button2" runat="server" Text="To Second" OnClick="Button2_Click" /></td>

        <asp:Panel ID="Panel1" runat="server" Height="93px" Visible="False" Width="634px">
            First Panel<br /> &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox></td>
            <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" /></td>
            <asp:Label ID="Label1" runat="server" Width="291px"></asp:Label></td>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="76px" Visible="False" Width="636px">
        Second Panel<br /> &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox></td>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" /></td>
        <asp:Label ID="Label2" runat="server" Width="291px"></asp:Label></td>
        </asp:Panel>
    </form>
</body>
</html>
