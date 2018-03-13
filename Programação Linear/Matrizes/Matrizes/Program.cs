using System;

namespace Matrizes
{
    class Program
    {
        private static void Main(string[] args)
        {
            Random rdn = new Random();
            Console.WriteLine("\nTrabalho de Programação: Matrizes");
            int selecao;
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
                selecao = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());


                switch (selecao)
                {
                    case 1:
                        Console.WriteLine("\n\nDigite a ordem da matriz:");
                        var ordemMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        var matriz = new int[ordemMatriz, ordemMatriz];
                        Console.Write("\n\nMatriz Diagonal:\n\n");
                        for (var i = 0; i < ordemMatriz; i++)
                        {
                            for (var j = 0; j < ordemMatriz; j++)
                            {
                                if (i == j)
                                    matriz[i, j] = rdn.Next(0, 10);
                                else
                                    matriz[i, j] = 0;
                                Console.Write(matriz[i, j] + " ");
                            }

                            Console.Write("\n");
                        }

                        break;
                    case 2:
                        Console.WriteLine("\n\nDigite a ordem da matriz:");
                        ordemMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        matriz = new int[ordemMatriz, ordemMatriz];
                        Console.Write("\n\nMatriz Identidade:\n\n");
                        for (var i = 0; i < ordemMatriz; i++)
                        {
                            for (var j = 0; j < ordemMatriz; j++)
                            {
                                if (i == j)
                                    matriz[i, j] = 1;
                                else
                                    matriz[i, j] = 0;
                                Console.Write(matriz[i, j] + " ");
                            }

                            Console.Write("\n");
                        }

                        break;
                    case 3:
                        Console.WriteLine("\n\nDigite a ordem da matriz:");
                        ordemMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        matriz = new int[ordemMatriz, ordemMatriz];
                        Console.Write("\n\nMatriz Simetrica:\n\n");
                        for (var i = 0; i < ordemMatriz; i++)
                        {
                            for (var j = 0; j < ordemMatriz; j++)
                            {
                                matriz[i, j] = rdn.Next(0, 10);
                                Console.Write(matriz[i, j] + " ");
                            }

                            Console.Write("\n");
                        }

                        break;
                    case 4:
                        break;
                    case 5:
                        break;
                    case 6:
                        break;
                    case 7:
                        break;
                }
            } while (selecao != 0);


            Console.WriteLine("\n\n\n\nPressione qualquer tecla para sair.");
            Console.ReadKey();
        }

        public bool VerificaMatriz(int m, int n)
        {
            var verifica = m == n;
            return verifica;
        }
    }
}
