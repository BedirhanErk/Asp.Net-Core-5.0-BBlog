using DataAccessLayer.Concrete;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace BBlog.UI.Controllers
{
    [AllowAnonymous]
    public class LoginController : Controller
    {
        [HttpGet]    
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Index(Writer writer)
        {
            Context c = new Context();
            var dataValue = c.Writers.FirstOrDefault(x=>x.Mail == writer.Mail && x.Password == writer.Password);
            if (dataValue != null)
            {
                HttpContext.Session.SetString("username", writer.Mail);
                return RedirectToAction("Index", "Blog");
            }
            else
            {
                return View();
            }           
        }
    }
}
