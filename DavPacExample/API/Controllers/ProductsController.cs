using System.Linq;
using DavPacExample.Contexts;
using DavPacExample.Models;
using Microsoft.AspNetCore.Mvc;

namespace DavPacExample.Controllers
{
    [Route("api/[controller]")]
    public class ProductsController : Controller
    {
        private readonly ApiContext _context;

        public ProductsController(ApiContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Get()
        {
            var model = _context.Products.ToList();

            return Ok(model);
        }

        [HttpPost]
        public IActionResult Create([FromBody] Product model)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            _context.Products.Add(model);
            _context.SaveChanges();

            return Ok(model);
        }
    }
}
