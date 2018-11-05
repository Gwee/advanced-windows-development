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
                <td style="width: 3px">
                    Table A</td>
                <td style="width: 3px">
                    Table B</td>
            </tr>
            <tr>
                <td style="width: 3px">
                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="OK" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td style="width: 3px">
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
