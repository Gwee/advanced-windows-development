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
            DropDownList1.Items.Add("Red");
            DropDownList1.Items.Add("Green");
            DropDownList1.Items.Add("Blue");
            DropDownList1.Items.Add("Gray");

            DropDownList1.SelectedIndex = 0;
            Application["MyApplication_Global"] = DropDownList1.SelectedItem.Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["Colors_Cookies"].Value = DropDownList1.SelectedItem.Text;
        Response.Redirect("WebForm1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Colors_Session"] = DropDownList1.SelectedItem.Text;
        Response.Redirect("WebForm2.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string myString = "WebForm3.aspx";
        myString += "?Color=" + DropDownList1.SelectedItem.Text + "&Index=" + DropDownList1.SelectedIndex.ToString();
        Response.Redirect(myString);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string myString = "WebForm4.aspx";
        myString += "?Color=" + DropDownList1.SelectedItem.Text + "&Index=" + DropDownList1.SelectedIndex.ToString();
        Response.Redirect(myString +
            "&Hello=" + Server.UrlEncode("###   !שלום, עולם    @@~~^^;;::%%[]{}"));
// URLEncode converts characters as follows:
// Spaces ( ) are converted to plus signs (+).
// Non-alphanumeric characters are escaped to their hexadecimal representation.
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("WebForm5.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Application["MyApplication_Global"] = DropDownList1.SelectedItem.Text;
    }
    public string Get_SelectedItem_Text
    {
        get
        {
            return DropDownList1.SelectedItem.Text;
        }
    }
 
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Write("################################");
    }
}
