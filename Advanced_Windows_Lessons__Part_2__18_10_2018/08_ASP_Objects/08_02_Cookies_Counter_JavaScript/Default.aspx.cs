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
            Response.Cookies["Counter"].Value = "0";

        Button1.Attributes.Add("onclick", "javascript:plus_1();return false;");
        Button2.Attributes.Add("onclick", "javascript:equal_0();return false;");
        Button3.Attributes.Add("onclick", "javascript:minus_1();return false;");
    }
}
