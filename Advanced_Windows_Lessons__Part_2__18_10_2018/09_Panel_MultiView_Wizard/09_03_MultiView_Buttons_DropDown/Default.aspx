<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Width="148px">
        </asp:DropDownList><br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
            <table id="Table3" border="0" cellpadding="1" cellspacing="1" width="375">
                <tr>
                    <td>
                        First View</td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
                </tr>
                <tr>
                    <td style="height: 21px">
                        <asp:Label ID="Label1" runat="server" Width="291px"></asp:Label></td>
                    <td style="height: 21px">
                    </td>
                </tr>
            </table>
                <asp:Button ID="View1_Button_Next" runat="server" CommandName="NextView" Text="Next >"
                    Width="69px" /></asp:View>
            <asp:View ID="View2" runat="server">
            <table id="Table2" border="0" cellpadding="1" cellspacing="1" width="375">
                <tr>
                    <td style="height: 21px">
                        Second View</td>
                    <td style="height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="height: 26px">
                        <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox></td>
                    <td style="height: 26px">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Width="291px"></asp:Label></td>
                    <td>
                    </td>
                </tr>
            </table>
                <asp:Button ID="View2_Button_Prev" runat="server" CommandName="PrevView" Text="< Prev"
                    Width="69px" />
                <asp:Button ID="View2_Button_Next" runat="server" CommandName="NextView" Text="Next >"
                    Width="69px" /></asp:View>
            <asp:View ID="View3" runat="server">
                <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="375">
                    <tr>
                        <td style="height: 21px">
                            Third View</td>
                        <td style="height: 21px">
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px">
                            <asp:TextBox ID="TextBox3" runat="server" Width="216px"></asp:TextBox></td>
                        <td style="height: 26px">
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" /></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Width="291px"></asp:Label></td>
                        <td>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="View3_Button_Prev" runat="server" CommandName="PrevView" Text="< Prev"
                    Width="69px" /></asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
