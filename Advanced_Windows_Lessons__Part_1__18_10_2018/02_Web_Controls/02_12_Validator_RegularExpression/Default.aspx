<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:Label ID="Label_Tel" runat="server" Height="9px" Style="z-index: 113; left: 24px;
                position: absolute; top: 40px" Width="73px">Telephone</asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_Mail"
                ErrorMessage="Enter a valid e-mail Address" Style="z-index: 112; left: 307px;
                position: absolute; top: 115px" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Width="186px"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator_Sol" runat="server"
                ControlToValidate="TextBox_Solary" ErrorMessage="Enter a valid Solary Telephone number"
                Style="z-index: 107; left: 308px; position: absolute; top: 73px" ValidationExpression="05[0, 2, 4, 7]-[0-9]{7}"
                Width="238px"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator_Tel" runat="server"
                ControlToValidate="TextBox_Telephone" ErrorMessage="Enter a valid Telephone number"
                Style="z-index: 106; left: 305px; position: absolute; top: 39px" ValidationExpression="0[2-48-9]-[0-9]{7}"
                Width="198px"></asp:RegularExpressionValidator>
            <asp:TextBox ID="TextBox_Solary" runat="server" Font-Size="Medium" Height="25px"
                Style="z-index: 105; left: 143px; position: absolute; top: 71px" Width="150px">0**-*******</asp:TextBox>
            <asp:Label ID="Label_Solary" runat="server" Height="9px" Style="z-index: 104; left: 21px;
                position: absolute; top: 76px" Width="106px">Telephone Solary</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Style="z-index: 102; left: 143px;
                position: absolute; top: 36px" Width="150px">0*-*******</asp:TextBox>
            <asp:TextBox ID="TextBox_Telephone" runat="server" Font-Size="Medium" Height="25px"
                Style="z-index: 103; left: 143px; position: absolute; top: 36px" Width="149px">0*-*******</asp:TextBox>
            <asp:Label ID="Label1" runat="server" Height="20px" Style="z-index: 108; left: 20px;
                position: absolute; top: 116px" Width="106px">e-mail</asp:Label>
            <asp:TextBox ID="TextBox_Mail" runat="server" Height="25px" Style="z-index: 109;
                left: 142px; position: absolute; top: 114px" Width="153px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
