using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Plus_Async_Await
{
    class Program
    {
        static public int plusFunction(int a, int b)
        {
            return a + b;
        }
        static void Main()
        {
            AAAAAAAAAAAAA();
            Console.WriteLine("#######################");
            Console.Read();
        }

        static async void AAAAAAAAAAAAA()
        {
            int result = await Task<int>.Run(() => plusFunction(1, 2));

//            Func<int, int, int> plus = (a, b) => a + b;
//            int result = await Task<int>.Run(() => plus(1, 2));

            Console.WriteLine(result);
        }

    }
}
