using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace BBlog.UI.Areas.Admin.ViewComponents.Statistic
{
    public class Statistic2 : ViewComponent
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        public IViewComponentResult Invoke()
        {
            var value = bm.GetAll().TakeLast(1).ToList();
            return View(value);
        }
    }
}
