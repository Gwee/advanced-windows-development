<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
			<asp:datalist id="DataList1" style="Z-INDEX: 101; LEFT: 19px; POSITION: absolute; TOP: 47px" runat="server" BorderColor="#ff0000" BackColor="#00ff00" CellPadding="2" BorderWidth="1px" ForeColor="Black" RepeatDirection="Horizontal" RepeatColumns="5" Width="445px">
				<AlternatingItemStyle BackColor="Blue"></AlternatingItemStyle>
				<ItemTemplate>
            <%# DataBinder.Eval(Container.DataItem, "Family") %>

            <br>
            <%# DataBinder.Eval(Container.DataItem, "Name") %>

            <br>
            <%# DataBinder.Eval(Container.DataItem, "Mobile Phone") %>

            <br>
            <%# DataBinder.Eval(Container.DataItem, "Home Phone") %>
            <br>
				</ItemTemplate>
				<FooterStyle BackColor="Fuchsia"></FooterStyle>
				<HeaderStyle Font-Bold="True" BackColor="Fuchsia"></HeaderStyle>
			</asp:datalist>
    </div>
    </form>
</body>
</html>
