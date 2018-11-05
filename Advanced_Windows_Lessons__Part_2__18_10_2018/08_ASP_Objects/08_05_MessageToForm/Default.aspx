<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Style="z-index: 101; left: 68px; position: absolute; top: 34px; height: 34px; width: 108px;">
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" Height="35px" OnClick="Button3_Click" Style="z-index: 104;
            left: 16px; position: absolute; top: 174px" Text="Send: Query String" Width="139px" />
        <asp:Button ID="Button4" runat="server" Height="35px" Style="z-index: 104;
            left: 182px; position: absolute; top: 174px" 
            Text="Send: Query String - Coding" Width="183px" OnClick="Button4_Click" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Style="z-index: 103;
            left: 15px; position: absolute; top: 134px" Text="Send: Session" Width="101px" />
        <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Style="z-index: 102;
            left: 15px; position: absolute; top: 92px" Text="Send: Response.Cookie" Width="164px" />
        <asp:Button ID="Button5" runat="server" Height="34px" OnClick="Button5_Click" Style="z-index: 106;
            left: 16px; position: absolute; top: 216px" Text="Send: Context.Handler" Width="151px" />
        <asp:Button ID="Button6" runat="server" PostBackURL="WebForm6.aspx" 
            Height="34px" OnClick="Button6_Click" Style="z-index: 106;
            left: 181px; position: absolute; top: 216px" Text="Send: PreviousPage" 
            Width="142px" />
    </form>
</body>
</html>
