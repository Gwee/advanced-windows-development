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
        Label1.Text = TextBox1.Text;
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["Theme"] == null)
        {
            Page.Theme = "";
        }
        else
        {
            Page.Theme = (string)Session["Theme"];
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Session["Theme"] = "firstTheme";
        Server.Transfer(Request.FilePath);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["Theme"] = "secondTheme";
        Server.Transfer(Request.FilePath);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["Theme"] = "";
        Server.Transfer(Request.FilePath);
    }
}
