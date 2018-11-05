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

public delegate void myDelegate(object sender, myEventArgs e);

public partial class myUserControl : System.Web.UI.UserControl
{
    public event myDelegate myEvent;

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        myEventArgs myEventArgs_temp = new myEventArgs(TextBox1.Text);
        if (myEvent != null)
            myEvent(this, myEventArgs_temp);
    }
}
