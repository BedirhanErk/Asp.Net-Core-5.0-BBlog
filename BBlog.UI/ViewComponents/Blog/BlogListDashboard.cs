using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.ViewComponents.Blog
{
    public class BlogListDashboard : ViewComponent
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        public IViewComponentResult Invoke()
        {
            var values = bm.GetListWithCategoryAndRatings(4);
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
