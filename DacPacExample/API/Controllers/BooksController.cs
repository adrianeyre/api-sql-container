using System.Linq;
using DacPacExample.Contexts;
using DacPacExample.Models;
using Microsoft.AspNetCore.Mvc;

namespace DacPacExample.Controllers
{
    [Route("api/[controller]")]
    public class BooksController : Controller
    {
        private readonly ApiContext _context;

        public BooksController(ApiContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Get()
        {
            var model = _context.Books.ToList();

            return Ok(model);
        }

        [HttpPost]
        public IActionResult Create([FromBody] Book model)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            _context.Books.Add(model);
            _context.SaveChanges();

            return Ok(model);
        }
    }
}
