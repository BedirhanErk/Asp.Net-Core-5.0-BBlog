using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace BBlog.UI.ViewComponents.Blog
{
    public class BlogListDashboard : ViewComponent
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        private readonly UserManager<AppUser> _userManager;
        public BlogListDashboard(UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var values = bm.GetListWithCategoryAndRatings(user.Id);
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
