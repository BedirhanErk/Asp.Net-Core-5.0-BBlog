using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Concrete
{
    public class AboutManager : IAboutService
    {
        IAboutDal _aboutDal;
        public AboutManager(IAboutDal aboutDal)
        {
            _aboutDal = aboutDal;
        }

        public void Add(About t)
        {
            _aboutDal.Add(t);
        }

        public void Delete(About t)
        {
            _aboutDal.Delete(t);
        }

        public List<About> GetAll()
        {
           return _aboutDal.GetAll();
        }

        public About GetById(int id)
        {
            return _aboutDal.GetById(id);
        }

        public void Update(About t)
        {
            _aboutDal.Update(t);
        }
    }
}
