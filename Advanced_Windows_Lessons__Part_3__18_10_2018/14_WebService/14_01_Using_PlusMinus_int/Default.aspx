<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="+" Width="40px"  OnClick="plusButton_Click"/>
        <asp:Button ID="Button2" runat="server" Text="-" Width="40px"  OnClick="minusButton_Click"/>
        <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox>
        =
        <asp:Label ID="Label1" runat="server" Width="111px"></asp:Label>
    </div>	
    </form>
</body>
</html>
