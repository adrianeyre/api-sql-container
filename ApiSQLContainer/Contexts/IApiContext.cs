using ApiSQLContainer.Models;
using Microsoft.EntityFrameworkCore;

namespace ApiSQLContainer.Contexts
{
    public interface IApiContext
    {
        DbSet<Product> Products { get; set; }
        DbSet<Book> Books { get; set; }
    }
}
