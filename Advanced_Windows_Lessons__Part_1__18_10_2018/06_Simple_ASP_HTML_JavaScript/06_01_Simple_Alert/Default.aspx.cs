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
        string str = "<script>alert('sssssssssssssssssssssssssssssssssssss');</script>";
        Response.Write(str);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = TextBox1.Text;

//        Response.Write("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

        string str = "<script>alert('" + TextBox1.Text + "');</script>";
        Response.Write(str);
    }
}
