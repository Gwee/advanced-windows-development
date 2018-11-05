<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>

		<script language="javascript">

		    function Plus_Click() {
		        var first = parseInt(document.getElementById('TextBox1').value);
		        var second = parseInt(document.getElementById('TextBox2').value);
		        //              WebService.plus(first, second, onRequestComplete);
		        PageMethods.plus(first, second, onRequestComplete, null, 'Label1');
		    }
		    function Minus_Click() {
		        var first = parseInt(document.getElementById('TextBox1').value);
		        var second = parseInt(document.getElementById('TextBox2').value);
		        //              WebService.minus(first, second, onRequestComplete);
		        PageMethods.minus(first, second, onRequestComplete, null, 'Label1');
		    }

        function onRequestComplete(result, context)
        {
            document.getElementById(context).innerText = result.toString();
        }
		</script>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" 
            EnablePageMethods="true" runat="server" />
        
        <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="+" Width="40px"/>
        <asp:Button ID="Button2" runat="server" Text="-" Width="40px"/>
        <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox>
        =
        <asp:Label ID="Label1" runat="server" Width="111px"></asp:Label>
    </form>
</body>
</html>
