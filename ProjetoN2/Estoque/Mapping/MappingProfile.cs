using AutoMapper;
using Estoque.Controllers.Resource;
using Estoque.Models;

namespace Estoque.Mapping
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            // Domain to API Resource
            CreateMap<Cliente, ClienteResource>();
            CreateMap<Marca, MarcaResource>();
            CreateMap<Produto, ProdutoResource>();
            CreateMap<UnidadeMedida, UnidadeMedidaResource>();
        }
        
    }
}