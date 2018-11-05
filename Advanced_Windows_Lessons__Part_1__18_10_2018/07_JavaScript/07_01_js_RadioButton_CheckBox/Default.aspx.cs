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
        if (!IsPostBack)
        {
            RadioButton1.Attributes.Add("onclick", "javascript:func1('" + RadioButton1.ID + "','" + RadioButton2.ID + "','" + Button1.ID + "','" + Button2.ID + "');");
            RadioButton2.Attributes.Add("onclick", string.Format("javascript:func1('{0}','{1}','{2}','{3}');", RadioButton2.ID, RadioButton1.ID, Button2.ID, Button1.ID));

            CheckBox1.Attributes.Add("onclick", "javascript:func2('" + CheckBox1.ID + "','" + Button3.ID + "');");
            CheckBox2.Attributes.Add("onclick", string.Format("javascript:func2('{0}','{1}');", CheckBox2.ID, Button4.ID));
        }
    }
}
