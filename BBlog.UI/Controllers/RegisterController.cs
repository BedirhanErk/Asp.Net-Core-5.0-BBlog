using BBlog.UI.Models;
using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace BBlog.UI.Controllers
{
    public class RegisterController : Controller
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());
        CityManager cm = new CityManager(new EfCityRepository());

        [HttpGet]
        public IActionResult Index()
        {
            WriterViewModel writerViewModel = new WriterViewModel();
            writerViewModel.City = new SelectList(cm.GetAll(), "CityId", "Name");
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
