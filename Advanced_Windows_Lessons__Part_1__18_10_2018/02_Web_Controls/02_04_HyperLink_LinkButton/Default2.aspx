<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 103;
            left: 152px; position: absolute; top: 120px" Target="_self" Width="184px">To First Form___ HyperLink</asp:HyperLink>
        <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 102; left: 158px;
            position: absolute; top: 158px" OnClick="LinkButton1_Click">To First Form___LinkButton</asp:LinkButton>
    </div>
    </form>
</body>
</html>
