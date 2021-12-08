using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{
    public class NewsLetterController : Controller
    {
        NewsLetterManager nlm = new NewsLetterManager(new EfNewsLetterRepository());
        [HttpGet]
        public PartialViewResult SubscribeMail()
        {
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult SubscribeMail(NewsLetter newsLetter)
        {
            newsLetter.Status = true;
            nlm.Add(newsLetter);
            return PartialView();
        }
    }
}
