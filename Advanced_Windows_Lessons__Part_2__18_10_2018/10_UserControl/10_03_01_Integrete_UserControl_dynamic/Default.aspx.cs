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
    protected myUserControl myUserControl1;

    protected void Page_Load(object sender, EventArgs e)
    {
        myUserControl1 = (myUserControl)LoadControl("myUserControl.ascx");
        myUserControl1.myEvent += new myDelegate(myFunction);
        Panel1.Controls.Add(myUserControl1);
    }
    private void myFunction(object sender, myEventArgs e)
    {
        Label1.Text = "Hello, " + e.myString + " !";
    }    
}

