using System;
using System.Collections.Generic;
using System.Text;

namespace Plus_BeginInvoke
{
    public delegate int plusDelegate(int a, int b);
    class Program
    {
        static void Main(string[] args)
        {
            plusDelegate myPlusDelegate = new plusDelegate(plus);
            myPlusDelegate.BeginInvoke(1, 2, new AsyncCallback(AsyncCompleted), myPlusDelegate); 

            Console.WriteLine("##########################");
            Console.Read();
        }

        static int plus(int a, int b)
        {
            return a + b;
        }

        static void AsyncCompleted(IAsyncResult tempIAsyncResult)
        {
            plusDelegate tempPlusDelegate = (plusDelegate)tempIAsyncResult.AsyncState;

            int res = tempPlusDelegate.EndInvoke(tempIAsyncResult);
            Console.WriteLine(res);
        }
    }
}
