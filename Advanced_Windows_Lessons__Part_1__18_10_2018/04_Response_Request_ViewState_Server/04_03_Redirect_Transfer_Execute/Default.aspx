<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;
        <table>
            <tr>
                <td style="width: 137px">
        <asp:Button ID="Button1" runat="server" Height="53px" OnClick="Button1_Click" Text="Response.Redirect" Width="130px" /><br />
        <asp:Button ID="Button2" runat="server" Height="53px" OnClick="Button2_Click" Text="Server.Trasfer" Width="130px" /><br />
        <asp:Button ID="Button3" runat="server" Height="53px" OnClick="Button3_Click" Text="Server.Execute" Width="130px" /></td>
                <td style="width: 336px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" Width="59px" /><br />
                    <asp:Label ID="Label1" runat="server" BackColor="#FFFFC0" Width="256px"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
