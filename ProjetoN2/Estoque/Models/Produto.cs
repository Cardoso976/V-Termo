namespace Estoque.Models
{
    public class Produto
    {
        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Nome { get; set; }
        public decimal PrecoCusto { get; set; }
        public decimal PrecoVenda { get; set; }
        public int QuantidadeEstoque { get; set; }    
    }
}