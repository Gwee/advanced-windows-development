<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Age"
                EnableClientScript="False" ErrorMessage="You must be 18 years of age" Height="19px"
                MaximumValue="100" MinimumValue="18" Style="z-index: 115; left: 144px; position: absolute;
                top: 192px" Type="Integer" Width="177px"></asp:RangeValidator>
            <asp:Label ID="Label_Name" runat="server" Height="17px" Style="z-index: 111; left: 31px;
                position: absolute; top: 17px" Width="81px">Name</asp:Label>
            <asp:Label ID="Label_Age" runat="server" Height="17px" Style="z-index: 107; left: 25px;
                position: absolute; top: 89px" Width="81px">Age</asp:Label>
            <asp:TextBox ID="TextBox_Age" runat="server" Height="23px" Style="z-index: 104; left: 133px;
                position: absolute; top: 87px" Width="47px"></asp:TextBox>
            <asp:TextBox ID="TextBox_Name" runat="server" Height="23px" Style="z-index: 101;
                left: 128px; position: absolute; top: 14px" Width="147px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Style="z-index: 112;
                left: 409px; position: absolute; top: 89px" Text="Submit" Width="80px" />
            <asp:Label ID="Label1" runat="server" Height="89px" Style="z-index: 113; left: 414px;
                position: absolute; top: 150px" Width="106px"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Age"
                EnableClientScript="False" ErrorMessage="Field Age Empty" Style="z-index: 114;
                left: 139px; position: absolute; top: 236px"></asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
