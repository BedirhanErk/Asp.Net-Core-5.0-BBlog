using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Abstract
{
    public interface ICityService
    {
        List<City> GetAll();
    }
}
