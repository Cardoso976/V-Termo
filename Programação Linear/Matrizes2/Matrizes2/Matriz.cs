using System;

namespace Matrizes2
{
    class Matriz
    {
        decimal[,] matriz;

        public Matriz(decimal[,] matriz)
        {
            this.matriz = matriz;
        }

        private static decimal[,] ElimFilCol(int rowToRemove, int columnToRemove, decimal[,] originalArray)
        {
            decimal[,] result = new decimal[originalArray.GetLength(0) - 1, originalArray.GetLength(1) - 1];

            for (int i = 0, j = 0; i < originalArray.GetLength(0); i++)
            {
                if (i == rowToRemove)
                    continue;

                for (int k = 0, u = 0; k < originalArray.GetLength(1); k++)
                {
                    if (k == columnToRemove)
                        continue;

                    result[j, u] = originalArray[i, k];
                    u++;
                }
                j++;
            }

            return result;
        }

        public decimal Determinante()
        {
            if (matriz.GetLength(0) != matriz.GetLength(1))
                throw new Exception("Matriz nao e quadrada");
            return Determinante(this.matriz);
        }

        private decimal Determinante(decimal[,] m)
        {
            decimal determinante = 0;


            if (m.Length == 1)
                return m[0, 0];

            else
            {
                for (int i = 0; i < m.GetLength(0); i++)
                {
                    determinante += (decimal)Math.Pow(-1, i) * m[i, 0] * Determinante(ElimFilCol(i, 0, m));
                }
            }

            return determinante;
        }

        private decimal[,] SubsCol(decimal[,] m, int[] soluciones, int col)
        {
            decimal[,] sustituida = new decimal[m.GetLength(0), m.GetLength(1)];

            for (int i = 0; i < sustituida.GetLength(0); i++)
            {
                for (int j = 0; j < sustituida.GetLength(1); j++)
                {
                    if (j == col)
                        sustituida[i, j] = soluciones[i];

                    else
                        sustituida[i, j] = m[i, j];
                }
            }
            return sustituida;
        }

        public decimal[] Cramer(int[] finais)
        {
            decimal[] solucoes = new decimal[finais.Length];

            decimal determinante = Determinante(matriz);

            var test = false;

            for (int i = 0; i < matriz.GetLength(1); i++)
            {
                solucoes[i] = Determinante(SubsCol(matriz, finais, i));
            }

            foreach (var item in solucoes)
            {
                if (item == 0)
                {
                    test = true;
                    break;
                }
            }

            if (test == false && determinante != 0)
            {
                for (int j = 0; j < matriz.GetLength(1); j++)
                {
                    solucoes[j] = Determinante(SubsCol(matriz, finais, j)) / determinante;
                }
            }
            if(test && determinante == 0)
            {
                throw new DivideByZeroException();
            }
            return solucoes;
        }
    }
}