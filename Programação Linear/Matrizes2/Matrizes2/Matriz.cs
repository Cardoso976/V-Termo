using System;
using System.Collections.Generic;
using System.Text;

namespace Matrizes2
{
    class Matriz
    {
        decimal[,] matriz;

        public Matriz(decimal[,] m)
        {
            matriz = m;
        }

        private decimal[,] ElimFilCol(decimal[,] a, int fila, int column)
        {
            decimal[,] result = new decimal[a.GetLength(0) - 1, a.GetLength(1) - 1];
            bool fil = false;
            bool col = false;
            for (int i = 0; i < result.GetLength(0); i++)
            {
                col = false;
                if (i == fila) { fil = true; }
                for (int j = 0; j < result.GetLength(1); j++)
                {
                    if (j == column) { col = true; }
                    if (!fil && !col) { result[i, j] = a[i, j]; }
                    if (!fil && col) { result[i, j] = a[i, j + 1]; }
                    if (fil && !col) { result[i, j] = a[i + 1, j]; }
                    if (fil && col) { result[i, j] = a[i + 1, j + 1]; }

                }
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
                    determinante += (decimal)Math.Pow(-1, i) * m[i, 0] * Determinante(ElimFilCol(m, i, 0));
                }
            }

            return determinante;
        }
    }
}