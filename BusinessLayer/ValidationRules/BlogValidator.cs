using EntityLayer.Concrete;
using FluentValidation;

namespace BusinessLayer.ValidationRules
{
    public class BlogValidator : AbstractValidator<Blog>
    {
        public BlogValidator()
        {
            RuleFor(x => x.Title).NotEmpty().WithMessage("You cannot leave the blog title blank");
            RuleFor(x => x.BlogContent).NotEmpty().WithMessage("You cannot leave the blog content blank");
            RuleFor(x => x.Image).NotEmpty().WithMessage("You cannot leave the blog image blank");
            RuleFor(x => x.Title).MaximumLength(150).WithMessage("Title can contain up to 150 characters");
            RuleFor(x => x.Title).MinimumLength(3).WithMessage("Title can contain at least 3 characters");
        }
    }
}
