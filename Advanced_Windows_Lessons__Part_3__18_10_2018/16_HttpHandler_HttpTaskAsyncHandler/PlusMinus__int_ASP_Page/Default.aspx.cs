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
        int a = 0, b = 0, result = 0;
        if (Request.QueryString["A"] != null)
            a = int.Parse(Request.QueryString["A"]);
        if (Request.QueryString["B"] != null)
            b = int.Parse(Request.QueryString["B"]);

        if (Request.QueryString["cmd"] != null)
        {
            if (Request.QueryString["cmd"] == "plus")
                result = a + b;
            else
                result = a - b;
        }
        Response.Write(result);
    }
}