<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<script type = "text/javascript">
    var xmlHttp;
    function onLoadFunction() {
        if (window.ActiveXObject)
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        else if (window.XMLHttpRequest)
            xmlHttp = new XMLHttpRequest();
    }

    function OK_function() {
        var ID = document.getElementById('TextBox1').value
        var FAMILY = document.getElementById('TextBox2').value
        var NAME = document.getElementById('TextBox3').value

        var url = "HttpTaskAsyncHandler_Update_GET.ashx?ID=" + ID + "&FAMILY=" + FAMILY + "&NAME=" + NAME;
    xmlHttp.open("GET",url,true);
    xmlHttp.onreadystatechange = getResponse;
    xmlHttp.send();
    }

    function getResponse() {
    //    alert(xmlHttp.readyState);
        if (xmlHttp.readyState == 4) {
            if (xmlHttp.responseText == "1") {
                var ReturnValue_1 = document.getElementById('TextBox1').value;
                var ReturnValue_2 = document.getElementById('TextBox2').value;
                var ReturnValue_3 = document.getElementById('TextBox3').value;

                window.returnValue = [ReturnValue_1, ReturnValue_2, ReturnValue_3];
                window.close();
            }
        }
    }

</script>

<body onload="onLoadFunction()">
    <form id="form1" runat="server">
    <div>
        ID
       <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
       <br />Family     
       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       <br />Name
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="OK" onClientClick="OK_function(); return false;"/>
     </div>
    </form>
</body>
</html>
