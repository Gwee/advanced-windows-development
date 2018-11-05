<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Plus_WebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
        +
        <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="=" Width="40px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Width="111px"></asp:Label></div>
    </form>
</body>
</html>
