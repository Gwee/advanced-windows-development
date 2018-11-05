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
        if (!Page.IsPostBack)
            /// if (Session["Counter"] == null )
            Session["Counter"] = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Counter"] = (int)Session["Counter"] + 1;
        Label1.Text = Session["Counter"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Counter"] = 0;
        Label1.Text = "0";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["Counter"] = (int)Session["Counter"] - 1;
        Label1.Text = Session["Counter"].ToString();
    }
}
