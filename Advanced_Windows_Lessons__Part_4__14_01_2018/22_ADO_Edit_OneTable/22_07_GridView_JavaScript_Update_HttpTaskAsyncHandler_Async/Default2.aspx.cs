using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ID = "", FAMILY = "", NAME = "";
        if (Request.QueryString["id"] != null)
            ID = Request.QueryString["id"];
        if (Request.QueryString["family"] != null)
            FAMILY = Request.QueryString["family"];
        if (Request.QueryString["name"] != null)
            NAME = Request.QueryString["name"];
        TextBox1.Text = ID;
        TextBox2.Text = FAMILY;
        TextBox3.Text = NAME;
    }
}