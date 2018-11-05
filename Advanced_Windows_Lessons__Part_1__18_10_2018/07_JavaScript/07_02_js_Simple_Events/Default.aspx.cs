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
        //TextBox1.Attributes["onClick"] = "javascript : alert('Click on TextBox')";
        TextBox1.Attributes["onDblClick"] = "javascript : alert('Double Click on TextBox')";

        //TextBox1.Attributes["onChange"] = "javascript : alert('TextBox is changed')";
        //TextBox1.Attributes["onSelect"] = "javascript : alert('TextBox is Selected')";

        //TextBox1.Attributes["onFocus"] = "javascript : alert('TextBox in focus')";
        //TextBox1.Attributes["onBlur"] = "javascript:alert('Focus lost from TextBox')"

        //TextBox1.Attributes["onKeyDown"] = "javascript : alert('TextBox KeyDown')";
        //TextBox1.Attributes["onKeyUp"] = "javascript : alert('TextBox KeyUp')";
        //TextBox1.Attributes["onKeyPress") = "javascript : alert('TextBox KeyPress')";

        //TextBox1.Attributes["onMouseOut"] = "javascript : alert('TextBox MouseOut')";
        //TextBox1.Attributes["onMouseMove"] = "javascript : alert('TextBox MouseMove')";
        //TextBox1.Attributes["onMouseDown"] = "javascript : alert('TextBox MouseDown')";
        //TextBox1.Attributes["onMouseUp"] = "javascript : alert('TextBox MouseUp')";
        //TextBox1.Attributes["onMouseOver"] = "javascript : alert('TextBox MouseOver')";
    }
}
