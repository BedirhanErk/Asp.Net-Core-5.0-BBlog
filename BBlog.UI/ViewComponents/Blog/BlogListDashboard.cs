using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Security.Claims;

namespace BBlog.UI.ViewComponents.Blog
{
    public class BlogListDashboard : ViewComponent
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        public IViewComponentResult Invoke()
        {
            int id = Convert.ToInt32(((ClaimsIdentity)User.Identity).FindFirst(ClaimTypes.NameIdentifier).Value);
            var values = bm.GetListWithCategoryAndRatings(id);
            foreach (var value in values)
            {
                if (value.BlogRating.TotalPoint != 0)
                {
                    value.BlogRating.TotalPoint = value.BlogRating.TotalPoint / value.BlogRating.CommentNumber;
                }
            }
            return View(values);
        }
    }
}
