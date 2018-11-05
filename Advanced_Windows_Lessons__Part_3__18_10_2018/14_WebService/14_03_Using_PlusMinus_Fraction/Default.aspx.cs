using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    localhost.Service S;
    protected void Page_Load(object sender, EventArgs e)
    {
        S = new localhost.Service();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        localhost.Fraction A = new localhost.Fraction();
        A.num = int.Parse(TextBox1.Text);
        A.denom = int.Parse(TextBox2.Text);
        localhost.Fraction B = new localhost.Fraction();
        B.num = int.Parse(TextBox3.Text);
        B.denom = int.Parse(TextBox4.Text);

        localhost.Fraction[] resultArrFraction = S.plus_minus(A, B);
        Label1.Text = resultArrFraction[0].num.ToString();
        Label2.Text = resultArrFraction[0].denom.ToString();
        Label3.Text = resultArrFraction[1].num.ToString();
        Label4.Text = resultArrFraction[1].denom.ToString();

    }
}