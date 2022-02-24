using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Abstract
{
    public interface ICommentService
    {
        void Add(Comment comment);
        List<Comment> GetAll(int id);
        long GetCommentCount();
    }
}
