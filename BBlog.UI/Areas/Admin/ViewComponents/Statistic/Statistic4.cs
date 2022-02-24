using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Security.Claims;

namespace BBlog.UI.Areas.Admin.ViewComponents.Statistic
{
    public class Statistic4 : ViewComponent
    {
        AdminManager am = new AdminManager(new EfAdminRepository());
        public IViewComponentResult Invoke()
        {           
            var value = am.GetById(1);
            return View(value);
        }
    }
}
