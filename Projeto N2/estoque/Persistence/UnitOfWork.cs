using System.Threading.Tasks;
using estoque.Core;

namespace estoque.Persistence
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly EstoqueDbContext context;

        public UnitOfWork(EstoqueDbContext context)
        {
            this.context = context;
        }

        public async Task CompleteAsync()
        {
            await context.SaveChangesAsync();
        }
    }
}