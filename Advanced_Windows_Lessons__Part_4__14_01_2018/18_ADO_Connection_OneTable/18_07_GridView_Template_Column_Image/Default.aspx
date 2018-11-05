﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:GridView ID="GridView1" runat="server" 
            Width="350px">
            <Columns>
                <asp:BoundField DataField="lastName" HeaderText="Family"  />

                <asp:TemplateField  HeaderText="NameButton" >
                        <ItemTemplate>
                            <asp:Button runat="server"  />
                        </ItemTemplate>
                </asp:TemplateField>

                <asp:ImageField DataImageUrlField="picture" HeaderText="Image"   ControlStyle-Width="50px"></asp:ImageField>
                
                <asp:TemplateField  HeaderText="ImageButton" >
                        <ItemTemplate>
                            <asp:ImageButton runat="server" Width="50px"  />
                        </ItemTemplate>
                </asp:TemplateField>

 
             </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
