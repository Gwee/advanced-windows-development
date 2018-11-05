using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.IO;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void allButtons_Click(object sender, EventArgs e)
    {
        string plusMinus = "plus";
        if (((Button)sender).Text == "-")
            plusMinus = "minus";

        string url = "http://localhost:6811/PlusMinus__int_ASP_Page/Default.aspx";
 //       string url = "http://localhost:54437/PlusMinus_int_HttpTaskAsyncHandler__1/Handler.ashx";

        url += "?A=" + TextBox1.Text + "&B=" + TextBox2.Text + "&cmd=" + plusMinus;
        /*
                WebRequest myWebRequest = WebRequest.Create(url);
                WebResponse myWebResponse = myWebRequest.GetResponse();
                Stream receiveStream = myWebResponse.GetResponseStream();

                Encoding encode = System.Text.Encoding.GetEncoding("utf-8");
                StreamReader readStream = new StreamReader(receiveStream, encode);

                Char[] read = new Char[1000];
                int count = readStream.Read(read, 0, 1000);
                string resultStr = new String(read, 0, count);
                myWebResponse.Close();
                readStream.Close();
                Label1.Text = resultStr;
        */

            WebClient client = new WebClient();
            string resultStr = client.DownloadString(new Uri(url));
            Label1.Text = resultStr;
    }
}