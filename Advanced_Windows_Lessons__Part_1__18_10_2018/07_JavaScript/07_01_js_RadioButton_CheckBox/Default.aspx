<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>

			<script language="javascript">
			function func1(obj1ID,obj2ID,obj3ID,obj4ID)
			{
				var rb1 = document.getElementById(obj1ID);
				var rb2 = document.getElementById(obj2ID);
				var b1 = document.getElementById(obj3ID);
				var b2 = document.getElementById(obj4ID);
				
				if ( rb1.checked == true )
					rb2.checked = false;
				
				if ( rb1.checked == true )
				{
					b1.disabled = false;
				}
				else
				{
					b1.disabled = true;
				}
						
				if ( rb2.checked == true )
				{
					b2.disabled = false;
				}
				else
				{
					b2.disabled = true;
				}
			}
			function func2(obj1ID,obj2ID)
			{
				var cb = document.getElementById(obj1ID);
				var b = document.getElementById(obj2ID);
				
				if ( cb.checked == true )
				{
					b.disabled = false;
				}
				else
				{
					b.disabled = true;
				}
			}
		</script>


<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button2" runat="server" disabled="disabled" name="Button1" style="z-index: 109;
            left: 193px; position: absolute; top: 64px; width: 59px;" type="button" value="Button" />
        <input id="Button4" runat="server" disabled="disabled" name="Button1" style="z-index: 110;
            left: 197px; position: absolute; top: 168px; width: 62px;" type="button" value="Button" />
        <input id="Button3" runat="server" disabled="disabled" name="Button1" style="z-index: 111;
            left: 194px; position: absolute; top: 136px; width: 62px;" type="button" value="Button" />
        <asp:CheckBox ID="CheckBox2" runat="server" Style="z-index: 112; left: 109px; position: absolute;
            top: 176px" Width="64px" />
        <asp:RadioButton ID="RadioButton1" runat="server" Style="z-index: 113; left: 104px;
            position: absolute; top: 32px" TabIndex="1" Width="56px" />
        <asp:RadioButton ID="RadioButton2" runat="server" Style="z-index: 114; left: 104px;
            position: absolute; top: 64px" TabIndex="2" Width="72px" />
        <input id="Button1" runat="server" disabled="disabled" name="Button1" style="z-index: 115;
            left: 192px; position: absolute; top: 32px; width: 62px;" type="button" value="Button" />
        <asp:CheckBox ID="CheckBox1" runat="server" Style="z-index: 116; left: 109px; position: absolute;
            top: 136px" Width="64px" />
    
    </div>
    </form>
</body>
</html>
