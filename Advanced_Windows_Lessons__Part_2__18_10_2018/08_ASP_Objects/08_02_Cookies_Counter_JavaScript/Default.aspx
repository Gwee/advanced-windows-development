<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
		<script language="javascript">
		
		     function getCookieVal (offset) {
                var endstr = document.cookie.indexOf (";", offset);
                if (endstr == -1) 
                    endstr = document.cookie.length;
                return unescape(document.cookie.substring(offset, endstr));
            }

            function GetCookie (name) {
                var arg = name + "=";
                var alen = arg.length;
                var clen = document.cookie.length;
                var i = 0;
                while (i < clen) {
                    var j = i + alen;
                    if (document.cookie.substring(i, j) == arg) 
                    return getCookieVal (j);
               
                    i = document.cookie.indexOf(" ", i) + 1;
                    if (i == 0) 
                        break;
                }
                return null;
            }
            function SetCookie (name,value) 
            {
                document.cookie = name + "=" + value.toString();
            }
            		
			function plus_1()
			{
			    var oldValue = GetCookie ("Counter"); 
			    var newValue = (parseInt(oldValue) + 1).toString(); 
				document.getElementById('Label1').innerText = newValue;
				SetCookie ("Counter", newValue) 
			}
			function equal_0()
			{
				document.getElementById('Label1').innerText = "0";
				SetCookie ("Counter", "0") 
			}
			function minus_1()
			{
			    var oldValue = GetCookie ("Counter"); 
			    var newValue = (parseInt(oldValue) - 1).toString(); 
				document.getElementById('Label1').innerText = newValue;
				SetCookie ("Counter", newValue) 
			}
		</script>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 42px; position: absolute;
            top: 43px" Width="47px">0</asp:Label>
        <asp:Button ID="Button1" runat="server" Height="36px" Style="z-index: 101;
            left: 34px; position: absolute; top: 82px" Text="+ 1" Width="46px" />
        <asp:Button ID="Button2" runat="server" Height="36px" Style="z-index: 102;
            left: 91px; position: absolute; top: 82px" Text="= 0" Width="46px" />
        <asp:Button ID="Button3" runat="server" Height="36px" Style="z-index: 103;
            left: 149px; position: absolute; top: 82px" Text="- 1" Width="46px" />
    </div>
    </form>
</body>
</html>
