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
    public void Button1_Click(object sender, EventArgs e)
    {
        int a = int.Parse(TextBox1.Text);
        int b = int.Parse(TextBox2.Text);

        Label1.Text = Plus.myPlus(a, b).ToString();
    }
}
