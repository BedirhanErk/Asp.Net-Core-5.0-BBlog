using EntityLayer.Concrete;
using System.Collections.Generic;

namespace DataAccessLayer.Abstract
{
    public interface IMessage2Dal : IGenericDal<Message2>
    {
        List<Message2> GetInboxListByWriter(int id);
        List<Message2> GetSendboxListByWriter (int id);
        Message2 GetMessageById(int id);
    }
}
