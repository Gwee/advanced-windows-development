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
            Response.Redirect("WebForm1.aspx");
    //      Response.Redirect("http://www.microsoft.com");      // OK
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
            Server.Transfer("WebForm1.aspx");
    //      Server.Transfer("http://www.microsoft.com");        // Exception
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
           Server.Execute("WebForm1.aspx");
    //      Server.Execute("http://www.microsoft.com");        // Exception
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label1.Text = TextBox1.Text;
    }

}
