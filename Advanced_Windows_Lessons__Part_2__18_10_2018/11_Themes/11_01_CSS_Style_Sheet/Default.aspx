<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="myStyle1" Height="33px" Style="z-index: 100;
            left: 76px; position: absolute; top: 29px" Width="226px"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" CssClass="myStyle1" Height="54px" OnClick="Button1_Click"
            Style="z-index: 101; left: 129px; position: absolute; top: 79px" Text="Button" Font-Size="XX-Small"
            Width="114px" />
        <asp:Label ID="Label1" runat="server" CssClass="myStyle2" Height="46px" Style="z-index: 102;
            left: 78px; position: absolute; top: 150px" Width="227px"></asp:Label>
           
           <table style="z-index: 104; left: 428px; position: absolute; top: 36px">
            <tr>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" /></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 20px">
                    <asp:Label ID="Label2" runat="server"  Width="158px"></asp:Label></td>
            </tr>
        </table>
    </div>
        <asp:Panel ID="Panel1" runat="server" CssClass="myStyle1" Height="110px" Style="z-index: 105;
            left: 433px; position: absolute; top: 159px" Width="178px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
            <br />
            <asp:Label ID="Label3" runat="server" Width="142px"></asp:Label>
            </asp:Panel>
    </form>
</body>
</html>
