using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Estoque.Models
{
    [Table("Vendas")]
    public class ProdutoCliente
    {
        public int ProdutoId { get; set; }
        public int ClienteId { get; set; }
        public Cliente Cliente { get; set; }
        public Produto Produto { get; set; }
        [Column(TypeName = "decimal(5, 2)")]
        public decimal PrecoPago { get; set; }
        public DateTime DataCompra { get; set; }
        public int QuantidadeProduto { get; set; }
    }
}