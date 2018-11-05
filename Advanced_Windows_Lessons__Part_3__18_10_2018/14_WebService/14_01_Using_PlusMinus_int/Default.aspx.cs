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
    localhost.Service S;
    protected void Page_Load(object sender, EventArgs e)
    {
       S = new localhost.Service();
    }
    protected void plusButton_Click(object sender, EventArgs e)
    {
        Label1.Text = (S.plus(Int32.Parse(TextBox1.Text), Int32.Parse(TextBox2.Text))).ToString();
    }
    protected void minusButton_Click(object sender, EventArgs e)
    {
        Label1.Text = (S.minus(Int32.Parse(TextBox1.Text), Int32.Parse(TextBox2.Text))).ToString();
    }
}
