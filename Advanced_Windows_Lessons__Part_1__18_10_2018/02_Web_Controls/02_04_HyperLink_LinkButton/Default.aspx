<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default2.aspx" Style="z-index: 105;
            left: 32px; position: absolute; top: 112px" Target="_blank" Width="198px">To Second Form___HyperLink</asp:HyperLink>
        <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 102; left: 24px;
            position: absolute; top: 164px" OnClick="LinkButton1_Click">To Second Form___LinkButton</asp:LinkButton>
        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Flower.jpg" NavigateUrl="~/Default2.aspx"
            Style="z-index: 103; left: 276px; position: absolute; top: 7px" Width="116px" Target="_self">5555555555555555555555</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 254px; position: absolute;
            top: 235px" Width="252px">To Second Form  Hyperlink with picture Click to picture</asp:Label>
    </div>
    </form>
</body>
</html>
