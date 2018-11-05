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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["MasterPages"] != null)
            Page.MasterPageFile = (string)Session["MasterPages"];
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["MasterPages"] = "firstMasterPage.master";
        Server.Transfer(Request.FilePath);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["MasterPages"] = "secondMasterPage.master";
        Server.Transfer(Request.FilePath);
    }
 }
