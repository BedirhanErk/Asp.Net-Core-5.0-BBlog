using System.ComponentModel.DataAnnotations;

namespace BBlog.UI.Models
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Please enter your User Name.")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Please enter your password.")]
        public string Password { get; set; }
    }
}
