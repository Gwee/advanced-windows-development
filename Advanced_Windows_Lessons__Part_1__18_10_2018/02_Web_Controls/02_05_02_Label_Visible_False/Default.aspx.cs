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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = (int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text)).ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = (int.Parse(Label2.Text) + int.Parse(TextBox3.Text)).ToString();
    }
}
