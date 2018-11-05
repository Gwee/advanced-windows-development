<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button3" runat="server" Height="36px" OnClick="Button3_Click" Style="z-index: 103;
            left: 149px; position: absolute; top: 82px" Text="- 1" Width="46px" />
        <asp:Button ID="Button2" runat="server" Height="36px" OnClick="Button2_Click" Style="z-index: 102;
            left: 91px; position: absolute; top: 82px" Text="= 0" Width="46px" />
        <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Style="z-index: 101;
            left: 34px; position: absolute; top: 82px" Text="+ 1" Width="46px" />
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 42px; position: absolute;
            top: 43px" Width="47px">0</asp:Label>
    
    </div>
    </form>
</body>
</html>
