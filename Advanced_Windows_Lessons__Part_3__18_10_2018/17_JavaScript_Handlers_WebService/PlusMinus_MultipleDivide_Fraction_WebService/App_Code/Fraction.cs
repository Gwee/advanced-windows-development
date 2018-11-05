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
public class Fraction
{
	public int num, denom;
	public Fraction( )
	{
		num = 0; denom = 1;
	}
    public Fraction(int n, int d)
	{
		num = n; denom = d;
	}
    public static Fraction operator +(Fraction A, Fraction B)
    {
        return new Fraction(
            A.num * B.denom + A.denom * B.num, A.denom * B.denom);
    }
    public static Fraction operator -(Fraction A, Fraction B)
    {
        return new Fraction(
            A.num * B.denom - A.denom * B.num, A.denom * B.denom);
    }
    public static Fraction operator *(Fraction A, Fraction B)
    {
        return new Fraction(
            A.num * B.num, A.denom * B.denom);
    }
    public static Fraction operator/(Fraction A, Fraction B)
    {
        return new Fraction(
            A.num * B.denom , A.denom * B.num);
    }
}
