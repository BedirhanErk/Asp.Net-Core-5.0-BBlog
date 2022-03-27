using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Concrete
{
    public class UserManager : IUserService
    {
        IUserDal _userDal;
        public UserManager(IUserDal userDal)
        {
            _userDal = userDal;
        }
        public void Add(AppUser t)
        {
            _userDal.Add(t);
        }

        public void Delete(AppUser t)
        {
            _userDal.Delete(t);
        }

        public List<AppUser> GetAll()
        {
            return _userDal.GetAll();
        }

        public AppUser GetById(int id)
        {
            return _userDal.GetById(id);
        }

        public void Update(AppUser t)
        {
            _userDal.Update(t);
        }
    }
}
