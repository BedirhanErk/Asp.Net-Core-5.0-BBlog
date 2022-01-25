using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Security.Claims;

namespace BBlog.UI.ViewComponents.Writer
{
    public class WriterMessageNotification : ViewComponent
    {
        Message2Manager mm = new Message2Manager(new EfMessage2Repository());
        public IViewComponentResult Invoke()
        {
            int id = Convert.ToInt32(((ClaimsIdentity)User.Identity).FindFirst(ClaimTypes.NameIdentifier).Value);
            var values = mm.GetInboxListByWriterLastThreeAndUnread(id);
            ViewBag.MessageCount = mm.GetInboxUnReadMessageCount(id);
            return View(values);
        }
    }
}
