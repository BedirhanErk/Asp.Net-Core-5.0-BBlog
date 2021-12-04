using BBlog.UI.Models;
using BusinessLayer.Concrete;
using BusinessLayer.ValidationRules;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using FluentValidation.Results;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace BBlog.UI.Controllers
{
    public class RegisterController : Controller
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());
        WriterViewModel wvm = new WriterViewModel();

        [HttpGet]
        public IActionResult Index()
        {
            ViewBag.Cities = wvm.GetCityList();
            return View();
        }
        [HttpPost]
        public IActionResult Index(Writer writer, string ConfirmPassword)
        {
            WriterValidator wv = new WriterValidator();
            ValidationResult result = wv.Validate(writer);
            if (result.IsValid && (writer.Password == ConfirmPassword))
            {
                writer.Status = true;
                wm.Add(writer);
                return RedirectToAction("Index", "Blog");
            }
            else if (writer.Password != ConfirmPassword)
            {
                ModelState.AddModelError("Password", "Passwords do not match, please try again");
            }
            else
            {
                foreach (var item in result.Errors)
                {
                    ModelState.AddModelError(item.PropertyName, item.ErrorMessage);
                }
            }
            ViewBag.Cities = wvm.GetCityList();
            return View();
        }
    }
}
