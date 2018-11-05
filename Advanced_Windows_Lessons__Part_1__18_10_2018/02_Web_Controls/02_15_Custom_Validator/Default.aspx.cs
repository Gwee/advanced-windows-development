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
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 9)
            args.IsValid = false;
        else
            args.IsValid = true;	
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
            Label1.Text = "All OK";
        else
            Label1.Text = "Page isn't valid";
    }
}
