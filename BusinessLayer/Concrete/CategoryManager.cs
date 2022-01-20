using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;
using System.Linq;

namespace BusinessLayer.Concrete
{
    public class CategoryManager : ICategoryService
    {
        ICategoryDal _categoryDal;
        public CategoryManager(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }
        public void Add(Category t)
        {
            _categoryDal.Add(t);
        }

        public void Delete(Category t)
        {
            _categoryDal.Delete(t);
        }

        public List<Category> GetAll()
        {
            return _categoryDal.GetAll();
        }

        public Category GetById(int id)
        {
            return _categoryDal.GetById(id);
        }

        public long GetCategoryCount()
        {
            return _categoryDal.GetAll().Count();
        }

        public void Update(Category t)
        {
            _categoryDal.Update(t);
        }
    }
}
