using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button3.Attributes.Add("onclick", "javascript:Plus_Click();return false;");
        Button4.Attributes.Add("onclick", "javascript:Minus_Click();return false;");
    }


    [WebMethod]
    public static int plus(int a, int b)
    {
        return a + b;
    }
    [WebMethod]
    public static int minus(int a, int b)
    {
        return a - b;
    }
}