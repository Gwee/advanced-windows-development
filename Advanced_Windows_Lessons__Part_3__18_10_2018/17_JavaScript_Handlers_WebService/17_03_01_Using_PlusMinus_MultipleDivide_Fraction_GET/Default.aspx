<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
		<script language="javascript">
		    var xmlHttp;

		    function onLoadJavaScript() {
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

		    function sendRequest(PlusMinusMultipleDivide) {
		        if (document.getElementById('TextBox1').value == "")
		            return;
		        myJSON_Object = new Array();
		        for (var i = 0; i < 2; i++) 
		            myJSON_Object[i] = new Object();

	            myJSON_Object[0].num = parseInt(document.getElementById('TextBox1').value);
	            myJSON_Object[0].denom = parseInt(document.getElementById('TextBox2').value);
	            myJSON_Object[1].num = parseInt(document.getElementById('TextBox3').value);
	            myJSON_Object[1].denom = parseInt(document.getElementById('TextBox4').value);

		        var myJsonString_0 = JSON.stringify(myJSON_Object[0]);
		        var myJsonString_1 = JSON.stringify(myJSON_Object[1]);
//		        var url = "http://localhost:50899/PlusMinus_MultipleDivide_Fraction_HttpTaskAsyncHandler_GET/Handler.ashx?cmd=";
//		        url += PlusMinusMultipleDivide.toString() + "&JsonString_0=" + myJsonString_0 + "&JsonString_1=" + myJsonString_1;

		        var url = "http://localhost:55098/PlusMinus_MultipleDivide_Fraction_WebService/Service.asmx";
		        url += "/" + PlusMinusMultipleDivide.toString() + "?JsonString_0=" + myJsonString_0 + "&JsonString_1=" + myJsonString_1;

		        xmlHttp.open("GET", url, true);
		        xmlHttp.onreadystatechange = onRequest;
		        xmlHttp.send();
		    }

		    function onRequest() {
		        if (xmlHttp.readyState == 4) {
		            var myJSON_Text = xmlHttp.responseText;

		            alert(myJSON_Text);
//		            myJSON_Object = eval(myJSON_Text);
		             var tempJSON_Object = eval('(' + myJSON_Text + ')');
		             document.getElementById('Label1').innerText = tempJSON_Object[0].num;
		             document.getElementById('Label2').innerText = tempJSON_Object[0].denom;
		             document.getElementById('Label3').innerText = tempJSON_Object[1].num;
		             document.getElementById('Label4').innerText = tempJSON_Object[1].denom;
                 }
		    }
		</script>
  
<body onload="onLoadJavaScript();">
    <form id="form1" runat="server">
 
    <div>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="40px"></asp:TextBox>
        /
        <asp:TextBox ID="TextBox2" runat="server" Width="40px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="+ -" Width="40px" />
        <asp:Button ID="Button2" runat="server" Text="* /" Width="40px" />
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
    </form>
</body>
</html>
