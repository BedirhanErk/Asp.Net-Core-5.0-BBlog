using System;
using System.ComponentModel.DataAnnotations;

namespace EntityLayer.Concrete
{
    public class Notification
    {
        [Key]
        public int NotificationId { get; set; }
        public string Type { get; set; }
        public string Symbol { get; set; }
        public string Color { get; set; }
        public string Detail { get; set; }
        public DateTime Date { get; set; }
        public bool Status { get; set; }
    }
}
