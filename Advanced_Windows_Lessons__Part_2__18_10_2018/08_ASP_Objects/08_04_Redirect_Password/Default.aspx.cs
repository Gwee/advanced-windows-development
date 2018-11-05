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
        Label3.Text = "";
        Session["Password"] = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "a1b2")
        {
            Session["Hello"] = TextBox1.Text;
            Session["Password"] = "PasswordOK";
            Response.Redirect("Default2.aspx");
            //  Server.Transfer("Default2.aspx");
        }
        else
            Label3.Text = "Wrong Password";
    }
}
