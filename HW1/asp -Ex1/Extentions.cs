using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex_1
{
   public static class Extentions
    {
        /// <summary>
        /// Shuffle the array.
        /// </summary>
        /// <typeparam name="T">Array element type.</typeparam>
        /// <param name="array">Array to shuffle.</param>
        public static T[] Shuffle<T>(T[] array)
        {
            T temp1, temp2;

            var random = new Random();
            for (int i = 0; i < array.Length - 1; i++)
            {
                // Pick random element to swap.
                int i1 = random.Next(0, array.Length - 1); // 0 <= j <= i-1
                int i2 = random.Next(0, array.Length - 1); // 0 <= j <= i-1

                // Swap
                temp1 = array[i1];
                temp2 = array[i2];

                array[i2] = temp1;
                array[i1] = temp2;
            }
            return array;
        }
    }
}
