using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringWriter stringWriter = new StringWriter();
        HtmlTextWriter t = new HtmlTextWriter(stringWriter);
        int counter = 1;
        int left = 0;
        for (int i = 1; i <= 4; i++)
        {
            for (int j = 1; j <= 4; j++)
            {
                if (counter == 16) break;
                Button b = new Button();

                b.ID =  (i-1).ToString()+ (j-1).ToString();
                b.CssClass = "btn";
                left +=50;
                b.Attributes.Add("left",left.ToString()+"px");
                
                form1.Controls.Add(b);
                counter++;
                
            }
            left = 0;

            form1.Controls.Add(new LiteralControl("<br />"));
            
        }
    }
}