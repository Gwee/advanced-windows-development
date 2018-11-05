<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" CellSpacing="10"
                Height="19px" RepeatColumns="2" Style="z-index: 100; left: 64px; position: absolute;
                top: 8px" Width="70px" BackColor="White" ForeColor="White" 
                OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            </asp:CheckBoxList>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Style="z-index: 101;
                left: 170px; position: absolute; " 
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="91px" Rows="5"
                Style="z-index: 102; left: 283px; position: absolute; top: 189px" Width="108px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
            </asp:ListBox>
            <asp:Label ID="Label2" runat="server" Style="z-index: 103; left: 164px; position: absolute;
                top: 199px" Width="109px"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CellSpacing="10"
                RepeatColumns="2" 
                Style="z-index: 104; left: 23px; position: absolute; top: 239px" 
                OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            </asp:RadioButtonList>
            <asp:Label ID="Label1" runat="server" Style="z-index: 105; left: 310px; position: absolute;
                top: 20px" Width="259px"></asp:Label>
        &nbsp;
        <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="LinkButton" Height="55px"
            OnClick="BulletedList1_Click" Style="z-index: 107; left: 380px; position: absolute;
            top: 191px" Width="77px" BulletStyle="Disc">
        </asp:BulletedList>
    </div>
    </form>
</body>
</html>
