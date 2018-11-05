<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 101; left: 104px; position: absolute;
            top: 80px"></asp:TextBox>
        <input onclick="alert('Click on HTML Input via JavaScript')" size="50" style="z-index: 100;
            left: 105px; position: absolute; top: 169px" type="text" />
    
    </div>
    </form>
</body>
</html>
