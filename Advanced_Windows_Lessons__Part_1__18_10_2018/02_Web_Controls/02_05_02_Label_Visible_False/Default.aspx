﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="76px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="+" Width="48px" OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox2" runat="server" Width="76px"></asp:TextBox>
        +
        <asp:TextBox ID="TextBox3" runat="server" Width="76px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="=" Width="48px" OnClick="Button2_Click" />
        <asp:Label ID="Label1" runat="server" Width="133px" BackColor="#FFFFC0"> </asp:Label>&nbsp;
        </div>
    <asp:Label ID="Label2" runat="server" BackColor="#FF3399" 
        Text="AAAAAAAAAAAAAAAAAAAAAAAAAa" Visible="False"></asp:Label>
    </form>
</body>
</html>