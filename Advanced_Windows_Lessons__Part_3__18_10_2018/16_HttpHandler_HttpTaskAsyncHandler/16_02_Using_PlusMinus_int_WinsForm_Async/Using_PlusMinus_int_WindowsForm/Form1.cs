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
        private async void allBbuttons_Click(object sender, EventArgs e)
        {
            string plusMinus = "plus";
            if (((Button)sender).Text == "-")
                plusMinus = "minus";

            //            string url = "http://localhost:51544/PlusMinus_int_HttpHandler/Handler.ashx";
            string url = "http://localhost:54437/PlusMinus_int_HttpTaskAsyncHandler__1/Handler.ashx";

            url += "?A=" + textBox1.Text + "&B=" + textBox2.Text + "&cmd=" + plusMinus;

            WebClient client = new WebClient();
            string resultStr = await client.DownloadStringTaskAsync(new Uri(url));
            label1.Text = resultStr;
        }
    }
}
