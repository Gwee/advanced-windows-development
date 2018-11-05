<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 386px">
            <tr>
                <td style="width: 827px">
                Family &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBoxFamily" runat="server" Height="25px" ReadOnly="True" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 827px; height: 35px;">
                    Name &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBoxName" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 827px">
            Home Phone &nbsp;<asp:TextBox ID="TextBoxHomePhone" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 827px; height: 51px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;
        <asp:Button ID="ButtonFirst" runat="server" Height="31px" Text="|<" Width="44px" OnClick="ButtonFirst_Click" />
        <asp:Button ID="ButtonPrevious" runat="server" Height="31px" Text="<" Width="44px" OnClick="ButtonPrevious_Click" />
        <asp:Button ID="ButtonNext" runat="server" Height="31px" Text=">" Width="44px" OnClick="ButtonNext_Click" />

        <asp:Button ID="ButtonLast" runat="server" Height="31px" Text=">|" Width="44px" OnClick="ButtonLast_Click" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
