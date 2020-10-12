using DavPacExample.Models;
using Microsoft.EntityFrameworkCore;

namespace DavPacExample.Contexts
{
    public interface IApiContext
    {
        DbSet<Product> Products { get; set; }
        DbSet<Book> Books { get; set; }
    }
}
