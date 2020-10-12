using System.ComponentModel.DataAnnotations;

namespace ApiSQLContainer.Models
{
    public class Book : IBook
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Title { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
    }
}
