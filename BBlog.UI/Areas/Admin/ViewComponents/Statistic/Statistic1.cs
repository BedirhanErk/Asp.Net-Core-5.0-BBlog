using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Xml.Linq;

namespace BBlog.UI.Areas.Admin.ViewComponents.Statistic
{
    public class Statistic1 : ViewComponent
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        WriterManger wm = new WriterManger(new EfWriterRepository());
        CommentManager cm = new CommentManager(new EfCommentRepository());
        public IViewComponentResult Invoke()
        {
            ViewBag.v1 = bm.GetBlogCount();
            ViewBag.v2 = wm.GetAll().Count();
            ViewBag.v3 = cm.GetCommentCount();

            //NOTE: Şehir kullanıcı üzerinden çekilebilir.
            string apiId = "b54b3d00e78f2cf8418974a753df5eba";
            string connection = "https://api.openweathermap.org/data/2.5/weather?q=Istanbul&mode=xml&lang=tr&units=metric&appid=" + apiId;
            XDocument document = XDocument.Load(connection);
            ViewBag.v4 = document.Descendants("temperature").ElementAt(0).Attribute("value").Value;

            return View();
        }
    }
}
