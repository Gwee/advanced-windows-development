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
            for (int i = 1; i < 4; i++)
                Response.Cookies["myCookies"]["Button" + i.ToString()] = "0";
        }
        else
        {
            for (int i = 1; i < 4; i++)
                Response.Cookies["myCookies"]["Button" + i.ToString()] = Request.Cookies["myCookies"]["Button" + i.ToString()];
        }
    }
    protected void Button123_Click(object sender, EventArgs e)
    {
        int tempInt = Int32.Parse(Request.Cookies["myCookies"][((Button)sender).ID]);
        switch (((Button)sender).ID)
        {
            case "Button1": tempInt += 1; break;
            case "Button2": tempInt += 10; break;
            case "Button3": tempInt += 100; break;
        }
        Response.Cookies["myCookies"][((Button)sender).ID] = tempInt.ToString();
        Label1.Text = tempInt.ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = 1; i < 4; i++)
            Response.Cookies["myCookies"]["Button" + i.ToString()] = Label1.Text;
    }
}
