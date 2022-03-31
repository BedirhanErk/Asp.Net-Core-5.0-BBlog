using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace BBlog.UI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Admin")]
    public class WriterController : Controller
    {
        WriterManger wm = new WriterManger(new EfWriterRepository());
        public class ParamId
        {
            public int id { get; set; }
        }
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult SaveWriter([FromBody]Writer writer)
        {
            if (writer.WriterId > 0)
            {
                var value = wm.GetById(writer.WriterId);
                writer.Status = value.Status;
                wm.Update(writer);
            }
            else
            {
                writer.Status = true;
                wm.Add(writer);
            }

            var result = JsonConvert.SerializeObject(writer);
            return Json(result);
        }

        public IActionResult GetWriterList()
        {
            var writers = wm.GetAll();
            var result = JsonConvert.SerializeObject(writers);
            return Json(result);
        }

        public IActionResult GetWriterById(int id)
        {
            var writer = wm.GetById(id);
            var result = JsonConvert.SerializeObject(writer);
            return Json(result);
        }
        [HttpPost]
        public IActionResult DeleteWriter([FromBody] ParamId request)
        {
            var writer = wm.GetById(request.id);
            writer.Status = (writer.Status == false) ? true : false;
            wm.Update(writer);
            return Json(writer);
        }
    }
}
