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
        Label1.Text = (int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text)).ToString();
//        ClientScript.RegisterClientScriptBlock(typeof(Page), "", "<script>javascript:alert('" + Label1.Text + "');</script>");

        ClientScript.RegisterStartupScript(typeof(Page), "", "<script>javascript:myClick();</script>");
//      ClientScript.RegisterStartupScript(typeof(Page), "", "<script>javascript:alert('" + Label1.Text + "');</script>");
    }
}
