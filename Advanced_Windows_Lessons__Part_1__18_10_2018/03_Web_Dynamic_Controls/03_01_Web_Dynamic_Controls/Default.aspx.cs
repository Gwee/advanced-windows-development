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
    protected Label dynamicLabel;

    protected void Page_Load(object sender, EventArgs e)
    {
        dynamicTextBox = new TextBox();
        dynamicLabel = new Label();

        Button dynamicButton = new Button();
        dynamicButton.Text = "Dynamic Button";
        dynamicButton.Click += new System.EventHandler(dynamicButton_Click);

        form1.Controls.Add(dynamicTextBox);
        form1.Controls.Add(new LiteralControl("<BR>"));
        form1.Controls.Add(dynamicButton);
        form1.Controls.Add(new LiteralControl("<BR><BR>"));
        form1.Controls.Add(dynamicLabel);
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        //dynamicTextBox = new TextBox();
        //dynamicLabel = new Label();

        //Button dynamicButton = new Button();
        //dynamicButton.Text = "Dynamic Button";
        //dynamicButton.Click += new System.EventHandler(dynamicButton_Click);
   
        //form1.Controls.Add(dynamicTextBox);
        //form1.Controls.Add(new LiteralControl("<BR>"));
        //form1.Controls.Add(dynamicButton);
        //form1.Controls.Add(new LiteralControl("<BR><BR>"));
        //form1.Controls.Add(dynamicLabel);
    }
    private void dynamicButton_Click(object sender, System.EventArgs e)
    {
        dynamicLabel.Text = dynamicTextBox.Text;
    }
}
