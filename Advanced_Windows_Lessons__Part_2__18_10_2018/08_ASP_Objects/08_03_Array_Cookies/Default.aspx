<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 93px; position: absolute;
            top: 88px" Width="103px">0</asp:Label>
        <asp:Button ID="Button1" runat="server" Style="z-index: 101; left: 79px; position: absolute;
            top: 132px" Text="Button_1   +1" Width="96px" OnClick="Button123_Click" />
        <asp:Button ID="Button2" runat="server" Style="z-index: 102; left: 189px; position: absolute;
            top: 132px" Text="Button_2   +10" Width="105px" OnClick="Button123_Click"/>
        <asp:Button ID="Button3" runat="server" Style="z-index: 103; left: 304px; position: absolute;
            top: 133px" Text="Button_3   + 100" Width="115px" OnClick="Button123_Click"/>
        <asp:Button ID="Button4" runat="server" Style="z-index: 105; left: 77px; position: absolute;
            top: 193px" Text="Save Last Value in all Cookies" Width="200px" OnClick="Button4_Click" />
        <asp:Label ID="Label2" runat="server" Height="80px" Style="z-index: 106; left: 216px;
            position: absolute; top: 32px" Width="400px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
