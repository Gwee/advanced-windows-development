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
        Page.ClientScript.RegisterClientScriptInclude("myScript", "js_file.js");
        Button1.Attributes.Add("onclick", "javascript:myClick();return false;");
        myLabel.Attributes.Add("onclick", "javascript:myClick();");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text += "######################";
    }
}
