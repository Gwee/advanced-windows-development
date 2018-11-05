using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class WebForm6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            _Default myPreviousPage = (_Default)(Page.PreviousPage);
            //         Label1.Text = myPreviousPage.Get_SelectedItem_Text;
            Label1.Text = ((DropDownList)(myPreviousPage.FindControl("DropDownList1"))).SelectedItem.Text;
            Label2.BackColor = System.Drawing.Color.FromName(Label1.Text);
            Label3.Text += Application["MyApplication_Global"].ToString();
        }
    }
}
