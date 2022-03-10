using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace BBlog.UI.Controllers
{
    public class DashboardController : Controller
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        private readonly UserManager<AppUser> _userManager;
        public DashboardController(UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }
        public async Task<IActionResult> Index()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            ViewBag.mbc = bm.GetMyBlogCount(user.Id);
            ViewBag.rmb = bm.GetMyBlogsRatings(user.Id);
            ViewBag.noc = bm.GetNumberOfCommentOnMyBlog(user.Id);
            return View();
        }
    }
}
