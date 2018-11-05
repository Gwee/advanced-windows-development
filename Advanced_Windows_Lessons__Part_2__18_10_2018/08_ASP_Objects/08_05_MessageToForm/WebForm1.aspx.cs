using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class WebForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.Cookies["Colors_Cookies"].Value;
        Label2.BackColor = System.Drawing.Color.FromName(Label1.Text);
        Label3.Text += Application["MyApplication_Global"];
    }
}
