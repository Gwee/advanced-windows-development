using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int s = 0;
        for (int i = 1; i <= 100; i++)
            s += i;
        ClientScript.RegisterClientScriptBlock(typeof(Page), "", "<script>alert('" + s.ToString() + "');</script>");
    }
}