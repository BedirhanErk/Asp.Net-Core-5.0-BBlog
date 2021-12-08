using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{
    public class AboutController : Controller
    {
        AboutManager abm = new AboutManager(new EfAboutRepository());
        public IActionResult Index()
        {
            var values = abm.GetAll();
            return View(values);
        }
        public PartialViewResult SocialMediaAbout()
        {
            return PartialView();
        }
    }
}
