using System.ComponentModel.DataAnnotations;

namespace EntityLayer.Concrete
{
    public class About
    {
        [Key]
        public int AboutId { get; set; }
        public string Title { get; set; }
        public string Detail1 { get; set; }
        public string Detail2 { get; set; }
        public string Image { get; set; }
        public bool Status { get; set; }
        public string MapLocation { get; set; }
    }
}
