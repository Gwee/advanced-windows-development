﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;


using System.Web.Script.Serialization;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected async void allButtons_Click(object sender, EventArgs e)
    {
        string action = "PlusMinus";
        if (((Button)sender).Text == "* /")
            action = "MultipleDivide";

        string url = "http://localhost:49549/PlusMinus_MultipleDivide_Fraction_HttpTaskAsyncHandler/Handler.ashx";

        Fraction A = new Fraction();
        A.num = int.Parse(TextBox1.Text);
        A.denom = int.Parse(TextBox2.Text);
        Fraction B = new Fraction();
        B.num = int.Parse(TextBox3.Text);
        B.denom = int.Parse(TextBox4.Text);

        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();

        string JsonString_0 = myJavaScriptSerializer.Serialize(A);
        string JsonString_1 = myJavaScriptSerializer.Serialize(B);

        url += "?JsonString_0=" + JsonString_0 + "&JsonString_1=" + JsonString_1 + "&cmd=" + action;

        WebClient client = new WebClient();
        string resultStr = await client.DownloadStringTaskAsync(new Uri(url));
        Fraction[] resArr = (Fraction[])myJavaScriptSerializer.Deserialize(resultStr, typeof(Fraction[]));

        Label1.Text = resArr[0].num.ToString();
        Label2.Text = resArr[0].denom.ToString();
        Label3.Text = resArr[1].num.ToString();
        Label4.Text = resArr[1].denom.ToString();
    }
}