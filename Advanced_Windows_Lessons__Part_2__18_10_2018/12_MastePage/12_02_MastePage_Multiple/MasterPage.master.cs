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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label1.Text = TextBox1.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = TextBox2.Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label3.Text = TextBox3.Text;
    }
}
