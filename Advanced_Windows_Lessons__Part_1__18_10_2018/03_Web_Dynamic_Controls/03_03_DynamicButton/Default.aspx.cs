using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected Button dynamicButton;

    protected void Page_Load(object sender, EventArgs e)
    {
        dynamicButton = new Button();
 ///////       dynamicButton.ID = "qqqqqqqqq";
        dynamicButton.Click += new System.EventHandler(dynamicButton_Click);

        form1.Controls.Add(dynamicButton);

        Label1.Text += "  " + dynamicButton.UniqueID.ToString();

        //Panel myPanel = new Panel();
        //myPanel.Controls.Add(dynamicButton);
        //form1.Controls.Add(myPanel);

        if (Page.IsPostBack == false)
        {
            dynamicButton.Width = 60;
            dynamicButton.Height = 60;
            dynamicButton.Text = "0";
         }
    }

    private void dynamicButton_Click(object sender, System.EventArgs e)
    {
        dynamicButton.Text = (Int32.Parse(dynamicButton.Text) + 1).ToString();
    }
}
