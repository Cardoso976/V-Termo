using System.ComponentModel.DataAnnotations;

namespace estoque.Core.models
{
    public class Produto
    {
        public int Id { get; set; }

        [Required]
        public string Codigo { get; set; }

        [Required]
        [StringLength(255)]
        public string Nome { get; set; }

        [Required]
        [Range(0, 9999999999999999.99)]
        public decimal PrecoCusto { get; set; }

        [Required]
        [Range(0, 9999999999999999.99)]
        public decimal PrecoVenda { get; set; }

        [Required]
        [Range(0, 9999)]
        public int QuantidadeEstoque { get; set; }        
    }
}