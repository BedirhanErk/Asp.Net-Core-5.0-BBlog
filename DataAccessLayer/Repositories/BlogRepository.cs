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
    public class BlogRepository : IBlogDal
    {
        public void Add(Blog blog)
        {
            using (Context c = new Context())
            {
                c.Add(blog);
                c.SaveChanges();
            }
        }

        public void Delete(Blog blog)
        {
            using (Context c = new Context())
            {
                c.Remove(blog);
                c.SaveChanges();
            }
        }

        public List<Blog> GetAll()
        {
            throw new NotImplementedException();
        }

        public Blog GetById(int id)
        {
            using (Context c = new Context())
            {
                return c.Blogs.Find(id);
            }
        }

        public List<Blog> GetList()
        {
            using (Context c = new Context())
            {
                return c.Blogs.ToList();
            }
        }

        public void Update(Blog blog)
        {
            using (Context c = new Context())
            {
                c.Update(blog);
                c.SaveChanges();
            }
        }
    }
}
