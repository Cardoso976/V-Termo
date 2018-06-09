using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Estoque.Controllers.Resource;
using Estoque.Models;
using Estoque.Persistence;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Estoque.Controllers
{
    public class MarcasController
    {
        private readonly EstoqueDbContext context;
        private readonly IMapper mapper;
        public MarcasController(EstoqueDbContext context, IMapper mapper)
        {
            this.mapper = mapper;
            this.context = context;
        }
        
        [HttpGet("/api/marcas")]
        public async Task<IEnumerable<MarcaResource>>GetMarcasAsync()
        {
            var marcas = await context.Marcas.ToListAsync();

            return mapper.Map<List<Marca>, List<MarcaResource>>(marcas);
        }        

    }
}