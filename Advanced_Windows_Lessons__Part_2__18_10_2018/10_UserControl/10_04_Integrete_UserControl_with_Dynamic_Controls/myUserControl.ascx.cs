using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public delegate void myDelegate(object sender, myEventArgs e);

public partial class myUserControl : System.Web.UI.UserControl
{
    protected TextBox dynamicTextBox;
    public event myDelegate myEvent;

    protected void Page_Load(object sender, EventArgs e)
    {
        dynamicTextBox = new TextBox();

        Button dynamicButton = new Button();
        dynamicButton.Text = "Dynamic Button";
        dynamicButton.Click += new System.EventHandler(dynamicButton_Click);

        Panel myPanel = new Panel();
        myPanel.Controls.Add(dynamicTextBox);
        myPanel.Controls.Add(new LiteralControl("<BR>"));
        myPanel.Controls.Add(dynamicButton);
        this.Controls.Add(myPanel);
    }
    protected void dynamicButton_Click(object sender, EventArgs e)
    {
        myEventArgs myEventArgs_temp = new myEventArgs(dynamicTextBox.Text);
        if (myEvent != null)
            myEvent(this, myEventArgs_temp);
    }
}
