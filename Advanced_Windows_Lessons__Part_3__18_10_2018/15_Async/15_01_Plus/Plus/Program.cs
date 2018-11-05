using System;
using System.Collections.Generic;
using System.Text;

namespace Plus
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(plus(1, 2));
            Console.WriteLine("##########################");
            Console.Read();
        }

        static int plus(int a, int b)
        {
            return a + b;
        }
    }
}
