<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 197px; position: absolute;
            top: 186px"  Width="400px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 101;
            left: 124px; position: absolute; top: 219px; width: 150px;" Text="Show View Stae" />
       <asp:Button ID="Button2" runat="server" Style="z-index: 101;
            left: 324px; position: absolute; top: 219px" Text="Visible= !Visible" Width="200px" OnClick="Button2_Click"  />
   
    </div>
  
 
    </form>
</body>
</html>
