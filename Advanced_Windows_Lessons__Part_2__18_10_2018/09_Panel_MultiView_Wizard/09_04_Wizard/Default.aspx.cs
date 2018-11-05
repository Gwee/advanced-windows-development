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
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "", "<script>window.close();</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Text = "Hello, " + TextBox1.Text + " !";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label2.Text = "Hello, " + TextBox2.Text + " !";
    }
}
