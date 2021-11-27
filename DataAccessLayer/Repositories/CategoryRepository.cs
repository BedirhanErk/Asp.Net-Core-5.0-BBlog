using DataAccessLayer.Abstract;
using DataAccessLayer.Concrete;
using EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public class CategoryRepository : ICategoryDal
    {
        public void Add(Category category)
        {
            using (Context c = new Context())
            {
                c.Add(category);
                c.SaveChanges();
            }
        }

        public void Delete(Category category)
        {
            using (Context c = new Context())
            {
                c.Remove(category);
                c.SaveChanges();
            }
        }

        public Category GetById(int id)
        {
            using (Context c = new Context())
            {
                return c.Categories.Find(id);
            }
        }

        public List<Category> GetList()
        {
            using (Context c = new Context())
            {
                return c.Categories.ToList();
            }
        }

        public void Update(Category category)
        {
            using (Context c = new Context())
            {
                c.Update(category);
                c.SaveChanges();
            }
        }
    }
}
