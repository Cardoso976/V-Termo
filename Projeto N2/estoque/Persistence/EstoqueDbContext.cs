using estoque.Core.models;
using Microsoft.EntityFrameworkCore;

namespace estoque.Persistence
{
    public class EstoqueDbContext : DbContext
    {
        public DbSet<Produto> Produtos { get; set; }

        public DbSet<Usuario> Usuarios { get; set; }

        public EstoqueDbContext (DbContextOptions<EstoqueDbContext> options) 
            : base(options)
        { } 

        protected override void OnModelCreating(ModelBuilder modelBuilder){
            modelBuilder.Entity<ProdutoUsuario>().HasKey(vf => 
                new { vf.ProdutoId, vf.UsuarioId });
        }

    }
}