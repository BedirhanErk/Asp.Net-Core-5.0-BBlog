using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Concrete
{
    public class AdminManager : IAdminService
    {
        IAdminDal _adminDal;
        public AdminManager(IAdminDal adminDal)
        {
            _adminDal = adminDal;
        }
        public void Add(Admin t)
        {
            _adminDal.Add(t);
        }

        public void Delete(Admin t)
        {
            _adminDal.Delete(t);
        }

        public List<Admin> GetAll()
        {
            return _adminDal.GetAll();
        }

        public Admin GetById(int id)
        {
            return _adminDal.GetById(id);
        }

        public void Update(Admin t)
        {
            _adminDal.Update(t);
        }
    }
}
