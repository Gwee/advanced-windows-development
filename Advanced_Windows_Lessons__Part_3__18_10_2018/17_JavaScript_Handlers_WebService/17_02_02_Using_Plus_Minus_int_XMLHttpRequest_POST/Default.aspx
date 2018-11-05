<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
	<script language="javascript">
    var xmlHttp;

    function createXMLHttpRequest() 
    {
		try {
		    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		catch (e) {
		    try {
		        xmlHttp = new XMLHttpRequest();
		    }
		    catch (e) {
		    }
		} 
    }

    function sendRequest(plus_minus) 
    {
        var tBox1 = document.getElementById('TextBox1');
        var tBox2 = document.getElementById('TextBox2');

        var url = "http://localhost:53893/PlusMinus_int_HttpHandler_POST/Handler.ashx";

        xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xmlHttp.onreadystatechange = getResponse;
        xmlHttp.send("cmd=" + plus_minus.toString() + "&A=" + tBox1.value + "&B=" + tBox2.value);
    }

    function getResponse() {
        alert(xmlHttp.readyState);
        if (xmlHttp.readyState==4) {
            document.getElementById('Label1').innerText = xmlHttp.responseText;
        }
}
  </script>
<body onload="createXMLHttpRequest();">
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="+" Width="40px"/>
        <asp:Button ID="Button2" runat="server" Text="-" Width="40px"/>
        <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox>
        =
        <asp:Label ID="Label1" runat="server" Width="111px"></asp:Label></div>
    </form>
</body>
</html>
