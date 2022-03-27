using EntityLayer.Concrete;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace BBlog.UI.ViewComponents.Writer
{
    public class WriterInfoLeft : ViewComponent
    {
        private readonly UserManager<AppUser> _user;
        public WriterInfoLeft(UserManager<AppUser> user)
        {
            _user = user;
        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
            var user = await _user.FindByNameAsync(User.Identity.Name);
            return View(user);
        }
    }
}
