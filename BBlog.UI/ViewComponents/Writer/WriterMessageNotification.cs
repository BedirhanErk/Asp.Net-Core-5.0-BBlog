using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace BBlog.UI.ViewComponents.Writer
{
    public class WriterMessageNotification : ViewComponent
    {
        Message2Manager mm = new Message2Manager(new EfMessage2Repository());
        private readonly Microsoft.AspNetCore.Identity.UserManager<AppUser> _userManager;
        public WriterMessageNotification(Microsoft.AspNetCore.Identity.UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var values = mm.GetInboxListByWriterLastThreeAndUnread(user.Id);
            ViewBag.MessageCount = mm.GetInboxUnReadMessageCount(user.Id);
            return View(values);
        }
    }
}
