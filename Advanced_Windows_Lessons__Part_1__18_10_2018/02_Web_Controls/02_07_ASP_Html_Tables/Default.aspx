<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 4px">
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Width="137px">Static Html Table</asp:Label>
                    <table id="Table1" align="left" border="1" cellpadding="1" cellspacing="1" style="width: 402px;
                        height: 60px" width="402">
                        <tr>
                            <td style="height: 28px">
                                Rows
                                <asp:TextBox ID="TextBoxRow" runat="server" Width="52px"></asp:TextBox></td>
                            <td style="height: 28px; width: 159px;">
                                Columns
                                <asp:TextBox ID="TextBoxColumn" runat="server" Width="62px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server">With Border</asp:Label><asp:CheckBox ID="CheckBoxBorber"
                                    runat="server" Width="111px" /></td>
                            <td style="width: 159px">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dynamik ASP Table" Width="164px" />
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Dynamik HTML Table" Width="164px" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 4px">
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Height="23px" Width="161px">Dynamic ASP Table</asp:Label>
                    <asp:Table ID="Table2" runat="server" Width="37px">
                    </asp:Table>
                </td>
            </tr>
        </table>
        <br />
        Dynamic HTML Table (Server Side)<br />
    
    </div>
    </form>
</body>
</html>
