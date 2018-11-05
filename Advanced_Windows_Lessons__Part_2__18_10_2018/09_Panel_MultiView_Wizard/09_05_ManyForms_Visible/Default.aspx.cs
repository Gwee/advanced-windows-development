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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Hello, " + TextBox1.Text + " !";
    }
    protected void Button24_Click(object sender, EventArgs e)
    {
        form_1.Visible = !form_1.Visible;
        form_2.Visible = !form_2.Visible;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label2.Text = "Hello, " + TextBox2.Text + " !";
    }
}
