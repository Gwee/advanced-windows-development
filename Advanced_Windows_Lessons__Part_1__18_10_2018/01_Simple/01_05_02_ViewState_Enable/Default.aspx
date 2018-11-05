<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" BackColor="#FFFFC0" Width="178px"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server" EnableViewState="False" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" BackColor="#FFFFC0" Width="178px"></asp:Label><br />
        <asp:Button ID="Button1" runat="server" Text="Button" /><br />
    
    </div>
    </form>
</body>
</html>
