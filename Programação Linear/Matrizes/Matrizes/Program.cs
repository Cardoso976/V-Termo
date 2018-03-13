using System;

namespace Matrizes
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("\nTrabalho de Programação: Matrizes");
            int[,] matriz;
            int selecao;
            int ordemMatriz = 0;
            do
            {
                Console.WriteLine("\nMenu:");
                Console.WriteLine("\n1) Gerar uma matriz diagonal:");
                Console.WriteLine("\n2) Gerar uma matriz identidade:");
                Console.WriteLine("\n3) Gerar uma matriz simétrica:");
                Console.WriteLine("\n4) Determinar a matriz trasposta de uma matriz qualquer:");
                Console.WriteLine("\n5) Somar matrizes de order mxn:");
                Console.WriteLine("\n6) Multiplicar matrizes de order mxn:");
                Console.WriteLine("\n7) Produto de duas matrizes do tipo a(mxp) e b(pxn):");

                Console.WriteLine("\n\nDigite a opção desejada:");
                selecao = Int32.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                Console.WriteLine("\n\nDigite a oordem da matriz:");
                ordemMatriz = Int32.Parse(Console.ReadLine());
                matriz = new int[ordemMatriz,ordemMatriz];

                switch (selecao)
                {
                    case 1:
                        {
                            Console.Write("\n\nMatriz Diagonal:\n\n");
                            for (int i = 0; i < ordemMatriz; i++)
                            {
                                for (int j = 0; j < ordemMatriz; j++)
                                {
                                    if (i == j)
                                        matriz[i, j] = RetornaNumero();
                                    else
                                        matriz[i, j] = 0;
                                    Console.Write(matriz[i, j] + " ");
                                }
                                Console.Write("\n");
                            }
                            break;
                        }
                    case 2:
                        {
                            break;
                        }
                    case 3:
                        {
                            break;
                        }
                    case 4:
                        {
                            break;
                        }
                    case 5:
                        {
                            break;
                        }
                    case 6:
                        {
                            break;
                        }
                    case 7:
                        {
                            break;
                        }
                }

            } while (selecao != 0);


            Console.WriteLine("\n\n\n\nPressione qualquer tecla para sair.");
            Console.ReadKey();
        }

        private static int RetornaNumero()
        {
            Random rdn = new Random();
            int num = rdn.Next(1, 9);
            return num;
        }

        public bool VerificaMatriz(int m, int n)
        {
            bool verifica = m == n;
            return verifica;
        }
    }
}
