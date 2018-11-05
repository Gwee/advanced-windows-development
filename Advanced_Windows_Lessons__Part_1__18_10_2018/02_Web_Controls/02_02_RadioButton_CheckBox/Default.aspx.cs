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
    protected void Page_Load(object sender, EventArgs e)
    {
        //			RB1.AutoPostBack = true;
        //			RB2.AutoPostBack = true;
        //			CB1.AutoPostBack = true;
        //			CB2.AutoPostBack = true;
    }
    protected void RadioButton_CheckedChanged(object sender, EventArgs e)
    {
        LinkButton1.Enabled = !LinkButton1.Enabled;
        LinkButton2.Enabled = !LinkButton2.Enabled;
    }
    protected void CB1_CheckedChanged(object sender, EventArgs e)
    {
        LinkButton3.Enabled = !LinkButton3.Enabled;
    }
    protected void CB2_CheckedChanged1(object sender, EventArgs e)
    {
        LinkButton4.Enabled = !LinkButton4.Enabled;
    }
    protected void allLinkButtons_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www." + ((LinkButton)sender).Text);
    }
}
