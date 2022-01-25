using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Security.Claims;

namespace BBlog.UI.Controllers
{
    public class DashboardController : Controller
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        public IActionResult Index()
        {
            int id = Convert.ToInt32(((ClaimsIdentity)User.Identity).FindFirst(ClaimTypes.NameIdentifier).Value);
            ViewBag.mbc = bm.GetMyBlogCount(id);
            ViewBag.rmb = bm.GetMyBlogsRatings(id);
            ViewBag.noc = bm.GetNumberOfCommentOnMyBlog(id);
            return View();
        }
    }
}
