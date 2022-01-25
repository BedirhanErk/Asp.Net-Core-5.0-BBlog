using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Security.Claims;

namespace BBlog.UI.Controllers
{
    public class MessageController : Controller
    {
        Message2Manager mm = new Message2Manager(new EfMessage2Repository());
        public IActionResult InBox()
        {
            int id = Convert.ToInt32(((ClaimsIdentity)User.Identity).FindFirst(ClaimTypes.NameIdentifier).Value);
            var values = mm.GetInboxListByWriter(id);
            return View(values);
        }
        public IActionResult MessageDetail(int id)
        {
            var value = mm.GetMessageById(id);
            return View(value);
        }
    }
}
