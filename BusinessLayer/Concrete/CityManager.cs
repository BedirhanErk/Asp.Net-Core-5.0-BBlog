using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Concrete
{
    public class CityManager : ICityService
    {
        ICityDal _cityDal;
        public CityManager(ICityDal cityDal)
        {
            _cityDal = cityDal;
        }
        public void Add(City t)
        {
            _cityDal.Add(t);
        }

        public void Delete(City t)
        {
            _cityDal.Delete(t);
        }

        public List<City> GetAll()
        {
            return _cityDal.GetAll();
        }

        public City GetById(int id)
        {
            return _cityDal.GetById(id);
        }

        public void Update(City t)
        {
            _cityDal.Update(t);
        }
    }
}
