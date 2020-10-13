using DacPacExample.Models;
using Microsoft.EntityFrameworkCore;

namespace DacPacExample.Contexts
{
    public interface IApiContext
    {
        DbSet<Product> Products { get; set; }
        DbSet<Book> Books { get; set; }
    }
}
