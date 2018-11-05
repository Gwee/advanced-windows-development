<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
			<asp:Repeater id="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1">
				<HeaderTemplate>
					<table>
						<tr>
							<td bgcolor="#cccc99" width="50"><b>ID</b></td>
							<td bgcolor="#cccc99" width="100"><b>Family</b></td>
							<td bgcolor="#cccc99" width="100"><b>Name</b></td>
							<td bgcolor="#cccc99" width="100"><b>Mobile Phone</b></td>
							<td bgcolor="#cccc99" width="100"><b>Home Phone</b></td>
							<td bgcolor="#cccc99" width="50"><b>Update</b></td>
						</tr>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
						<td bgcolor="#00ff99">
							<%# DataBinder.Eval(Container.DataItem, "ID") %>
						</td>
						<td bgcolor="#00ff99">
							<%# DataBinder.Eval(Container.DataItem, "Family") %>
						</td>
						<td bgcolor="#00ff99">
							<%# DataBinder.Eval(Container.DataItem, "Name") %>
						</td>
						<td bgcolor="#00ff99">
							<asp:TextBox id=txtMobilePhone Text='<%#DataBinder.Eval(Container.DataItem, "Mobile Phone") %>' runat=server />
						</td>
						<td bgcolor="#00ff99">
							<asp:TextBox id="txtHomePhone" Text='<%# DataBinder.Eval(Container.DataItem, "Home Phone")  %>' runat=server />
						</td>
						<td bgcolor="#00ff99">
							<asp:Button id="cmdUpdate" Text='Update' runat="server"></asp:Button>
						</td>
					</tr>
				</ItemTemplate>
				<FooterTemplate>
					</table>
				</FooterTemplate>
			</asp:Repeater>
    </div>
    </form>
</body>
</html>
