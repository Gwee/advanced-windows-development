<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<script type = "text/javascript">

    function mUpdate(objRef) {
        var row = objRef.parentNode.parentNode;

        var id = row.cells[1].innerText;
        var family = row.cells[2].innerText
        var name = row.cells[3].innerText

        var result = window.showModalDialog("Default2.aspx?Id=" + id + "&Family=" + family + "&Name=" + name, "", "dialogWidth:300px; dialogHeight:200px");

        row.cells[1].innerText = result[0];
        row.cells[2].innerText = result[1];
        row.cells[3].innerText = result[2];
    }
</script>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Height="202px" Width="349px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Update" onClientClick = "mUpdate(this); return false;" />
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
