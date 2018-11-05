<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:GridView ID="GridView1" runat="server" Width="600" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ID" HeaderText="I D" ReadOnly = "true"   HeaderStyle-Width="50"/>
                <asp:BoundField DataField="Family" HeaderText="F A M I L Y"  />
                <asp:BoundField DataField="Name" HeaderText="N A M E"  />
            </Columns>
            </asp:GridView>
    </div>
    </form>
</body>
</html>
