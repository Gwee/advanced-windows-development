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

    }
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = false;
    }

    protected void Button2_Click(object sender, System.EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
    }

    protected void Button3_Click(object sender, System.EventArgs e)
    {
        Label1.Text = "Hello, " + TextBox1.Text + " !";
    }

    protected void Button4_Click(object sender, System.EventArgs e)
    {
        Label2.Text = "Hello, " + TextBox2.Text + " !";
    }
}
