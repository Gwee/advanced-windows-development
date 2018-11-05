using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Fraction
/// </summary>

[Serializable]
public class Fraction
{
    public int num, denom;
    public Fraction()
    {
        num = 0; denom = 1;
    }
    public Fraction(int n, int d)
    {
        num = n; denom = d;
    }
}