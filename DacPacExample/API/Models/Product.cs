using System.ComponentModel.DataAnnotations;

namespace DacPacExample.Models
{
    public class Product : IProduct
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }
        public decimal Price { get; set; }
    }
}
