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
    private void Page_Load(object sender, System.EventArgs e)
    {
        Label1.Text += "Page.Load event .<br/>";
        if (Page.IsPostBack == false)
        {
            Label1.Text +=
              "This is the first time you've seen this page.<br/>";
        }
        else        
        {
            Label1.Text +=
              "This is the second time you've seen this page.<br/>";
        }
    }

    private void Page_Init(object sender, System.EventArgs e)
    {
        Label1.Text += "Page.Init event.<br/>";
        // In the second time works but don't seen : Label1 cleaned of viewstate
        // Seen if viewstate = false
    }

    protected void Button1_Click(object sender, System.EventArgs e)
    {
        Label1.Text += "Button1.Click event .<br/>";
    }

    private void Page_PreRender(object sender, System.EventArgs e)
    {
        Label1.Text += "Page.PreRender event .<br/><br/>";
    }

    private void Page_Unload(object sender, System.EventArgs e)
    {
        // This text never appears because the HTML is already
        // rendered for the page at this point.
        Label1.Text += "Page.Unload event .<br/>";
    }
}
