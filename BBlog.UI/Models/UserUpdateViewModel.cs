using System.ComponentModel.DataAnnotations;

namespace BBlog.UI.Models
{
    public class UserUpdateViewModel
    {
        [Required(ErrorMessage = "UserName is required.")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Name is required.")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Surname is required.")]
        public string Surname { get; set; }
        [Required(ErrorMessage = "Email is required.")]
        public string Email { get; set; }
        [Required(ErrorMessage = "PhoneNumber is required.")]
        public string PhoneNumber { get; set; }
        [Required(ErrorMessage = "Image is required.")]
        public string Image { get; set; }
    }
}
