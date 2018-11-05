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
    protected TextBox dynamicTextBox;
    protected void Page_Load(object sender, EventArgs e)
    {
        dynamicTextBox = new TextBox();
        dynamicTextBox.ID = "aaaaaaaaaa";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {     
        form1.Controls.Add(dynamicTextBox);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        form1.Controls.Add(dynamicTextBox);
        dynamicTextBox.Text = Request.Form["aaaaaaaaaa"].ToString();

        Label1.Text = dynamicTextBox.Text;
    }
}
