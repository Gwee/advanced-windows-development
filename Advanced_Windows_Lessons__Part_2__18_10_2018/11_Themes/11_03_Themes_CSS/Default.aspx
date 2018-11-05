<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" Theme="myTheme" 
 StylesheetTheme="myTheme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Height="41px" Style="z-index: 100; left: 23px;
            position: absolute; top: 31px" Width="249px" CssClass="myStyle2" ></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" EnableTheming = "true" Height="39px" Style="z-index: 100; left: 329px;
            position: absolute; top: 33px" Width="249px" SkinID="Second" Font-Size="Small"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="56px" OnClick="Button1_Click" Style="z-index: 101;
            left: 74px; position: absolute; top: 87px" Text="Button" Width="116px" CssClass="myStyle2" />
        <asp:Button ID="Button2" runat="server" Height="56px" Style="z-index: 101;
            left: 368px; position: absolute; top: 86px" Text="Button" Width="116px" OnClick="Button2_Click" SkinID="Second"/>
        <asp:Label ID="Label1" runat="server" Height="42px" Style="z-index: 103; left: 25px;
            position: absolute; top: 152px" Width="256px" CssClass="myStyle2" ></asp:Label>
        <asp:Label ID="Label2" runat="server" Height="42px" Style="z-index: 103; left: 321px;
            position: absolute; top: 152px" Width="256px" SkinID="Second"></asp:Label>
        </div>
    </form>
</body>
</html>
