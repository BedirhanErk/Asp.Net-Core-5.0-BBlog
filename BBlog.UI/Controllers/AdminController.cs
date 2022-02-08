using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public PartialViewResult AdminLeftNavbar()
        {
            return PartialView();
        }
    }
}
