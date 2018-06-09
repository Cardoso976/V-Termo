using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;

namespace Estoque.Models
{
    public class UnidadeMedida
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Preencha o nome.")]
        public string Nome { get; set; }

        [Required(ErrorMessage = "Preencha a sigla.")]
        public string Sigla { get; set; }

        public bool Ativo { get; set; }

        public ICollection<Produto> Produtos { get; set; }

        public UnidadeMedida()
        {
            Produtos = new Collection<Produto>();
        }
    }
}