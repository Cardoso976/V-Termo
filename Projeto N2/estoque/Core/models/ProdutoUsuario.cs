using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace estoque.Core.models
{
    [Table("Vendas")]
    public class ProdutoUsuario
    {
        public int ProdutoId { get; set; }
        public int UsuarioId { get; set; }
        public Produto Produto { get; set; }
        public Usuario Usuario { get; set; }
        public DateTime DataVenda { get; set; }
        public decimal PrecoPago { get; set; }        
    }
}