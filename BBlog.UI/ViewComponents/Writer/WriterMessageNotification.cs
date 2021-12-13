using Microsoft.AspNetCore.Mvc;

namespace BBlog.UI.ViewComponents.Writer
{
    public class WriterMessageNotification : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
