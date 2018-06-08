using Estoque.Models;
using Microsoft.EntityFrameworkCore;

namespace Estoque.Persistence
{
    public class EstoqueDbContext : DbContext
    {
        public DbSet<Usuario> Usuarios { get; set; }

        public EstoqueDbContext(DbContextOptions<EstoqueDbContext> options)
         : base (options)
        { }        
    }
}