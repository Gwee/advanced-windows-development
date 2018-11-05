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

namespace Async_Await
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           label1.Text += new WebClient().DownloadString("http://microsoft.com");
           label1.Text += "\n------------------------------\n"; 
        }

        private void button2_Click(object sender, EventArgs e)
        {
            WebClient myWebClient = new WebClient();
            myWebClient.DownloadStringCompleted += new DownloadStringCompletedEventHandler(myDownloadStringCompleted);
            myWebClient.DownloadStringAsync(new Uri("http://microsoft.com"));
        }
        void myDownloadStringCompleted(object sender, DownloadStringCompletedEventArgs e)
        {
            label1.Text += e.Result;
            label1.Text += "\n------------------------------\n";
        }

        private async void button3_Click(object sender, EventArgs e)
        {
            label1.Text += await new WebClient().DownloadStringTaskAsync("http://microsoft.com");
            label1.Text += "\n------------------------------\n"; 
        }
    }
}
