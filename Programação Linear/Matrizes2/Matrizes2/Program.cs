using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace Matrizes2
{
    class Program
    {
        static decimal[,] _operando1;

        static void Main(string[] args)
        {
            Random random = new Random();

            Console.WriteLine("Digite a ordem da matriz");
            var ordemMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());

            _operando1 = new decimal[ordemMatriz,ordemMatriz];

            Console.WriteLine();

            for (int i = 0; i < _operando1.GetLength(0); i++)
            {
                for (int j = 0; j < _operando1.GetLength(1); j++)
                {
                    _operando1[i, j] = random.Next(10) + 1;
                    Console.Write(_operando1[i, j] + " ");
                }
                Console.WriteLine();
            }

            Matriz matriz = new Matriz(_operando1);

            Console.WriteLine("\nDeterminante: "+ matriz.Determinante());
            Console.ReadKey();
        }
    }
}
