using BusinessLayer.Concrete;
using BusinessLayer.ValidationRules;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using FluentValidation.Results;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;
using System.Linq;

namespace BBlog.UI.Controllers
{
    [AllowAnonymous]
    public class RegisterController : Controller
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());
        CityManager cm = new CityManager(new EfCityRepository());

        [HttpGet]
        public IActionResult Index()
        {
            List<SelectListItem> cities = (from x in cm.GetAll()
                                           select new SelectListItem
                                           {
                                               Text = x.CityName,
                                               Value = x.CityId.ToString()
                                           }).ToList();

            ViewBag.Cities = cities;
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
            List<SelectListItem> cities = (from x in cm.GetAll()
                                           select new SelectListItem
                                           {
                                               Text = x.CityName,
                                               Value = x.CityId.ToString()
                                           }).ToList();

            ViewBag.Cities = cities;

            return View();
        }
    }
}
