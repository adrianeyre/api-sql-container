using DavPacExample.Models;
using Microsoft.EntityFrameworkCore;

namespace DavPacExample.Contexts
{
    public class ApiContext : DbContext, IApiContext
    {
        public DbSet<Product> Products { get; set; }
        public DbSet<Book> Books { get; set; }

        public ApiContext(DbContextOptions<ApiContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(ApiContext).Assembly);
            base.OnModelCreating(modelBuilder);
        }
    }
}
