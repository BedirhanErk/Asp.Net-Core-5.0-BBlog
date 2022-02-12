using BusinessLayer.Concrete;
using BusinessLayer.ValidationRules;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using FluentValidation.Results;
using Microsoft.AspNetCore.Mvc;
using X.PagedList;

namespace BBlog.UI.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class CategoryController : Controller
    {
        CategoryManager cm = new CategoryManager(new EfCategoryRepository());
        CategoryValidator cv = new CategoryValidator();
        public class ParamId
        {
            public int id { get; set; }
        }
        public IActionResult Index(int page=1)
        {
            var values = cm.GetAll().ToPagedList(page, 10);
            return View(values);
        }
        [HttpGet]
        public IActionResult AddCategory()
        {
            return View();
        }
        [HttpPost]
        public IActionResult AddCategory(Category category)
        {
            ValidationResult result = cv.Validate(category);
            if(result.IsValid)
            {
                category.Status = true;
                cm.Add(category);
                return RedirectToAction("Index", "Category");
            }
            else
            {
                foreach (var item in result.Errors)
                {
                    ModelState.AddModelError(item.PropertyName, item.ErrorMessage);
                }
            }
            return View();
        }
        public IActionResult DeleteCategory([FromBody] ParamId request)
        {
            var value = cm.GetById(request.id);
            if (value.Status == true)
                value.Status = false;
            else
                value.Status = true;
            cm.Update(value);
            return Json(value);
        }
    }
}
