﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>


<script type = "text/javascript">

    function myDelete(objRef) {
        var row = objRef.parentNode.parentNode;
        document.getElementById('GridView1').deleteRow(row.rowIndex);
    }
</script>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Height="202px" Width="349px">
            <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete (Visual only)" onClientClick = "myDelete(this); return false;" />
                </ItemTemplate> 
            </asp:TemplateField> 
                <asp:BoundField DataField="Id" HeaderText="Id"  />
                <asp:BoundField DataField="Family" HeaderText="Family"  />
                <asp:BoundField DataField="Name" HeaderText="Name"  />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>