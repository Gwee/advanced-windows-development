<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
		
		<script language="javascript">
			function ButtonClick() 
			{
                    document.getElementById("myLabel").innerText = document.getElementById("myTextBox").value;
      ////  	    document.getElementById("myLabel").innerText = document.form1.myTextBox.value;
			}
		</script>

<body>
    <form id="form1" runat="server">
    <div>
        <div id="myLabel"  style="display: inline; z-index: 104;
            left: 216px; width: 184px; position: absolute; top: 192px; height: 19px">
        </div>
        <input onclick="ButtonClick()" style="z-index: 105; left: 256px; width: 80px; position: absolute;
            top: 136px; height: 24px" type="button" value="Button" />
        <input id="myTextBox" name="myTextBox" style="z-index: 106; left: 224px; position: absolute;
            top: 80px" type="text" />    
    </div>
    </form>
</body>
</html>
