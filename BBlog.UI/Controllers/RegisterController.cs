using BBlog.UI.Models;
using BusinessLayer.Concrete;
using DataAccessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace BBlog.UI.Controllers
{
    public class RegisterController : Controller
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());

        [HttpGet]
        public IActionResult Index()
        {
            Context c = new Context();
            WriterViewModel writerViewModel = new WriterViewModel();
            writerViewModel.City = new SelectList(c.Cities, "CityId", "Name");
            return View(writerViewModel);
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
