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
        TextBox dynamicTextBox = new TextBox();
        dynamicTextBox.ID = "dynamicTextBox";

        Label dynamicLabel = new Label();
        dynamicLabel.ID = "dynamicLabel";

        Button dynamicButton = new Button();
        dynamicButton.Text = "Dynamic Button";
        dynamicButton.Click += new System.EventHandler(dynamicButton_Click);

        form1.Controls.Add(dynamicTextBox);
        form1.Controls.Add(new LiteralControl("<BR>"));
        form1.Controls.Add(dynamicButton);
        form1.Controls.Add(new LiteralControl("<BR><BR>"));
        form1.Controls.Add(dynamicLabel);
        
        //TextBox dynamicTextBox = new TextBox();
        //dynamicTextBox.ID = "dynamicTextBox";

        //Label dynamicLabel = new Label();
        //dynamicLabel.ID = "dynamicLabel";

        //Button dynamicButton = new Button();
        //dynamicButton.Text = "Dynamic Button";
        //dynamicButton.Click += new System.EventHandler(dynamicButton_Click);

        //Panel myPanel = new Panel();
        //myPanel.Controls.Add(dynamicTextBox);
        //myPanel.Controls.Add(new LiteralControl("<BR>"));
        //myPanel.Controls.Add(dynamicButton);
        //myPanel.Controls.Add(new LiteralControl("<BR><BR>"));
        //myPanel.Controls.Add(dynamicLabel);

        //myPanel.ID = "dynamicPanel";
        //form1.Controls.Add(myPanel);
    }

    private void dynamicButton_Click(object sender, System.EventArgs e)
    {
        TextBox tempTextBox = (TextBox)(form1.FindControl("dynamicTextBox"));
        Label tempLabel = (Label)(form1.FindControl("dynamicLabel"));
        tempLabel.Text = tempTextBox.Text;

        //Panel tempPanel = (Panel)(form1.FindControl("dynamicPanel"));
        //TextBox tempTextBox = (TextBox)(tempPanel.FindControl("dynamicTextBox"));
        //Label tempLabel = (Label)(tempPanel.FindControl("dynamicLabel"));
        //tempLabel.Text = tempTextBox.Text;
    }
}
