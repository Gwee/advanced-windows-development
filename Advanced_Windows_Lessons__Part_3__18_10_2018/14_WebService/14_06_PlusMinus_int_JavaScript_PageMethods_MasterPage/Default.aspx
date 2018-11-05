<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" 
       EnablePageMethods="true">
            <Scripts>
                <asp:ScriptReference Path="js_file.js" />
            </Scripts>
        </asp:ScriptManager>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
    <asp:Button ID="Button3" runat="server" Text="+" />
    <asp:Button ID="Button4" runat="server" Text="-" />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    =
    <asp:Label ID="Label1" runat="server"   Text="Label"></asp:Label>
</asp:Content>

