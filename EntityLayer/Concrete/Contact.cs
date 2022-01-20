using System;
using System.ComponentModel.DataAnnotations;

namespace EntityLayer.Concrete
{
    public class Contact
    {
        [Key]
        public int ContactId { get; set; }
        public string UserName { get; set; }
        public string Mail { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public DateTime CreDate { get; set; }
        public bool Status { get; set; }
    }
}
