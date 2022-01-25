using BusinessLayer.Concrete;
using BusinessLayer.ValidationRules;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using FluentValidation.Results;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;

namespace BBlog.UI.Controllers
{
    public class WriterController : Controller
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());
        CityManager cm = new CityManager(new EfCityRepository());
        [HttpGet]
        public IActionResult Index()
        {
            int id = Convert.ToInt32(((ClaimsIdentity)User.Identity).FindFirst(ClaimTypes.NameIdentifier).Value);
            var writerValues = wm.GetById(id);
            List<SelectListItem> cities = (from x in cm.GetAll()
                                           select new SelectListItem
                                           {
                                               Text = x.CityName,
                                               Value = x.CityId.ToString()
                                           }).ToList();

            cities.Find(x => x.Value == writerValues.CityId.ToString()).Selected = true;
            ViewBag.Cities = cities;
            return View(writerValues);
        }
        [HttpPost]
        public IActionResult Index(Writer writer, string ConfirmPassword)
        {
            WriterValidator wv = new WriterValidator();
            ValidationResult result = wv.Validate(writer);
            if (result.IsValid && (writer.Password == ConfirmPassword))
            {
                var values = wm.GetById(writer.WriterId);
                writer.Status = values.Status;
                wm.Update(writer);
                return RedirectToAction("Index");
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
