<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 3px">
                    <asp:Label ID="Label1" runat="server" Text="Label" Width="141px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 3px">
                    <asp:GridView ID="GridView1" runat="server">
                     </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 3px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
