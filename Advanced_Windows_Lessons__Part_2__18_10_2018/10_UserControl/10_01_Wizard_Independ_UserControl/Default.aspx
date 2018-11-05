<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" >
            <WizardSteps>
                <asp:WizardStep runat="server" Title="First">
                    First step <br />
                    <uc1:WebUserControl ID="WebUserControl2" runat="server" />
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Second">
                    Second step <br />
                    <uc1:WebUserControl ID="WebUserControl1" runat="server" />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
<!-- <StepStyle Font-Size="0.8em" ForeColor="#333333" />
              <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
              <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
              <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
              <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px"
                Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />-->
    
    </div>
    </form>
</body>
</html>
