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
//        TextBox2.EnableViewState = false;  // in designer
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Label1.Text += TextBox1.Text;
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        Label2.Text += TextBox2.Text;
    }
}
