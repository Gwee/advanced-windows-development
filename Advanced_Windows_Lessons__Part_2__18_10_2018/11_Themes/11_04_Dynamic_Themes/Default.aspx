<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Style="z-index: 100; left: 23px;
            position: absolute; top: 40px" Width="249px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" Height="56px" OnClick="Button1_Click" Style="z-index: 101;
            left: 78px; position: absolute; top: 83px" Text="Button" Width="116px" />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Height="42px" Style="z-index: 102; left: 26px;
            position: absolute; top: 143px" Width="256px" ></asp:Label>
        &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Style="z-index: 103;
            left: 25px; position: absolute; top: 216px" Text="First Theme" Width="103px" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="z-index: 105;
            left: 149px; position: absolute; top: 217px" Text="Second Theme" Width="103px" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Style="z-index: 105;
            left: 275px; position: absolute; top: 217px" Text="Without Theme" Width="103px" />
        </div>
    </form>
</body>
</html>
