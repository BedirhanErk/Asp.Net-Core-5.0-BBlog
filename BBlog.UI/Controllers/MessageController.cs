using BBlog.UI.Models;
using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace BBlog.UI.Controllers
{
    public class MessageController : Controller
    {
        Message2Manager mm = new Message2Manager(new EfMessage2Repository());
        private readonly Microsoft.AspNetCore.Identity.UserManager<AppUser> _userManager;
        public MessageController(Microsoft.AspNetCore.Identity.UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }
        public async Task<IActionResult> InBox()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var values = mm.GetInboxListByWriter(user.Id);
            return View(values);
        }
        public async Task<IActionResult> SendBox()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var values = mm.GetSendboxListByWriter(user.Id);
            return View(values);
        }
        public IActionResult MessageDetail(int id)
        {
            var value = mm.GetMessageById(id);
            if (value.Status == false)
            {
                value.Status = true;
                mm.Update(value);
            }
            return View(value);
        }
        [HttpGet]
        public IActionResult SendMessage()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> SendMessage(SendMessageModelView request)
        {
            Message2 message = new Message2();
            var reciever = await _userManager.FindByEmailAsync(request.Email);
            if (reciever != null)
            {
                var user = await _userManager.FindByNameAsync(User.Identity.Name);
                message.SenderId = user.Id;
                message.ReceiverId = reciever.Id;
                message.Subject = request.Subject.Trim();
                message.Detail = request.Detail.Trim();
                message.Date = DateTime.Now;
                message.Status = false;
                mm.Add(message);
            }
   
            return RedirectToAction("SendBox");
        }
    }
}
