using System.ComponentModel.DataAnnotations;

namespace ApiSQLContainer.Models
{
    public class Book
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Title { get; set; }

        public string Description { get; set; }
    }
}
