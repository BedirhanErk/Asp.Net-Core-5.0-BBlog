using BBlog.UI.Areas.Admin.Models;
using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace BBlog.UI.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ChartController : Controller
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        CategoryManager cm = new CategoryManager(new EfCategoryRepository());
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult CategoryChart()
        {
            List<CategoryClass> list = new List<CategoryClass>();

            var categories = cm.GetAll();
            var blogs = bm.GetBlogListWithCategory();

            foreach (var item in categories)
            {
                list.Add(new CategoryClass
                {
                    categoryname = item.Name,
                    categorycount = 0
                });
            }

            foreach (var blog in blogs)
            {
                foreach (var category in list)
                {
                    if (blog.Category.Name == category.categoryname)
                    {
                        category.categorycount = category.categorycount + 1;
                    }
                }
            }

            return Json(new { jsonlist = list});
        }
    }
}
