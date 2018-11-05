<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Height="21px" Style="z-index: 101; left: 36px;
            position: absolute; top: 115px" Width="69px">Password</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Style="z-index: 105; left: 139px;
            position: absolute; top: 111px" TextMode="Password" Width="165px"></asp:TextBox>
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Style="z-index: 102; left: 140px;
            position: absolute; top: 76px" Width="165px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="36px" Style="z-index: 103; left: 347px;
            position: absolute; top: 74px" Text="OK" Width="50px" OnClick="Button1_Click" />
        <asp:Label ID="Label2" runat="server" Height="20px" Style="z-index: 104; left: 37px;
            position: absolute; top: 78px" Width="57px">Name</asp:Label>
        <asp:Label ID="Label3" runat="server" Height="25px" Style="z-index: 106; left: 43px;
            position: absolute; top: 205px" Width="198px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
