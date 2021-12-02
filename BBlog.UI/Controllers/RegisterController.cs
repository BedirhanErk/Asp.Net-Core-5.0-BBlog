using BBlog.UI.Models;
using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.Controllers
{
    public class RegisterController : Controller
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Index(WriterViewModel writerViewModel)
        {

            if (writerViewModel.Writer.Password == writerViewModel.ConfirmPassword)
            {
                writerViewModel.Writer.Status = true;
                wm.Add(writerViewModel.Writer);
            }
            //TODO: Else için hata mesajı yaz
            return RedirectToAction("Index", "Blog");
        }
    }
}
