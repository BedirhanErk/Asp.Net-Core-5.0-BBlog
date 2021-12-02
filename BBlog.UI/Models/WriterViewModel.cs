using EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BBlog.UI.Models
{
    public class WriterViewModel
    {
        public string ConfirmPassword { get; set; }
        public Writer Writer { get; set; }
    }
}
