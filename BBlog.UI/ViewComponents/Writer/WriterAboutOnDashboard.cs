using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.ViewComponents.Writer
{
    public class WriterAboutOnDashboard : ViewComponent
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());

        public IViewComponentResult Invoke()
        {
            var values = wm.GetWriterById(4);
            return View(values);
        }
    }
}
