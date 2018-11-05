<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Height="28px" Style="z-index: 101; left: 67px;
            position: absolute; top: 39px" Width="323px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 73px; position: absolute;
            top: 133px" Width="102px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 75px; position: absolute;
            top: 164px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 104;
            left: 224px; position: absolute; top: 129px" Text="Button" Width="60px" />
    
    </div>
    </form>
</body>
</html>
