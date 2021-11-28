using DataAccessLayer.Abstract;
using DataAccessLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace DataAccessLayer.Repositories
{
    public class GenericRepository<T> : IGenericDal<T> where T : class
    {
        public void Add(T t)
        {
            using (Context c = new Context())
            {
                c.Add(t);
                c.SaveChanges();
            }
        }

        public void Delete(T t)
        {
            using (Context c = new Context())
            {
                c.Remove(t);
                c.SaveChanges();
            }
        }

        public List<T> GetAll()
        {
            using (Context c = new Context())
            {
                return c.Set<T>().ToList();
            }
        }

        public T GetById(int id)
        {
            using (Context c = new Context())
            {
                return c.Set<T>().Find(id);
            }
        }

        public List<T> GetAll(Expression<Func<T, bool>> filter)
        {
            using (Context c = new Context())
            {
                return c.Set<T>().Where(filter).ToList();
            }
        }

        public void Update(T t)
        {
            using (Context c = new Context())
            {
                c.Update(t);
                c.SaveChanges();
            }
        }
    }
}
