using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Net;
using System.IO;

namespace Using_PlusMinus_int_WindowsForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void allBbuttons_Click(object sender, EventArgs e)
        {
            string plusMinus = "plus";
            if (((Button)sender).Text == "-")
                plusMinus = "minus";

            //            string url = "http://localhost:51544/PlusMinus_int_HttpHandler/Handler.ashx";
            string url = "http://localhost:54437/PlusMinus_int_HttpTaskAsyncHandler__1/Handler.ashx";

            url += "?A=" + textBox1.Text + "&B=" + textBox2.Text + "&cmd=" + plusMinus;
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

                        label2.Text = resultStr;
            */
            WebClient client = new WebClient();
            string resultStr = client.DownloadString(new Uri(url));
            label2.Text = resultStr;
        }
    }
}
