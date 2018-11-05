using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PlusMinus_Fraction.Models 
{
    public class Fraction
    {
        public int num { get; set; }
        public int denom { get; set; }

        public Fraction()
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
    }
    public class myModel
    {
        public Fraction firstFraction { get; set; }
        public Fraction secondFraction { get; set; }
        public string action { get; set; }
        public myModel()
        {
            firstFraction = new Fraction();
            secondFraction = new Fraction();
            //            resultFraction = new Fraction();
        }
    }

}