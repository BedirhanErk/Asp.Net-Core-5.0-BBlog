using BusinessLayer.Concrete;
using BusinessLayer.ValidationRules;
using ClosedXML.Excel;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using FluentValidation.Results;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.IO;
using X.PagedList;

namespace BBlog.UI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Admin")]
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
        public IActionResult ExportCategory()
        {
            using (var workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add("Categories");
                worksheet.Cell(1, 1).Value = "Category Name";
                worksheet.Cell(1, 2).Value = "Status";

                worksheet.Row(1).CellsUsed().Style.Font.SetBold();
                worksheet.Row(1).CellsUsed().Style.Font.SetFontSize(12);
                worksheet.Row(1).CellsUsed().Style.Fill.SetBackgroundColor(XLColor.LightGray);

                int rowCount = 2;
                foreach (var item in cm.GetAll())
                {
                    worksheet.Cell(rowCount, 1).Value = item.Name;
                    if (item.Status == true)
                        worksheet.Cell(rowCount, 2).Value = "Active";
                    else
                        worksheet.Cell(rowCount, 2).Value = "Passive";

                    rowCount++;
                }

                using (var stream = new MemoryStream())
                {
                    workbook.SaveAs(stream);
                    var content = stream.ToArray();
                    return File(content, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "CategoryList.xlsx");
                }
            }
        }
    }
}
