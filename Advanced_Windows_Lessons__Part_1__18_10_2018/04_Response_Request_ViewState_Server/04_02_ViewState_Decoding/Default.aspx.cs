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
        string viewStateString = Request["__VIEWSTATE"].ToString();
        Response.Write(viewStateString + "<BR>");

        byte[] stringBytes = Convert.FromBase64String(viewStateString);
        string decodedViewState = System.Text.Encoding.ASCII.GetString(stringBytes);
        Response.Write("Decoded View State" + "<BR>");
        Response.Write(decodedViewState);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = !TextBox1.Visible;
    }
}
