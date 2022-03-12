using EntityLayer.Concrete;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace BBlog.UI.Controllers
{
    public class WriterController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        public WriterController(UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            return View(user);
        }
        [HttpPost]
        public async Task<IActionResult> Index(AppUser user)
        {
            await _userManager.UpdateAsync(user);
            return RedirectToAction("Index");
        }
        public PartialViewResult PartialWriterLeftNavbar()
        {
            return PartialView();
        }
        public PartialViewResult PartialWriterFooter()
        {
            return PartialView();
        }
    }
}
