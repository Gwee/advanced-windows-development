<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>

		<script language="javascript">

		    function FractionJavaScript (n, d) 
	        {
		        this.num = n;
		        this.denom = d;
		}			
 	        function Plus_Minus_Click()
			{
			    var first = new FractionJavaScript(parseInt(document.getElementById('TextBox1').value),
			            parseInt(document.getElementById('TextBox2').value ));
			    var second = new FractionJavaScript(parseInt(document.getElementById('TextBox3').value),
			            parseInt(document.getElementById('TextBox4').value ));
			   WebService.plus_minus(first, second, onRequestComplete);
            }

        function onRequestComplete(result) {
            document.getElementById('Label1').innerText = result[0].num;
            document.getElementById('Label2').innerText = result[0].denom;
            
            document.getElementById('Label3').innerText = result[1].num;
            document.getElementById('Label4').innerText = result[1].denom;
       }

		</script>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference  Path="WebService.asmx" />
        </Services>
        </asp:ScriptManager>
        &nbsp;
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="38px"></asp:TextBox>
         / <asp:TextBox ID="TextBox2" runat="server" Width="38px"></asp:TextBox>
         + - &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="38px"></asp:TextBox>
         / <asp:TextBox ID="TextBox4" runat="server" Width="38px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="=" Width="39px" />
        <asp:Label ID="Label1" runat="server" BackColor="#C0FFFF" Width="48px"></asp:Label>
         / <asp:Label ID="Label2" runat="server" BackColor="#C0FFFF" Width="54px"></asp:Label>
        &nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" BackColor="#C0FFFF" Width="48px"></asp:Label>
        /
        <asp:Label ID="Label4" runat="server" BackColor="#C0FFFF" Width="54px"></asp:Label>
    </form>
</body>
</html>
