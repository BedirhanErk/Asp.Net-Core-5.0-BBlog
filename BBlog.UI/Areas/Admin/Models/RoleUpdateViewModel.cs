using System.ComponentModel.DataAnnotations;

namespace BBlog.UI.Areas.Admin.Models
{
    public class RoleUpdateViewModel
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Name is required")]
        public string Name { get; set; }
    }
}
