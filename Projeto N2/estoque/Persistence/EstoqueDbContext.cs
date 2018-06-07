using Microsoft.EntityFrameworkCore;

namespace estoque.Persistence
{
    public class EstoqueDbContext : DbContext
    {
        public EstoqueDbContext (DbContextOptions<EstoqueDbContext> options) 
            : base(options)
        {
            
        }        
    }
}