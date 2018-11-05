using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Plus_Minus_BeginInvoke
{
    public delegate int plusMinusDelegate(int a, int b);
    class Program
    {
        static void Main(string[] args)
        {
            plusMinusDelegate myPlusDelegate = new plusMinusDelegate(plus);
            myPlusDelegate.BeginInvoke(1, 2, new AsyncCallback(AsyncCompleted), myPlusDelegate);

            plusMinusDelegate myMinusDelegate = new plusMinusDelegate(minus);
            myMinusDelegate.BeginInvoke(1, 2, new AsyncCallback(AsyncCompleted), myMinusDelegate);


            Console.WriteLine("##########################");
            Console.Read();
        }

        static int plus(int a, int b)
        {
            return a + b;
        }
        static int minus(int a, int b)
        {
            return a - b;
        }

        static void AsyncCompleted(IAsyncResult tempIAsyncResult)
        {
            plusMinusDelegate tempPlusDelegate = (plusMinusDelegate)tempIAsyncResult.AsyncState;

            int res = tempPlusDelegate.EndInvoke(tempIAsyncResult);
            Console.WriteLine(res);
        }
    }
}

