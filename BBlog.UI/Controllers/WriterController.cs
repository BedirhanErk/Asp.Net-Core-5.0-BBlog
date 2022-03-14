using BBlog.UI.Models;
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
            UserUpdateViewModel model = new UserUpdateViewModel();
            model.UserName = user.UserName;
            model.Name = user.Name;
            model.Surname = user.Surname;
            model.Email = user.Email;
            model.PhoneNumber = user.PhoneNumber;
            model.Image = user.Image;
            return View(model);
        }
        [HttpPost]
        public async Task<IActionResult> Index(UserUpdateViewModel request)
        {
            if (ModelState.IsValid)
            {               
                var user = await _userManager.FindByNameAsync(User.Identity.Name);
                user.UserName = request.UserName;
                user.Name = request.Name;
                user.Surname = request.Surname;
                user.Email = request.Email;
                user.PhoneNumber = request.PhoneNumber;
                user.Image = request.Image;
                var result = await _userManager.UpdateAsync(user);
                if (result.Succeeded)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    foreach (var item in result.Errors)
                    {
                        ModelState.AddModelError("", item.Description);
                    }
                }
            }
            return View();
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
