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
        if (!Page.IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;

            DropDownList1.DataSource = MultiView1.Views;
            DropDownList1.DataTextField = "ID";
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, System.EventArgs e)
    {
        Label1.Text = "Hello, " + TextBox1.Text + " !";
    }

    protected void Button2_Click(object sender, System.EventArgs e)
    {
        Label2.Text = "Hello, " + TextBox2.Text + " !";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label3.Text = "Hello, " + TextBox3.Text + " !";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = DropDownList1.SelectedIndex;
    }
}
