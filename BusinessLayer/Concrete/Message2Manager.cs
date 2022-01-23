using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;
using System.Linq;

namespace BusinessLayer.Concrete
{
    public class Message2Manager : IMessage2Service
    {
        IMessage2Dal _message2Dal;
        public Message2Manager(IMessage2Dal message2Dal)
        {
            _message2Dal = message2Dal;
        }
        public void Add(Message2 t)
        {
            _message2Dal.Add(t);
        }

        public void Delete(Message2 t)
        {
            _message2Dal.Delete(t);
        }

        public List<Message2> GetAll()
        {
            return _message2Dal.GetAll();
        }

        public Message2 GetById(int id)
        {
            return _message2Dal.GetById(id);
        }

        public List<Message2> GetInboxListByWriter(int id)
        {
            return _message2Dal.GetInboxListByWriter(id);
        }

        public List<Message2> GetInboxListByWriterLastThreeAndUnread(int id)
        {
            return _message2Dal.GetInboxListByWriter(id).Where(x => x.Status == true).TakeLast(3).OrderByDescending(x => x.Date).ToList();
        }

        public string GetInboxUnReadMessageCount(int id)
        {
            return _message2Dal.GetInboxListByWriter(id).Where(x => x.Status == true).Count().ToString();
        }

        public Message2 GetMessageById(int id)
        {
            return _message2Dal.GetMessageById(id);
        }

        public void Update(Message2 t)
        {
            _message2Dal.Update(t);
        }
    }
}
