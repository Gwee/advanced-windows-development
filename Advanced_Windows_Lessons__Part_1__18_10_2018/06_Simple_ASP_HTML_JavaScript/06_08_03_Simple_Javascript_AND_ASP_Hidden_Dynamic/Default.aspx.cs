using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected TextBox TextBox1;
    protected TextBox TextBox2;
    protected TextBox TextBox3;
    protected Button Button1;
    protected Button Button2;
    protected Label Label1;
    protected HiddenField HiddenField1;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1 = new TextBox();
        TextBox1.ID = "TextBox1";
        TextBox2 = new TextBox();
        TextBox2.ID = "TextBox2";
        TextBox3 = new TextBox();
        Button1 = new Button();
        Button1.Attributes.Add("onclick", "javascript:myClick();return false;");
        Button2 = new Button();
        Button2.Click += new System.EventHandler(Button2_Click);
        Label1 = new Label();
        HiddenField1 = new HiddenField();
        HiddenField1.ID = "HiddenField1";

        form1.Controls.Add(TextBox1);
        form1.Controls.Add(Button1);
        form1.Controls.Add(TextBox2);
        form1.Controls.Add(Button2);
        form1.Controls.Add(TextBox3);
        form1.Controls.Add(Label1);
        form1.Controls.Add(HiddenField1);

        if (Page.IsPostBack == false)
        {
            Button1.Text = "+ JavaScript";
            Button2.Text = "+ ASP";
            HiddenField1.Value = "aaaaaaaaaaaaaaaaaaaaa";
        }
    }
    private void Button2_Click(object sender, System.EventArgs e)
    {
        Label1.Text = (int.Parse(HiddenField1.Value) + int.Parse(TextBox3.Text)).ToString();
    }
}
