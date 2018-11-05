using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

[Serializable]
public class Fraction
{
    public int num, denom;
	public Fraction( )
	{
		num = 0; denom = 1;
	}
	public Fraction( int n, int d)
	{
		num = n; denom = d;
	}
}
