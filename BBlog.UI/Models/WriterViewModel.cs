using EntityLayer.Concrete;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;

namespace BBlog.UI.Models
{
    public class WriterViewModel
    {
        public string ConfirmPassword { get; set; }
        public Writer Writer { get; set; }
        public IEnumerable<SelectListItem> City { get; set; }
    }
}
