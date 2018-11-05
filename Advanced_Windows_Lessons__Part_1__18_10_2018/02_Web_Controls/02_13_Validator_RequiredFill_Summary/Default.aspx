<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:RangeValidator ID="Login_RangeValid" runat="server" ControlToValidate="TextBox_Login"
                Display="None" ErrorMessage="Login must be 5 - 8 characters" Height="21px" MaximumValue="8"
                MinimumValue="5" Style="z-index: 119; left: 24px; position: absolute; top: 296px"
                Width="84px"></asp:RangeValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List"
                ShowMessageBox="True" Style="z-index: 118; left: 23px; position: absolute; top: 15px" />
            <asp:RequiredFieldValidator ID="Password_ReqFill" runat="server" ControlToValidate="TextBox_Password"
                Display="None" ErrorMessage="Password is required" Height="9px" Style="z-index: 115;
                left: 277px; position: absolute; top: 269px" Width="131px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="Address_ReqFill" runat="server" ControlToValidate="TextBox_Address"
                Display="None" ErrorMessage="Address is required" Height="9px" Style="z-index: 114;
                left: 142px; position: absolute; top: 269px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="Name_ReqFill" runat="server" ControlToValidate="TextBox_Name"
                Display="None" ErrorMessage="Name is required" Style="z-index: 113; left: 23px;
                position: absolute; top: 270px; right: 583px;"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="Password_CompareValid" runat="server" ControlToCompare="TextBox_Password"
                ControlToValidate="TextBox_Verify" Display="None" ErrorMessage="Password don't verify"
                Style="z-index: 112; left: 159px; position: absolute; top: 296px" Width="155px"></asp:CompareValidator>
            <asp:TextBox ID="TextBox_Verify" runat="server" Height="23px" Style="z-index: 107;
                left: 127px; position: absolute; top: 237px" TextMode="Password" Width="142px"></asp:TextBox>
            <asp:Label ID="Label_Name" runat="server" Height="17px" Style="z-index: 111; left: 20px;
                position: absolute; top: 92px" Width="81px">Name</asp:Label>
            <asp:Label ID="Label_Password" runat="server" Height="17px" Style="z-index: 109;
                left: 19px; position: absolute; top: 202px" Width="81px">Password</asp:Label>
            <asp:Label ID="Label_Login" runat="server" Height="17px" Style="z-index: 108; left: 19px;
                position: absolute; top: 166px" Width="81px">Login</asp:Label>
            <asp:TextBox ID="TextBox_Password" runat="server" Height="23px" Style="z-index: 106;
                left: 124px; position: absolute; top: 199px" TextMode="Password" Width="143px"></asp:TextBox>
            <asp:TextBox ID="TextBox_Login" runat="server" Height="23px" Style="z-index: 105;
                left: 126px; position: absolute; top: 164px" Width="140px"></asp:TextBox>
            <asp:TextBox ID="TextBox_Address" runat="server" Height="23px" Style="z-index: 104;
                left: 123px; position: absolute; top: 127px" Width="274px"></asp:TextBox>
            <asp:Label ID="Label_Address" runat="server" Height="17px" Style="z-index: 103; left: 18px;
                position: absolute; top: 125px" Width="81px">Address</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="23px" Style="z-index: 101; left: 122px;
                position: absolute; top: 91px" Width="152px"></asp:TextBox>
            <asp:TextBox ID="TextBox_Name" runat="server" Height="23px" Style="z-index: 102;
                left: 122px; position: absolute; top: 91px" Width="161px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Height="37px" Style="z-index: 116; left: 331px;
                position: absolute; top: 188px" Text="OK" Width="46px" />
    </div>
    </form>
</body>
</html>
