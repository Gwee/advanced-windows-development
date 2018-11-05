<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
		<script language="javascript">
			function myClick()
			{
				document.getElementById('Label1').innerText = document.getElementById('Hidden1').value;
			}
		</script>

<body>
    <form id="form1" runat="server">
    <div>
        <input id="Hidden1" name="Hidden1" style="z-index: 104; left: 296px; position: absolute;
            top: 32px" type="hidden" />
        <asp:Button ID="Button1" runat="server" Style="z-index: 101; left: 46px; position: absolute;
            top: 92px" Text="Hello !" Width="84px" OnClick="Button1_Click1" />
        <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 52px; position: absolute;
            top: 150px" Width="189px"></asp:Label>
        <asp:Button ID="Button2" runat="server" Style="z-index: 103; left: 151px; position: absolute;
            top: 91px" Text="OK" Width="90px" />
    </div>
    </form>
</body>
</html>
