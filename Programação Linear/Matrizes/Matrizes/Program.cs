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
                Console.WriteLine("\n6) Subtrair matrizes de order mxn:");
                Console.WriteLine("\n7) Multiplicar uma constante pela matriz:");
                Console.WriteLine("\n8) Produto de duas matrizes do tipo a(mxp) e b(pxn):");
                Console.WriteLine("\n9) Sair:");

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
                                    if (i == j)
                                        matriz[i, j] = rdn.Next(0, 10);
                                    else
                                    {
                                        matriz[i, j] = rdn.Next(0, 10);
                                        matriz[j, i] = rdn.Next(0, 10);
                                    }
                                    Console.Write(matriz[i, j] + " ");
                                }
                                Console.Write("\n");
                            }

                        break;
                    case 4:
                        Console.WriteLine("\n\nDigite o numero de linhas e colunas da matriz:");
                        Console.WriteLine("\n\nLinhas:");
                        var linhasMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.WriteLine("\n\nColunas:");
                        var colunaMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        matriz = new int[linhasMatriz, colunaMatriz];
                        var matrizt = new int[colunaMatriz, linhasMatriz];
                        Console.Write("\n\nMatriz:\n\n");
                        for (var i = 0; i < linhasMatriz; i++)
                        {
                            for (var j = 0; j < colunaMatriz; j++)
                            {
                                matriz[i, j] = rdn.Next(0, 10);
                                Console.Write(matriz[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        Console.Write("\n\nMatriz Trasnposta:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                matrizt[i, j] = matriz[j, i];
                                Console.Write(matrizt[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        break;
                    case 5:
                        Console.WriteLine("\n\nDigite o numero de linhas e colunas da matriz:");
                        Console.WriteLine("\n\nLinhas:");
                        linhasMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.WriteLine("\n\nColunas:");
                        colunaMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        var matriza = new int[linhasMatriz, colunaMatriz];
                        var matrizb = new int[colunaMatriz, linhasMatriz];
                        Console.Write("\n\nMatriz A:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                matriza[i, j] = rdn.Next(0, 10);
                                Console.Write(matriza[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        Console.Write("\n\nMatriz B:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                matrizb[i, j] = rdn.Next(0, 10);
                                Console.Write(matrizb[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        Console.Write("\n\nSoma das Matrizes A + B:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                Console.Write(matriza[i, j] + matrizb[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        break;
                    case 6:
                        Console.WriteLine("\n\nDigite o numero de linhas e colunas da matriz:");
                        Console.WriteLine("\n\nLinhas:");
                        linhasMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.WriteLine("\n\nColunas:");
                        colunaMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        matriza = new int[linhasMatriz, colunaMatriz];
                        matrizb = new int[colunaMatriz, linhasMatriz];
                        Console.Write("\n\nMatriz A:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                matriza[i, j] = rdn.Next(0, 10);
                                Console.Write(matriza[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        Console.Write("\n\nMatriz B:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                matrizb[i, j] = rdn.Next(0, 10);
                                Console.Write(matrizb[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        Console.Write("\n\nSubatração das Matrizes A + B:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                Console.Write(matriza[i, j] - matrizb[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        break;
                    case 7:
                        Console.WriteLine("\n\nDigite o numero de linhas e colunas da matriz:");
                        Console.WriteLine("\n\nLinhas:");
                        linhasMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.WriteLine("\n\nColunas:");
                        colunaMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.Write("\n\nDigite a constante de multiplicao: ");
                        var constante = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        matriza = new int[linhasMatriz, colunaMatriz];
                        Console.Write("\n\nMatriz:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                matriza[i, j] = rdn.Next(0, 10);
                                Console.Write(matriza[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        Console.Write("\n\nMatriz multiplicada pela constante:\n\n");
                        for (var i = 0; i < colunaMatriz; i++)
                        {
                            for (var j = 0; j < linhasMatriz; j++)
                            {
                                Console.Write(constante * matriza[i, j] + " ");
                            }

                            Console.Write("\n");
                        }
                        break;
                    case 8:
                        Console.WriteLine("\n\nDigite o numero de linhas e colunas da matriz A:");
                        Console.WriteLine("\n\nLinhas A:");
                        linhasMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.WriteLine("\n\nColunas A:");
                        colunaMatriz = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.WriteLine("\n\nDigite o numero de linhas e colunas da matriz B:");
                        Console.WriteLine("\n\nLinhas B:");
                        var linhasMatrizb = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        Console.WriteLine("\n\nColunas B:");
                        var colunaMatrizb = int.Parse(Console.ReadLine() ?? throw new InvalidOperationException());
                        matriza = new int[linhasMatriz, colunaMatriz];
                        matrizb = new int[linhasMatrizb, colunaMatrizb];
                        var matrizresult = new int[linhasMatriz, colunaMatrizb];
                        if (colunaMatriz == linhasMatrizb)
                        {


                            Console.Write("\n\nMatriz:\n\n");
                            for (var i = 0; i < linhasMatriz; i++)
                            {
                                for (var j = 0; j < colunaMatriz; j++)
                                {
                                    matriza[i, j] = rdn.Next(0, 10);
                                    Console.Write(matriza[i, j] + " ");
                                }

                                Console.Write("\n");
                            }

                            Console.Write("\n\nMatriz:\n\n");
                            for (var i = 0; i < linhasMatrizb; i++)
                            {
                                for (var j = 0; j < colunaMatrizb; j++)
                                {
                                    matrizb[i, j] = rdn.Next(0, 10);
                                    Console.Write(matrizb[i, j] + " ");
                                }

                                Console.Write("\n");
                            }

                            Console.Write("\n\nMatriz resultante da multiplicao:\n\n");
                            for (var i = 0; i < linhasMatriz; i++)
                            {
                                for (var j = 0; j < colunaMatrizb; j++)
                                {
                                    for (int k = 0; k < linhasMatrizb; k++)
                                    {
                                        matrizresult[i, j] += matriza[i, k] * matrizb[k, j];

                                    }
                                    Console.Write(matrizresult[i, j] + " ");
                                }
                                Console.Write("\n");
                            }
                        }
                        else
                        {
                            Console.Write("\n\nImpossivel fazer multiplicacao:\n\n");
                        }
                        break;
                }
            } while (selecao != 9);


            Console.WriteLine("\n\nPressione qualquer tecla para sair.");
            Console.ReadKey();
        }

        public bool VerificaMatriz(int m, int n)
        {
            var verifica = m == n;
            return verifica;
        }
    }
}
