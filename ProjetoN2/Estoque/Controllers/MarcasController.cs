using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Estoque.Controllers.Resource;
using Estoque.Core;
using Estoque.Core.Models;
using Estoque.Persistence;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Estoque.Controllers
{
    public class MarcasController
    {
        private readonly IMapper mapper;
        private readonly IMarcaRepository repository;
        public MarcasController(IMarcaRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        [HttpGet("/api/marcas")]
        public async Task<IEnumerable<MarcaResource>> GetMarcasAsync()
        {
            var marcas = await repository.GetMarcas();

            return mapper.Map<IEnumerable<Marca>, IEnumerable<MarcaResource>>(marcas);
        }

    }
}