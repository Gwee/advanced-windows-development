<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<script type = "text/javascript">

    function myAddRow() {
        var  gridview = document.getElementById("GridView1");
        var  tr = document.createElement("tr");

        var cell_Id = document.createElement("td");
        var cell_Family = document.createElement("td");
        var cell_Name = document.createElement("td");

        var result = window.showModalDialog("Default2.aspx", "", "dialogWidth:300px; dialogHeight:200px");

        cell_Id.innerHTML = result[0];
        cell_Family.innerHTML = result[1];
        cell_Name.innerHTML = result[2];

        tr.appendChild(cell_Id);
        tr.appendChild(cell_Family);
        tr.appendChild(cell_Name);

        gridview.appendChild(tr);
     }
</script>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Height="202px" Width="349px">
            <Columns>
                 <asp:BoundField DataField="Id" HeaderText="Id"  />
                <asp:BoundField DataField="Family" HeaderText="Family"  />
                <asp:BoundField DataField="Name" HeaderText="Name"  />
            </Columns>
        </asp:GridView>
    
    </div>
    <asp:Button ID="Button1" runat="server" Height="71px" Text="Add Row" 
        Width="115px" onClientClick = "myAddRow(); return false;" />
    </form>
</body>
</html>
