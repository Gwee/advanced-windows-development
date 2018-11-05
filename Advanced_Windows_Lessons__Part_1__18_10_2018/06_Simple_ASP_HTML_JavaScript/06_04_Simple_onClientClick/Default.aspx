<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
		<script language="javascript">
			function myClick()
			{
				document.getElementById('Label1').innerText = document.getElementById('TextBox1').value;
			}
		</script>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 232px; position: absolute;
            top: 48px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" Style="z-index: 102; left: 240px; position: absolute;
            top: 104px" Text="Button"  OnClientClick="myClick();return false;" OnClick="Button1_Click" Width="65px" />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Style="z-index: 103; left: 240px; position: absolute;
            top: 168px" Width="136px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
