using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace Estoque.Controllers.Resource
{
    public class MarcaResource
    {
        public int Id { get; set; }
        
        public string Nome { get; set; }

        public bool Ativo{ get; set; }

        public ICollection<ProdutoResource> Produtos { get; set; }

        public MarcaResource()
        {
            Produtos = new Collection<ProdutoResource>();
        }         
    }
}