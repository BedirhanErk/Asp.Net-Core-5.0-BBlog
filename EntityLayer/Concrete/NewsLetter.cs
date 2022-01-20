using System.ComponentModel.DataAnnotations;

namespace EntityLayer.Concrete
{
    public class NewsLetter
    {
        [Key]
        public int EmailId { get; set; }
        public string Email { get; set; }
        public bool Status { get; set; }
    }
}
