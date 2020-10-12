namespace ApiSQLContainer.Models
{
    public interface IBook
    {
        int Id { get; set; }
        string Title { get; set; }
        string Description { get; set; }
        decimal Price { get; set; }
    }
}
