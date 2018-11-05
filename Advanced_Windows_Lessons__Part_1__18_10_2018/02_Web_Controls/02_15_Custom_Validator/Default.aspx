<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    		<script language="javascript">
			function validateLength(objectSource, text) 
			{	
				var returnValue = true;
				if ( document.getElementById('TextBox_ToClientValidate').value.length < 9) {
					alert("UserName Length  must be 9 characters or longer");
					returnValue = false;
				}
				return returnValue;
			}
		</script>
</head>
<body>

    <form id="form1" runat="server">
    <div>
            <asp:Label ID="UserName_Label" runat="server" Style="z-index: 106; left: 56px; position: absolute;
                top: 32px" Width="98px">UserName</asp:Label>
        &nbsp;
            <asp:TextBox ID="UserName_TextBox" runat="server" Style="z-index: 100; left: 188px;
                position: absolute; top: 27px"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="UserName_TextBox"
                EnableClientScript="False" ErrorMessage="UserName Length  must be 9 characters or longer"
                OnServerValidate="CustomValidator1_ServerValidate" Style="z-index: 101; left: 40px;
                position: absolute; top: 104px" Width="309px"></asp:CustomValidator>
            <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Style="z-index: 103;
                left: 398px; position: absolute; top: 62px" Text="Submit" Width="86px" />
            <asp:Label ID="Label1" runat="server" Height="23px" Style="z-index: 104; left: 405px;
                position: absolute; top: 117px" Width="121px"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName_TextBox"
                EnableClientScript="False" ErrorMessage="UserName Empty" Style="z-index: 105;
                left: 34px; position: absolute; top: 137px" Width="122px"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox_ToClientValidate" runat="server" Style="z-index: 107; left: 192px;
                position: absolute; top: 168px"></asp:TextBox> 
        <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="validateLength"
            ControlToValidate="TextBox_ToClientValidate" Style="z-index: 108; left: 48px;
            position: absolute; top: 208px" Width="309px"></asp:CustomValidator>
    </div>
    </form>
</body>
</html>
