<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            width: 543px;
        }
    </style>
</head>
		<script language="javascript">
			function myClick()
			{
			    var hiddenValue = document.getElementById('myHidden').value;
			    document.getElementById('Label1').innerText = 
			     (parseInt(hiddenValue) + parseInt(document.getElementById('TextBox3').value)).toString();
			}
		</script>

<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Width="72px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="29px" Text="+  ASP"
            Width="69px" onclick="Button1_Click" />
        <asp:TextBox ID="TextBox2" runat="server" Width="72px"></asp:TextBox>
        +
        <asp:TextBox ID="TextBox3" runat="server" Width="71px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server"  
            Text="=   JavaScript" Width="100px" />
        <asp:Label ID="Label1" runat="server" BackColor="#FFFFC0" Width="85px"></asp:Label>&nbsp;
        </form>
</body>
</html>
