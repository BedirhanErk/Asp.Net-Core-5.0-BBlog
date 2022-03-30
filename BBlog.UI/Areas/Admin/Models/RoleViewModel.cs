using System.ComponentModel.DataAnnotations;

namespace BBlog.UI.Areas.Admin.Models
{
    public class RoleViewModel
    {
        [Required(ErrorMessage = "Name is required")]
        public string Name { get; set; }
    }
}
