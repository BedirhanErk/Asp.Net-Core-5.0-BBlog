using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Concrete
{
    public class WriterManger : IWriterService
    {
        IWriterDal _writerDal;
        public WriterManger(IWriterDal writerDal)
        {
            _writerDal = writerDal;
        }
        public void Add(Writer t)
        {
            _writerDal.Add(t);
        }

        public void Delete(Writer t)
        {
            _writerDal.Delete(t);
        }

        public List<Writer> GetAll()
        {
            return _writerDal.GetAll();
        }

        public Writer GetById(int id)
        {
            return _writerDal.GetById(id);
        }

        public Writer GetWriterById(int id)
        {
            return _writerDal.GetById(id);
        }

        public void Update(Writer t)
        {
            _writerDal.Update(t);
        }
    }
}
