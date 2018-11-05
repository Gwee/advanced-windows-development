<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="my.xml" Height="69px"
                OnAdCreated="AdRotator1_AdCreated" Style="z-index: 103; left: 32px; position: absolute;
                top: 32px" Width="432px" />
            <asp:Label ID="Label1" runat="server" Height="20px" Style="z-index: 102; left: 30px;
                position: absolute; top: 131px" Width="449px"></asp:Label>
    </div>
    </form>
</body>
</html>
