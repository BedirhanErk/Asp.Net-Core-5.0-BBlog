using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
