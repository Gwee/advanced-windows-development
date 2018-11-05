<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
			<asp:Repeater id="Repeater1" runat="server">
				<HeaderTemplate>
					<table>
						<tr>
							<td bgcolor="#cccc99" width="100"><b>Family</b></td>
							<td bgcolor="#cccc99" width="100"><b>Name</b></td>
							<td bgcolor="#cccc99" width="100"><b>MobilePhone</b></td>
							<td bgcolor="#cccc99" width="100"><b>HomePhone</b></td>
						</tr>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
						<td bgcolor="#00ff99">
							<%# DataBinder.Eval(Container.DataItem, "Family") %>
						</td>
						<td bgcolor="#00ff99">
							<%# DataBinder.Eval(Container.DataItem, "Name") %>
						</td>
						<td bgcolor="#00ff99">
							<%# DataBinder.Eval(Container.DataItem, "Mobile Phone") %>
						</td>
						<td bgcolor="#00ff99">
							<%# DataBinder.Eval(Container.DataItem, "Home Phone") %>
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
