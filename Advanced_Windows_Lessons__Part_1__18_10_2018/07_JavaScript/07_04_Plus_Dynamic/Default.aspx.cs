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
        TextBox dynamicTextBox1 = new TextBox();
        dynamicTextBox1.ID = "dynamicTextBox1";
        form1.Controls.Add(dynamicTextBox1);

        Button dynamicButton = new Button();
        dynamicButton.Text = "+";
        dynamicButton.Click += new System.EventHandler(dynamicButton_Click);
        form1.Controls.Add(dynamicButton);

        TextBox dynamicTextBox2 = new TextBox();
        dynamicTextBox2.ID = "dynamicTextBox2";
        form1.Controls.Add(dynamicTextBox2);

        Label dynamicLabel = new Label();
        dynamicLabel.ID = "dynamicLabel";
        form1.Controls.Add(dynamicLabel);
    }
    protected void dynamicButton_Click(object sender, EventArgs e)
    {

        TextBox tempTextBox1 = (TextBox)(form1.FindControl("dynamicTextBox1"));
        TextBox tempTextBox2 = (TextBox)(form1.FindControl("dynamicTextBox2"));
        Label tempLabel = (Label)(form1.FindControl("dynamicLabel"));
        tempLabel.Text = tempTextBox1.Text;

        tempLabel.Text = (int.Parse(tempTextBox1.Text) + int.Parse(tempTextBox2.Text)).ToString();

        ClientScript.RegisterClientScriptBlock(typeof(Page), "", "<script>javascript:alert('" + tempLabel.Text + "');</script>");

//        ClientScript.RegisterStartupScript(typeof(Page), "", "<script>javascript:myClick();</script>");
//        ClientScript.RegisterStartupScript(typeof(Page), "", "<script>javascript:alert('" + tempLabel.Text + "');</script>");
    }
}
