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
    int counter;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            counter = 0;
        else
            counter = Int32.Parse(Request.Cookies["Counter"].Value);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        counter++;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        counter=0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        counter--;
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        Label1.Text = counter.ToString();
        Response.Cookies["Counter"].Value = counter.ToString();
    }
}
