using DataAccessLayer.Abstract;
using DataAccessLayer.Concrete;
using DataAccessLayer.Repositories;
using EntityLayer.Concrete;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace DataAccessLayer.EntityFramework
{
    public class EfMessage2Repository : GenericRepository<Message2>, IMessage2Dal
    {
        public List<Message2> GetInboxListByWriter(int id)
        {
            using (Context c = new Context())
            {
                return c.Message2s.Include(x => x.SenderUser).Where(x => x.ReceiverId == id).ToList();
            }
        }

        public Message2 GetMessageById(int id)
        {
            using (Context c = new Context())
            {
                return c.Message2s.Include(x => x.SenderUser).Include(x=>x.ReceiverUser).Where(x => x.MessageId == id).FirstOrDefault();
            }
        }

        public List<Message2> GetSendboxListByWriter(int id)
        {
            using (Context c = new Context())
            {
                return c.Message2s.Include(x => x.ReceiverUser).Where(x => x.SenderId == id).ToList();
            }
        }
    }
}
