<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
 </head>   
		<script language="javascript">
			function myFunction_1()
			{
                document.getElementById('Label1').innerText = document.getElementById('Label1').innerText + "*";
			}
			function myFunction_2()
			{
                document.getElementById('Label1').innerText = document.getElementById('Label1').innerText + "*";
                window.setTimeout("myFunction_2()", 1000);
			}
			
			function onLoadFunction()
			{
//                window.setInterval("myFunction_1()", 1000);
                myFunction_2();
			}
		</script>    

<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" BackColor="#FFFFC0" Height="348px" Width="415px"></asp:Label>
        </div>
    </form>
</body>
</html>
