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
                    ID &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBoxID" runat="server" Height="25px"
                        Width="160px" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 827px">
                    Family &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBoxFamily" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 827px; height: 35px">
                    Name &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBoxName"
                        runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 827px; height: 51px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:Button ID="ButtonFirst" runat="server" Height="31px" OnClick="ButtonFirst_Click"
                        Text="|<" Width="44px" />
                    <asp:Button ID="ButtonPrevious" runat="server" Height="31px" OnClick="ButtonPrevious_Click"
                        Text="<" Width="44px" />
                    <asp:Button ID="ButtonNext" runat="server" Height="31px" OnClick="ButtonNext_Click"
                        Text=">" Width="44px" />
                    <asp:Button ID="ButtonLast" runat="server" Height="31px" OnClick="ButtonLast_Click"
                        Text=">|" Width="44px" /></td>
            </tr>
            <tr>
                <td style="width: 827px; height: 43px">
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="ButtonUpdate" runat="server" Height="35px" OnClick="ButtonUpdate_Click"
                        Text="Save Changes" Width="98px" />
                    <asp:Button ID="ButtonNew" runat="server" Height="35px" OnClick="ButtonNew_Click"
                        Text="Add new record" Width="103px" />
                    <asp:Button ID="ButtonDelete" runat="server" Height="35px" OnClick="ButtonDelete_Click"
                        Text="Delete record" Width="90px" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
