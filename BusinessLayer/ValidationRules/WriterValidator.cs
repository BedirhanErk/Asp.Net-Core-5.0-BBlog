using EntityLayer.Concrete;
using FluentValidation;

namespace BusinessLayer.ValidationRules
{
    public class WriterValidator : AbstractValidator<Writer>
    {
        public WriterValidator()
        {
            RuleFor(x => x.Name).NotEmpty().WithMessage("Name & Surname can not be blank");
            RuleFor(x => x.Mail).NotEmpty().WithMessage("Mail can not be blank");
            RuleFor(x => x.Password).NotEmpty().WithMessage("Password can not be blank");
            RuleFor(x => x.Name).MinimumLength(2).WithMessage("Name & Surname must be at least two characters");
            RuleFor(x => x.Name).MaximumLength(50).WithMessage("Name & Surname field must contain a maximum of 50 characters");

            RuleFor(x => x.Password).Matches(@"[A-Z]+").WithMessage("Your Password must contain at least one uppercase letter");
            RuleFor(x => x.Password).Matches(@"[a-z]+").WithMessage("Your Password must contain at least one lowercase letter");
            RuleFor(x => x.Password).Matches(@"[0-9]+").WithMessage("Your Password must contain at least one number");
        }
    }
}
