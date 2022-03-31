using BBlog.UI.Models;
using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace BBlog.UI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Admin")]
    public class AdminMessageController : Controller
    {
        Message2Manager mm = new Message2Manager(new EfMessage2Repository());
        private readonly Microsoft.AspNetCore.Identity.UserManager<AppUser> _userManager;
        public AdminMessageController(Microsoft.AspNetCore.Identity.UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }

        public async Task<IActionResult> Inbox()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var values = mm.GetInboxListByWriter(user.Id);
            var sendMessageCount = mm.GetSendboxListByWriter(user.Id).Count();
            ViewBag.smc = sendMessageCount;
            return View(values);
        }
        public async Task<IActionResult> Sendbox()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var inboxMessageCount = mm.GetInboxListByWriter(user.Id).Count();
            var values = mm.GetSendboxListByWriter(user.Id);
            ViewBag.imc = inboxMessageCount;
            return View(values);
        }
        [HttpGet]
        public async Task<IActionResult> SendMessage()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var inboxMessageCount = mm.GetInboxListByWriter(user.Id).Count();
            var sendMessageCount = mm.GetSendboxListByWriter(user.Id).Count();
            ViewBag.imc = inboxMessageCount;
            ViewBag.smc = sendMessageCount;
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

            return RedirectToAction("SendBox","AdminMessage");
        }
        public async Task<IActionResult> MessageDetail(int id)
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            var inboxMessageCount = mm.GetInboxListByWriter(user.Id).Count();
            var sendMessageCount = mm.GetSendboxListByWriter(user.Id).Count();
            ViewBag.imc = inboxMessageCount;
            ViewBag.smc = sendMessageCount;

            var value = mm.GetMessageById(id);
            if (value.Status == false)
            {
                value.Status = true;
                mm.Update(value);
            }

            return View(value);
        }
    }
}
