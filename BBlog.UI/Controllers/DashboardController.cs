using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{
    public class DashboardController : Controller
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        public IActionResult Index()
        {
            ViewBag.mbc = bm.GetMyBlogCount(4);
            ViewBag.rmb = bm.GetMyBlogsRatings(4);
            ViewBag.noc = bm.GetNumberOfCommentOnMyBlog(4);
            return View();
        }
    }
}
