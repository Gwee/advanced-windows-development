<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
		<script language="javascript">
			function myClick()
			{
                var hidden = document.getElementById('HiddenField1');
                hidden.value = (parseInt(document.getElementById('TextBox1').value) + 
                    parseInt(document.getElementById('TextBox2').value)).toString();
			}
		</script>

<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Width="76px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="29px" Text="+  JavaScript"
            Width="83px" />
        <asp:TextBox ID="TextBox2" runat="server" Width="76px"></asp:TextBox>
        +
        <asp:TextBox ID="TextBox3" runat="server" Width="76px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="=   ASP" Width="60px" />
        <asp:Label ID="Label1" runat="server" BackColor="#FFFFC0" Width="133px"></asp:Label>&nbsp;
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
</body>
</html>
