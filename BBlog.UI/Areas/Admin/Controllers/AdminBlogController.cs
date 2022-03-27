using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class AdminBlogController : Controller
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        public class ParamBlogId
        {
            public int id { get; set; }
        }
        public IActionResult Index()
        {
            var blogs = bm.GetBlogListWithCategory();
            return View(blogs);
        }
        public IActionResult DeleteBlog([FromBody] ParamBlogId request)
        {
            var blog = bm.GetById(request.id);
            blog.Status = (blog.Status == false) ? true : false;
            bm.Update(blog);
            return Json(blog);
        }
        public IActionResult UpdateBlog()
        {
            return View();
        }
        public IActionResult AddBlog()
        {
            return View();
        }
    }
}
