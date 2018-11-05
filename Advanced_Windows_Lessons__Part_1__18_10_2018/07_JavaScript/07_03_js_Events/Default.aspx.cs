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
        if (!IsPostBack)
        {
            ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "<script>alert('Page Loaded!');</script>");
            //  ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "<script>alert('Page Loaded!');</script>");
            //  ClientScript.RegisterStartupScript(typeof(Page),"Alert", "<script>alert('Page Loaded!');</script>");
            //  Button1.Attributes.Add("onclick", "return confirm('You want to print Hello and resize Page?')");
            Button1.Attributes["onclick"] = "return confirm('You want to print Hello and resize Page?')";
            Button2.Attributes.Add("onclick", "Hidden1.value = prompt('Put You name', ''); javascript:myClick();return false;");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label1.Text = "Hello!";
        ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "<script>window.alert('Window Resize!');</script>");
 
 //       ClientScript.RegisterStartupScript(typeof(Page), "Alert", "<script>window.alert('Window Resize!');</script>");
        ClientScript.RegisterStartupScript(typeof(Page), "Resize", "<script>window.resizeTo(400, 400);</script>");
    }
}
