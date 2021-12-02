using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Concrete
{
    public class WriterManger : IWriterService
    {
        IWriterDal _writerDal;
        public WriterManger(IWriterDal writerDal)
        {
            _writerDal = writerDal;
        }
        public void Add(Writer writer)
        {
            _writerDal.Add(writer);
        }
    }
}
