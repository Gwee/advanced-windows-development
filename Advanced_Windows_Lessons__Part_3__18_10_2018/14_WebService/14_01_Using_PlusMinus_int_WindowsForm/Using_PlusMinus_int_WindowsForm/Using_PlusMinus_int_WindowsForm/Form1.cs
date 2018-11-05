using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;


////////// Open new project in Framework 2.0

namespace Using_PlusMinus_int_WindowsForm
{
    public partial class Form1 : Form
    {
        localhost.WebService S;
        public Form1()
        {
            InitializeComponent();
            S = new localhost.WebService();
        }
        protected void plusButton_Click(object sender, EventArgs e)
        {
            label1.Text = (S.plus(Int32.Parse(textBox1.Text), Int32.Parse(textBox2.Text))).ToString();
        }
        protected void minusButton_Click(object sender, EventArgs e)
        {
            label1.Text = (S.minus(Int32.Parse(textBox1.Text), Int32.Parse(textBox2.Text))).ToString();
        }
    }
}
