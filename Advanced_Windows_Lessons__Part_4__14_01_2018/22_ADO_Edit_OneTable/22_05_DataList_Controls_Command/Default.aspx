<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
			<asp:datalist id="DataList1" style="Z-INDEX: 101; LEFT: 24px; POSITION: absolute; TOP: 88px" runat="server"
				BorderColor="#ff0000" BackColor="#00ff00" CellPadding="2" BorderWidth="1px" ForeColor="Black"
				RepeatDirection="Horizontal" RepeatColumns="5" Width="595px" OnItemCommand="DataList1_ItemCommand">
				<AlternatingItemStyle BackColor="#0000ff"></AlternatingItemStyle>
				<ItemTemplate>
					<%# DataBinder.Eval(Container.DataItem, "Family") %>
					<%# DataBinder.Eval(Container.DataItem, "Name") %>
					<br>
					<asp:TextBox id=txtMobilePhone Text='<%#DataBinder.Eval(Container.DataItem, "Mobile Phone") %>' runat=server />
					<asp:TextBox id="txtHomePhone" Text='<%# DataBinder.Eval(Container.DataItem, "Home Phone")  %>' runat=server />
					<asp:Button id="cmdUpdate" Text='Update' runat="server"></asp:Button>
				</ItemTemplate>
				<FooterStyle BackColor="#ff00ff"></FooterStyle>
				<HeaderStyle Font-Bold="True" BackColor="#ff00ff"></HeaderStyle>
			</asp:datalist>
    </div>
    </form>
</body>
</html>
