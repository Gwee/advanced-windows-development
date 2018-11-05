<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:RadioButton ID="RB1" runat="server" AutoPostBack="True" Checked="True" GroupName="Group 1"
                Height="21px" Style="z-index: 108; left: 72px; position: absolute; top: 48px"
                Width="15px" OnCheckedChanged="RadioButton_CheckedChanged" />
            <asp:LinkButton ID="LinkButton4" runat="server" Enabled="False" Style="z-index: 107;
                left: 108px; position: absolute; top: 177px" OnClick="allLinkButtons_Click">wrox.com</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" Enabled="False" Style="z-index: 106;
                left: 106px; position: absolute; top: 150px" Width="130px" OnClick="allLinkButtons_Click">addisonwesley.com</asp:LinkButton>
            <asp:RadioButton ID="RB2" runat="server" AutoPostBack="True" GroupName="Group 1"
                Style="z-index: 101; left: 72px; position: absolute; top: 84px" Width="27px" OnCheckedChanged="RadioButton_CheckedChanged" />
            <asp:CheckBox ID="CB1" runat="server" AutoPostBack="True" Height="21px" Style="z-index: 102;
                left: 70px; position: absolute; top: 150px" Width="19px" OnCheckedChanged="CB1_CheckedChanged" />
            <asp:CheckBox ID="CB2" runat="server" AutoPostBack="True" Height="27px" Style="z-index: 103;
                left: 69px; position: absolute; top: 179px" Width="21px" OnCheckedChanged="CB2_CheckedChanged1" />
            <asp:LinkButton ID="LinkButton1" runat="server" Height="13px" Style="z-index: 104;
                left: 110px; position: absolute; top: 57px" Width="55px" OnClick="allLinkButtons_Click">microsoft.com</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" Enabled="False" Height="20px" Style="z-index: 105;
                left: 108px; position: absolute; top: 83px" Width="90px" OnClick="allLinkButtons_Click">sun.com</asp:LinkButton>
 
    </div>
    </form>
</body>
</html>
