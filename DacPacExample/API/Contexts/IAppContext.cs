using DacPacApiExample.Models;
using Microsoft.EntityFrameworkCore;

namespace DacPacApiExample.Contexts
{
    public interface IApiContext
    {
        DbSet<Product> Products { get; set; }
        DbSet<Book> Books { get; set; }
    }
}
