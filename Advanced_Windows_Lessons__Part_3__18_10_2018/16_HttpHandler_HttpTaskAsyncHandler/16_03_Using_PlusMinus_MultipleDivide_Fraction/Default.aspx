<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="40px"></asp:TextBox>
        /
        <asp:TextBox ID="TextBox2" runat="server" Width="40px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="+ -" Width="40px" OnClick="allButtons_Click" />
        <asp:Button ID="Button2" runat="server" Text="* /" Width="40px" OnClick="allButtons_Click" />
        <asp:TextBox ID="TextBox3" runat="server" Width="40px"></asp:TextBox>
        /
        <asp:TextBox ID="TextBox4" runat="server" Width="40px"></asp:TextBox>
        =
        <asp:Label ID="Label1" runat="server" ></asp:Label>
        /
        <asp:Label ID="Label2" runat="server" ></asp:Label>
        &nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label3" runat="server"></asp:Label>
        /
        <asp:Label ID="Label4" runat="server"></asp:Label>
     </div>
    </div>
    </form>
</body>
</html>
