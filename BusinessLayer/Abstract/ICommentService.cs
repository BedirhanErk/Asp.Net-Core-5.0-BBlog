using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Abstract
{
    public interface ICommentService
    {
        void Add(Comment comment);
        //void Delete(Comment comment);
        //void Update(Comment comment);
        List<Comment> GetAll(int id);
        //Comment GetById(int id);
    }
}
