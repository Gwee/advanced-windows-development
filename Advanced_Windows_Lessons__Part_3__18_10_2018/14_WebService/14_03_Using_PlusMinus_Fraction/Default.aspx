<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="38px"></asp:TextBox>
         / <asp:TextBox ID="TextBox2" runat="server" Width="38px"></asp:TextBox>
         + - &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="38px"></asp:TextBox>
         / <asp:TextBox ID="TextBox4" runat="server" Width="38px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="=" Width="39px" 
            onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" BackColor="#C0FFFF" Width="48px"></asp:Label>
         / <asp:Label ID="Label2" runat="server" BackColor="#C0FFFF" Width="54px"></asp:Label>
        &nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" BackColor="#C0FFFF" Width="48px"></asp:Label>
        /
        <asp:Label ID="Label4" runat="server" BackColor="#C0FFFF" Width="54px"></asp:Label>
    </div>
    </form>
</body>
</html>
