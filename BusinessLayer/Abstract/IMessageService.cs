using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Abstract
{
    public interface IMessageService : IGenericService<Message>
    {
        List<Message> GetInboxListByWriter(string email);
        List<Message> GetInboxListByWriterLastThreeAndUnread(string email);
    }
}
