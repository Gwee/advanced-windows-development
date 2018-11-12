<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebUI.aspx.cs" Inherits="asp__Ex1.WebUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id ="btnsArea" runat="server">
            <asp:Button ID="button1" runat="server" Width="50px" Height="50px" TabIndex="0" BackColor="Yellow" OnClick="ckickMe"/>
            <asp:Button ID="button2" runat="server" Width="50px" Height="50px" TabIndex="1" BackColor="#99CC00" OnClick="ckickMe"/>
            <asp:Button ID="button3" runat="server" Width="50px" Height="50px" TabIndex="2" BackColor="#FF9933" OnClick="ckickMe"/>
            <asp:Button ID="button4" runat="server" Width="50px" Height="50px" TabIndex="3" BackColor="#CC00FF" OnClick="ckickMe"/>
            <br />
            <asp:Button ID="button5" runat="server" Width="50px" Height="50px" TabIndex="4" BackColor="#FF9933" OnClick="ckickMe"/>
            <asp:Button ID="button6" runat="server" Width="50px" Height="50px" TabIndex="5" BackColor="#009900" OnClick="ckickMe"/>
            <asp:Button ID="button7" runat="server" Width="50px" Height="50px" TabIndex="6" BackColor="#9966FF" OnClick="ckickMe" BorderStyle="None"/>
            <asp:Button ID="button8" runat="server" Width="50px" Height="50px" TabIndex="7" BackColor="#99FFCC" OnClick="ckickMe"/>
            <br />
            <asp:Button ID="button9" runat="server" Width="50px" Height="50px"  TabIndex="8" BackColor="#00CC66" OnClick="ckickMe"/>
            <asp:Button ID="button10" runat="server" Width="50px" Height="50px" TabIndex="9" BackColor="#003399" OnClick="ckickMe"/>
            <asp:Button ID="button11" runat="server" Width="50px" Height="50px" TabIndex="10" BackColor="#3333FF" OnClick="ckickMe"/>
            <asp:Button ID="button12" runat="server" Width="50px" Height="50px" TabIndex="11" BackColor="#FFCCFF" OnClick="ckickMe"/>
            <br />
            <asp:Button ID="button13" runat="server" Width="50px" Height="50px" TabIndex="12" BackColor="#339966" OnClick="ckickMe"/>
            <asp:Button ID="button14" runat="server" Width="50px" Height="50px" TabIndex="13" BackColor="#666633" OnClick="ckickMe"/>
            <asp:Button ID="button15" runat="server" Width="50px" Height="50px" TabIndex="14" BackColor="#6600CC" OnClick="ckickMe"/>
            <asp:Button ID="butEmpty" runat="server" Width="50px" Height="50px" TabIndex="12" BackColor="White"/>
        </div>


        
         <div id ="dvInfo" runat="server" visible="false">
             <asp:TextBox ID="TextBox1" runat="server" BorderColor="#FFCCFF" BorderStyle="None">"Congratulations, You Won!"</asp:TextBox>
             <br>
            <asp:Button ID="btnNewGame" Text="NewGame" runat="server" Width="70px" Height="70px" TabIndex="14" BackColor="LightBlue" OnClick="btnNewGame_Click"/>
            <asp:Button ID="btnCancel" Text="Cancel" runat="server" Width="70px" Height="70px" TabIndex="12" BackColor="LightGreen" OnClick="btnCancel_Click"/>
        </div>


    </form>
</body>
</html>
