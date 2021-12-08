using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{
    public class ErrorController : Controller
    {
        public IActionResult ErrorPage1(int code)
        {
            return View();
        }
    }
}
