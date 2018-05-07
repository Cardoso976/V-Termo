using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Linq;

namespace Matrizes2
{
    class Program
    {
        static decimal[,] _operando1;
        private static int _operador;
        private static int _ordemMatriz;
        private static int[] _vetorFinais;

        static void Main(string[] args)
        {
            do
            {


                Console.WriteLine("Digite a opcao desejada");
                Console.WriteLine("1 - Determinante");
                Console.WriteLine("2 - Sistemas Lineares - Cramer");

                _operador = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                switch (_operador)
                {
                    case 1:
                        Console.WriteLine("Digite a ordem da matriz");
                        _ordemMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());

                        Console.WriteLine();
                        GerarMatriz();

                        Matriz matriz = new Matriz(_operando1);

                        Console.WriteLine("\nDeterminante: " + matriz.Determinante());
                        break;

                    case 2:
                        Console.WriteLine("Digite a ordem do sistema");
                        _ordemMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());

                        _vetorFinais = new int[_ordemMatriz];

                        Console.WriteLine("Digite os finais");
                        for (int i = 0; i < _ordemMatriz; i++)
                        {
                            _vetorFinais[i] = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        }

                        Console.WriteLine();
                        GerarMatriz();

                        Matriz matriz2 = new Matriz(_operando1);

                        var test = false;
                        foreach (var item in matriz2.Cramer(_vetorFinais))
                        {
                            if (item == 0)
                                test = true;
                            else
                                break;
                        }

                        try
                        {
                            if(test)
                            Console.WriteLine("Solução SPI [{0}]", string.Join(", ", matriz2.Cramer(_vetorFinais).ToList()));
                            else
                            Console.WriteLine("Solução SPD [{0}]", string.Join(", ", matriz2.Cramer(_vetorFinais).ToList()));
                        }
                        catch (DivideByZeroException e)
                        {
                            Console.WriteLine("SI");
                           // throw;
                        }
                        break;
                }
            } while (_operador != 0);

            Console.ReadLine();
            Console.ReadKey();
        }

        private static void GerarMatriz()
        {
            Random random = new Random();
            _operando1 = new decimal[_ordemMatriz, _ordemMatriz];


            for (int i = 0; i < _operando1.GetLength(0); i++)
            {
                for (int j = 0; j < _operando1.GetLength(1); j++)
                {
                    _operando1[i, j] = random.Next(5) + 1;
                    Console.Write(_operando1[i, j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}
