<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:Label ID="Label_Name" runat="server" Height="17px" Style="z-index: 113; left: 32px;
                position: absolute; top: 16px" Width="81px">Name</asp:Label>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Age"
                Display="Dynamic" ErrorMessage="You must be 18 years of age" Height="19px" MaximumValue="100"
                MinimumValue="18" Style="z-index: 112; left: 135px; position: absolute; top: 223px"
                Type="Integer" Width="177px"></asp:RangeValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_Password"
                ControlToValidate="TextBox_Verify" Display="Dynamic" ErrorMessage="Wrong Password"
                Style="z-index: 110; left: 135px; position: absolute; top: 196px" Width="153px"></asp:CompareValidator>
            <asp:Label ID="Label_Verify" runat="server" Height="17px" Style="z-index: 109; left: 21px;
                position: absolute; top: 161px" Width="105px">Verify Password</asp:Label>
            <asp:Label ID="Label_Password" runat="server" Height="17px" Style="z-index: 108;
                left: 25px; position: absolute; top: 125px" Width="81px">Password</asp:Label>
            <asp:Label ID="Label_Age" runat="server" Height="17px" Style="z-index: 107; left: 32px;
                position: absolute; top: 88px" Width="81px">Age</asp:Label>
            <asp:TextBox ID="TextBox_Verify" runat="server" Height="23px" Style="z-index: 106;
                left: 133px; position: absolute; top: 160px" TextMode="Password" Width="142px"></asp:TextBox>
            <asp:TextBox ID="TextBox_Password" runat="server" Height="23px" Style="z-index: 105;
                left: 132px; position: absolute; top: 120px" TextMode="Password" Width="143px"></asp:TextBox>
            <asp:TextBox ID="TextBox_Age" runat="server" Height="23px" Style="z-index: 104; left: 133px;
                position: absolute; top: 87px" Width="47px"></asp:TextBox>
            <asp:TextBox ID="TextBox_Address" runat="server" Height="23px" Style="z-index: 103;
                left: 131px; position: absolute; top: 50px" Width="274px"></asp:TextBox>
            <asp:Label ID="Label_Address" runat="server" Height="17px" Style="z-index: 102; left: 32px;
                position: absolute; top: 48px" Width="81px">Address</asp:Label>
            <asp:TextBox ID="TextBox_Name" runat="server" EnableViewState="False" Height="23px"
                Style="z-index: 101; left: 128px; position: absolute; top: 14px" Width="147px"></asp:TextBox>  &nbsp;
    </div>
    </form>
</body>
</html>
