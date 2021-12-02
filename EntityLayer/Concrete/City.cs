using System.ComponentModel.DataAnnotations;

namespace EntityLayer.Concrete
{
    public class City
    {
        [Key]
        public int CityId { get; set; }
        public string Name { get; set; }
    }
}
