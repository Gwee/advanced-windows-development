<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" Title="First">
                    <table id="Table3" border="0" cellpadding="1" cellspacing="1" width="375">
                        <tr>
                            <td>
                                First
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 21px">
                                <asp:Label ID="Label1" runat="server" Width="291px"></asp:Label>
                            </td>
                            <td style="height: 21px">
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Second">
                    <table id="Table2" border="0" cellpadding="1" cellspacing="1" width="375">
                        <tr>
                            <td style="height: 21px">
                                Second
                            </td>
                            <td style="height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Width="291px"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
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
