using BBlog.UI.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace BBlog.UI.ViewComponents
{
    public class CommentList : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            var commentValues = new List<UserComment>
            {
                new UserComment
                {
                    Id = 1,
                    UserName = "Bedirhan"
                },
                new UserComment
                {
                    Id = 2,
                    UserName = "İsmail"
                },
                new UserComment
                {
                    Id = 3,
                    UserName = "Şule"
                }
            };
            return View(commentValues);
        }
    }
}
