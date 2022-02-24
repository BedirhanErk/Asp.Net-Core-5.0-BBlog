using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace BBlog.UI.Areas.Admin.ViewComponents.Statistic
{
    public class Statistic1 : ViewComponent
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        WriterManger wm = new WriterManger(new EfWriterRepository());
        CommentManager cm = new CommentManager(new EfCommentRepository());
        public IViewComponentResult Invoke()
        {
            ViewBag.v1 = bm.GetBlogCount();
            ViewBag.v2 = wm.GetAll().Count();
            ViewBag.v3 = cm.GetCommentCount();
            return View();
        }
    }
}
