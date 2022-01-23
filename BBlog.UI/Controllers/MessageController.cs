using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{
    public class MessageController : Controller
    {
        Message2Manager mm = new Message2Manager(new EfMessage2Repository());
        public IActionResult InBox()
        {
            var values = mm.GetInboxListByWriter(4);
            return View(values);
        }
        public IActionResult MessageDetail(int id)
        {
            var value = mm.GetMessageById(id);
            return View(value);
        }
    }
}
