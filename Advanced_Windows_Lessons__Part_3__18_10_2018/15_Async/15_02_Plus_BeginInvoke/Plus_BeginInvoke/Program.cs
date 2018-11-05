using System;
using System.Collections.Generic;
using System.Text;

namespace Plus_BeginInvoke
{
    public delegate int plusDelegate(int a, int b);
    class Program
    {
        static plusDelegate myPlusDelegate;
        static void Main(string[] args)
        {
            myPlusDelegate = new plusDelegate(plus);
            myPlusDelegate.BeginInvoke(1, 2, new AsyncCallback(AsyncCompleted), null); 

//////            myPlusDelegate.BeginInvoke(1, 2, new AsyncCallback(AsyncCompleted), "11111111111111111111"); 

            Console.WriteLine("##########################");
            Console.Read();
        }

        static int plus(int a, int b)
        {
            return a + b;
        }

        static void AsyncCompleted(IAsyncResult tempIAsyncResult)
        {
            int res = myPlusDelegate.EndInvoke(tempIAsyncResult);
            Console.WriteLine(res);

 ////           Console.WriteLine( tempIAsyncResult.AsyncState );
        }

    }
}
