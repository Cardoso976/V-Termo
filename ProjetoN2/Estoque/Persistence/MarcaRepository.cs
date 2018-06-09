using System.Collections.Generic;
using System.Threading.Tasks;
using Estoque.Core;
using Estoque.Core.Models;
using Microsoft.EntityFrameworkCore;

namespace Estoque.Persistence
{
    public class MarcaRepository : IMarcaRepository
    {
        private readonly EstoqueDbContext context;
        public MarcaRepository(EstoqueDbContext context)
        {
            this.context = context;
        }

        public async Task<IEnumerable<Marca>> GetMarcas()        
        {
            return await context.Marcas.ToListAsync();
        }
    }
}