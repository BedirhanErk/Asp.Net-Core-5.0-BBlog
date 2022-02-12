using EntityLayer.Concrete;
using FluentValidation;

namespace BusinessLayer.ValidationRules
{
    public class CategoryValidator : AbstractValidator<Category>
    {
        public CategoryValidator()
        {
            RuleFor(x => x.Name).NotEmpty().WithMessage("Category name cannot be empty.");
            RuleFor(x => x.Name).MaximumLength(50).WithMessage("Category name must be a maximum of 50 characters.");
            RuleFor(x => x.Name).MinimumLength(2).WithMessage("Category name must be at least 2 characters.");
        }
    }
}
