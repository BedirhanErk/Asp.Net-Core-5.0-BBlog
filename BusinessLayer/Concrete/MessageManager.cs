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
    public class MessageManager : IMessageService
    {
        IMessageDal _messageDal;
        public MessageManager(IMessageDal messageDal)
        {
            _messageDal = messageDal;
        }
        public void Add(Message t)
        {
            _messageDal.Add(t);
        }

        public void Delete(Message t)
        {
            _messageDal.Delete(t);
        }

        public List<Message> GetAll()
        {
            return _messageDal.GetAll();
        }

        public Message GetById(int id)
        {
            return _messageDal.GetById(id);
        }

        public List<Message> GetInboxListByWriter(string email)
        {
            return _messageDal.GetAll(x=>x.Receiver == email);
        }

        public List<Message> GetInboxListByWriterLastThreeAndUnread(string email)
        {
            return _messageDal.GetAll(x=>x.Receiver == email).Where(x => x.Status == true).TakeLast(3).ToList();
        }

        public void Update(Message t)
        {
            _messageDal.Update(t);
        }
    }
}
