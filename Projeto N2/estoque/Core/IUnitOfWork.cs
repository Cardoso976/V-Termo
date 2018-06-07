using System.Threading.Tasks;

namespace estoque.Core
{
    public interface IUnitOfWork
    {
        Task CompleteAsync();     
    }
}