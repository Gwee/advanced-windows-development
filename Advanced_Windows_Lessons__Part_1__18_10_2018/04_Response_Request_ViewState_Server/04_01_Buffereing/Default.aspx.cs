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
//        Page.Response.Buffer = false;   // default true
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 10000; i++)
        {
            Page.Response.Write("*");
            if (i % 100 == 0)
                Page.Response.Write("<br>");
        }
    }
}
