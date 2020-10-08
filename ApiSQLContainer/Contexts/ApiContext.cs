using ApiSQLContainer.Models;
using Microsoft.EntityFrameworkCore;

namespace ApiSQLContainer.Contexts
{
    public class ApiContext : DbContext
    {
        public DbSet<Product> Products { get; set; }

        public ApiContext(DbContextOptions<ApiContext> options) : base(options)
        {
            this.Database.EnsureCreated();
        }
    }
}
