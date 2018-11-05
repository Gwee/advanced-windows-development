using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected async void allButtons_Click(object sender, EventArgs e)
    {
        string plusMinus = "plus";
        if (((Button)sender).Text == "-")
            plusMinus = "minus";

        string url = "http://localhost:54422/PlusMinus_int_HttpHandler/Handler.ashx";
//        string url = "http://localhost:54437/PlusMinus_int_HttpTaskAsyncHandler__1/Handler.ashx";

        url += "?A=" + TextBox1.Text + "&B=" + TextBox2.Text + "&cmd=" + plusMinus;

        WebClient client = new WebClient();
        string resultStr = await client.DownloadStringTaskAsync(new Uri(url));
        Label1.Text = resultStr;
    }
}