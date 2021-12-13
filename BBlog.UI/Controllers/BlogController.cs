using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{ 
    public class BlogController : Controller
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());

        [AllowAnonymous]
        public IActionResult Index()
        {
            var values = bm.GetBlogListWithCategory();
            return View(values);
        }
        [AllowAnonymous]
        public IActionResult BlogDetails(int id)
        {
            ViewBag.id = id;
            var values = bm.GetAll(id);
            return View(values);
        }
        public IActionResult BlogListByWriter()
        {
            var blogs = bm.GetBlogListByWriter(4);
            return View(blogs);
        }
        [HttpGet]
        public IActionResult AddBlog()
        {
            return View();
        }
        [HttpPost]
        public IActionResult AddBlog(Blog blog)
        {
            bm.Add(blog);
            return RedirectToAction("BlogListByWriter", "Blog");
        }
    }
}
