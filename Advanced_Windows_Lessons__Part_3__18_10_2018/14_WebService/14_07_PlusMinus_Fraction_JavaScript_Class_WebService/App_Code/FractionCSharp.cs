using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Fraction
/// </summary>

[Serializable]
public class FractionCSharp
{
	public int num, denom;
	public FractionCSharp( )
	{
		num = 0; denom = 1;
	}
    public FractionCSharp(int n, int d)
	{
		num = n; denom = d;
	}
    public static FractionCSharp operator +(FractionCSharp A, FractionCSharp B)
    {
        return new FractionCSharp(
            A.num * B.denom + A.denom * B.num, A.denom * B.denom);
    }
    public static FractionCSharp operator -(FractionCSharp A, FractionCSharp B)
    {
        return new FractionCSharp(
            A.num * B.denom - A.denom * B.num, A.denom * B.denom);
    }

}
