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
        Button1.Attributes.Add("onclick", "javascript:myClick();return false;");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
 //       if (Request.Form["HiddenField1"] != "")
 //           Label1.Text = (int.Parse(Request.Form.GetValues("HiddenField1")[0]) + int.Parse(TextBox3.Text)).ToString();
        if (HiddenField1.Value!= "")
            Label1.Text = (int.Parse(HiddenField1.Value) + int.Parse(TextBox3.Text)).ToString(); 
    }
}
