<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Height="202px" Width="473px">
        </asp:GridView>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ></asp:SqlDataSource>
    
    </div>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <series>
            <asp:Series ChartType="Pie" Name="Series1" XValueMember="Name" 
                YValueMembers="Height">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    </form>
</body>
</html>
